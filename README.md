# ds-skill-assess
## Phase II technical assessment for data scientist candidates

This repository contains a short, notional example of SQL & R files designed to test your technical knowledge of basic data wrangling and version control.

### Ground Rules
* You will have 1 hour to clone the repo, create your own branch, and push your branch back to the remote repo.
* Please keep all work on your branch. Do not submit a pull request for main.
* The errors are simple; do not over-think them.
* Describe your approach in the ReadMe file's section below, as opposed to in-line comments.

### Instructions
1. Clone the repo
2. From `main`, create your own branch with `[your last name]/submission`
3. Correct errors in the SQL and R script as follows:
  * The SQL contains an error that will not generate correct output to be received by the R file. Please correct the SQL so that its output will match what the R file requires.
  * The R file contains a single series of steps that could be separated into more descriptive functions or otherwise condensed to improve readability and maintainability. Please re-factor the R code to reflect cleaner, more maintainable code without altering functionality. *Please feel free to add separate function script files if you think this would help.*
  * In the ReadMe file, modify the below section to explain your overall approach. Write as if speaking to a non-technical audience.

**NOTE**: When making corrections in the SQL or R file, please also consider formatting adjustments that more closely conform to generally accepted style guidance (e.g., indentation, vertical alignment, etc.).

**IMPORTANT: You should NOT need to create sample data and you do NOT need to compile your code to ensure it runs.** This is not a test of syntax, but of your ability to discover and streamline inefficiency in the data pipeline.

4. Commit your edits and push your branch back to the remote repo within 1 hour

*GOOD LUCK!*
  
## About My Submission: Betros Abraha

### Overall Approach

This submission is aimed at improving the data processing pipeline by fixing issues in both the SQL and R files. The main objective was to ensure that the data extracted from the SQL query is correctly formatted for use in the R script, and to make the R code cleaner and easier to maintain. Below is a breakdown of the approach:

### SQL Query Fix

- The original SQL query grouped the data only by `unit_id`, but the R script required the data to be grouped by both `fiscal_year` and `fiscal_month` in addition to `unit_id`.
- I corrected the SQL query to ensure that the results are grouped by `unit_id`, `fiscal_year`, and `fiscal_month`, providing the correct output that the R script expects. This ensures that the data reflects the total number of applicants per unit, year, and month.

### R Script Refactor

The R script was refactored to make the code more modular and maintainable. I divided the code into three main functions:

1. **Data Preprocessing**: This function handles loading the data and creating new columns for easier analysis.
2. **Model Fitting**: This function fits a simple linear model using the data.
3. **Save Results**: This function saves the model's coefficients to a CSV file.

Breaking the code into these functions makes it easier to understand, modify, and extend. If additional changes are required in the future, the functions can be modified without altering the entire script.
