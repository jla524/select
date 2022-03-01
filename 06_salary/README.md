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

2. Use the `CHARINDEX` function to map the job titles into 4 categories: data analyst, data scientist, data engineer, and machine learning engineer; then show the count for each category. If a job title fits into more than one category (e.g. "Machine Learning Engineer/Data Scienst"), choose the one that comes first alphabetically.
