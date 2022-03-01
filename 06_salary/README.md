# Salary database

The database for these exercises is `ex_salary`.

If you think you have found an error in the posted results, please create a Github Issue.

## Questions

1. **List all the job titles where count is no more than 5**

<table border="1">
  <tr>
    <th align="center">title</th>
    <th align="center">count</th>
  </tr>
  <tr valign="top">
    <td align="left">Software Engineer - Machine Learning</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="left">Machine Learning Data Associate II</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="left">Machine Learning Scientist</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="left">Machine Learning Consultant</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="left">Machine Learning Developer</td>
    <td align="right">2</td>
  </tr>
  <tr valign="top">
    <td align="left">Associate Machine Learning Engineer</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">Data Science Consultant</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">Machine Learning Associate</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">Machine Learning Data Analyst</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">Machine Learning Software Engineer</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">Data Science Associate</td>
    <td align="right">1</td>
  </tr>
  <tr valign="top">
    <td align="left">Data Science Lead</td>
    <td align="right">1</td>
  </tr>
</table>

2. **Use the `CHARINDEX` function to map the job titles into 4 categories: data analyst, data scientist, data engineer, and machine learning engineer; then show the count for each category. If a job title fits into more than one category (e.g. "Machine Learning Engineer/Data Scienst"), choose the one that comes first alphabetically.**

<table border="1">
  <tr>
    <th align="centre">category</th>
    <th align="centre">count</th>
  </tr>
  <tr>
    <td align="left">Data Scientist</td>
    <td align="right">1956</td>
  </tr>
  <tr>
    <td align="left">Data Analyst</td>
    <td align="right">991</td>
  </tr>
  <tr>
    <td align="left">Data Engineer</td>
    <td align="right">805</td>
  </tr>
  <tr>
    <td align="left">Machine Learning Engineer</td>
    <td align="right">592</td>
  </tr>
</table>

3. **Use the `SPLIT_PART` function to show all unique units used in the salary column.**

Answer: yr, hr, and mo.

4. **Find the average, minimum, and maximum annual salary for each job category.**

<table border="1">
  <tr>
    <th align="centre">category</th>
    <th align="centre">avg</th>
    <th align="centre">min</th>
    <th align="centre">max</th>
  </tr>
  <tr>
    <td align="left">Data Engineer</td>
    <td align="right">907822</td>
    <td align="right">21628</td>
    <td align="right">7059780</td>
  </tr>
  <tr>
    <td align="left">Data Analyst</td>
    <td align="right">574183</td>
    <td align="right">10814</td>
    <td align="right">3773676</td>
  </tr>
  <tr>
    <td align="left">Machine Learning Engineer</td>
    <td align="right">785737</td>
    <td align="right">21628</td>
    <td align="right">7059780</td>
  </tr>
  <tr>
    <td align="left">Data Scientist</td>
    <td align="right">1133428</td>
    <td align="right">50613</td>
    <td align="right">18807948</td>
  </tr>
</table>

5. **Find the top 5 companies with the highest average annual salary.**

<table border="1">
  <tr>
    <th align="centre">company</th>
    <th align="centre">avg</th>
    <th align="centre">count</th>
  </tr>
  <tr>
    <td align="left">L Brands</td>
    <td align="right">18807948</td>
    <td align="right">1</td>
  </tr>
  <tr>
    <td align="left">Orbinet Technologies</td>
    <td align="right">8671344</td>
    <td align="right">1</td>
  </tr>
  <tr>
    <td align="left">Ritwik IT Services</td>
    <td align="right">8666964</td>
    <td align="right">1</td>
  </tr>
  <tr>
    <td align="left">Hashworks</td>
    <td align="right">8288952</td>
    <td align="right">2</td>
  </tr>
  <tr>
    <td align="left">Artis signature</td>
    <td align="right">7524456</td>
    <td align="right">1</td>
  </tr>
</table>
