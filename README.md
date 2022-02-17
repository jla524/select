# Select

Solve SQL practice problems with [PostgreSQL][0].

Thanks to [Damien Martin][1] for providing the [practice set][2].

## Installation

### Mac OSX

If you have already install postgres on your system, you only need to run step 3.
 
1. Install [brew](https://brew.sh/) if you haven't installed it already using the following command:
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

2. Install postgres using `brew`:
```bash
# install postgres
brew install postgresql

# install the start/stop/restart services
brew tap homebrew/services

# create your user, so you can open postgres
createdb 

# start postgre running
brew services start postgresql
```

3. Clone Damien's repo and install
```bash
git clone https://github.com/kiwidamien/SQL_Practice.git
cd SQL_Practice
sh install_problems.sh
```

[0]: https://www.postgresql.org
[1]: https://github.com/kiwidamien
[2]: https://github.com/kiwidamien/SQL_practice
