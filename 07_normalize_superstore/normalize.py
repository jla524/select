"""
Normalize the orders table
"""
from pathlib import Path
from json import load
from typing import Any

from pandas import read_csv, DataFrame, concat


class Core:
    def __init__(self, path):
        self.path = path
        self.data: dict[str, DataFrame] = {}
        self.__populate_data()

    def __populate_data(self):
        """
        Initialze self.data with empty DataFrames
        :returns: None
        """
        if not self.path.is_file():
            return
        with self.path.open('r') as file:
            columns_map = load(file)
        for table, column_names in columns_map.items():
            self.data[table] = DataFrame(columns=column_names)

    def insert_customer(self, data, table_ids):
        """
        Insert existing data into new customer table
        :param data: a row of existing data
        :param table_ids: lookup table
        :returns: updated lookup table
        """
        name = data['customer_name']
        segment = data['customer_segment']
        segment_map = table_ids['customer_segment']
        customer_map = table_ids['customer']
        _id = customer_map['_latest']
        key = (name, segment_map[segment])
        if key in table_ids['customer']:
            _id = table_ids['customer'][key]
        else:
            table_ids['customer'][(name, segment_map[segment])] = _id
            customer_map['_latest'] += 1
        columns = self.data['customer'].columns
        row = DataFrame([[_id, name, segment_map[segment]]], columns=columns)
        self.data['customer'] = concat([self.data['customer'], row], axis=0)
        return table_ids


def get_names(path: Path) -> list[str]:
    """
    Get a list of names from file path
    :param path: file path to read from
    :returns: a list of names
    """
    if not path.is_file():
        return []
    with path.open('r') as file:
        names = file.read().splitlines()
    return names


def make_tables(names: list[str]) -> dict[str, dict[Any, int]]:
    """
    Make a list of tables from names
    :param names: list of table names
    :returns: a dict of tables
    """
    tables: dict[str, dict[Any, int]] = {name: {} for name in names}
    return tables

def get_orders(path: Path) -> DataFrame:
    """
    Get a DataFrame with data in the orders table
    :param path: file path to read orders from
    :returns: a DataFrame with (unnormalized) orders
    """
    if not path.is_file():
        return DataFrame()
    orders = read_csv(path)
    return orders


def clean_columns(orders: DataFrame) -> DataFrame:
    """
    Clean up every column in the orders DataFrame
    :param orders: a DataFrame with orders data
    :returns: a DataFrame with cleaned columns
    """
    name_map = {}
    for column in orders.columns:
        new_column = column.lower().replace('-', '').replace(' ', '_')
        name_map[column] = new_column
    orders.rename(columns=name_map, inplace=True)
    return orders


def fill_lookups(tables: dict[str, dict[Any, int]],
                 names: list[str],
                 orders: DataFrame) -> dict[str, dict[Any, int]]:
    """
    Fill lookup tables with existing data
    :param tables: a list of lookup tables
    :param names: a list of names in lookup
    :returns: filled lookup tables
    """
    for name in names:
        i = 1
        for value in orders[name].to_list():
            value = value.strip()
            if value not in tables[name]:
                tables[name][value] = i
                i += 1
    return tables


def fill_latest(tables: dict[str, dict[Any, int]],
                names: list[str]) -> dict[str, dict[Any, int]]:
    """
    Fill core lookup tables with latest index
    """
    for name in names:
        tables[name]['_latest'] = 1
    return tables


def fill_core(core_path: Path,
              tables: dict[str, dict[Any, int]],
              orders: DataFrame) -> None:
    """
    Fill core tables with existing data
    """
    core = Core(core_path)
    for _, row in orders.iterrows():
        tables = core.insert_customer(row, tables)
        #tables = core.insert_shipping(row, tables)
        #tables = core.insert_product(row, tables)
        #tables = core.insert_order(row, tables)
    print(core.data['customer'])


def normalize() -> None:
    """
    Convert the orders table into normalized tables
    :returns: None
    """
    orders_path = Path('orders.csv')
    old_table = get_orders(orders_path)
    old_table = clean_columns(old_table)
    tables_path = Path('new_tables.txt')
    table_names = get_names(tables_path)
    lookups = make_tables(table_names)
    lookup_names = table_names[:10]
    lookups = fill_lookups(lookups, lookup_names, old_table)
    columns_path = Path('new_columns.json')
    core_names = table_names[10:]
    fill_latest(lookups, core_names)
    fill_core(columns_path, lookups, old_table)


if __name__ == '__main__':
    normalize()
