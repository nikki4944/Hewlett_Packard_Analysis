# Hewlett_Packard_Analysis

## Project Overview

As part of a larger employee records modernization project, Hewlett Packard requested an analysis of the data to determine how many positions will soon be open due to retirement. Using SQL and Hewlett Packard's own employee records, I created .csv files with the lists of employees who will soon be eligible for retirement as well as the positions which will be vacated.

The original analysis showed a large portion of Hewlett Packard's workforce will soon be eligible for retirement. In order to off-set all of these pending job vacancies, a second analysis of the data was requested to discover employees who could be mentored in order to fill these positions internally.

## Analysis

The data for this analysis came from six .csv files provided by Hewlett Packard detailing their current departments, employees, and employee salaries and titles. Using SQL tables to streamline the overlapping data in the provided files, I created three new .csv files with lists of employees eligible for retirement and mentorship.

###### Major Points

- Using birth dates between January 1, 1952, and December 31, 1955, as the range for determining retirment age, I filtered the employee data to determine 133,776 employees will soon be eligible for retirement.

<img width="491" alt="Screen Shot 2021-06-04 at 3 41 26 PM" src="https://user-images.githubusercontent.com/82982901/120854619-6739ea80-c54b-11eb-90df-1553f6db70ef.png">

On closer inspection of the results provide by the previous code, it became apparent that a further filter was needed as multiple results were returned for long-term employees who had held mutliptle positions in the company. 

- After filtering to data to return results only for currently held positions, I was able to determine 90,398 employees will soon be eligible for retirement.

- The majority of retirement eligible employees hold Senior Engineer and Senior Staff titles.

<img width="235" alt="Department Vacancies" src="https://user-images.githubusercontent.com/82982901/120855123-14acfe00-c54c-11eb-893c-6146409d17c9.png">

- By slightly refactoring the code used to determine retirement age, I was able to determine there are 1,549 employees eligible for a proposed mentorship for employees born in the year 1965.

<img width="463" alt="Screen Shot 2021-06-04 at 3 52 05 PM" src="https://user-images.githubusercontent.com/82982901/120855757-e54ac100-c54c-11eb-9277-3961cc55a84c.png">

## Summary
