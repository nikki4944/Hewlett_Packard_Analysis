# Hewlett_Packard_Analysis

## Project Overview

As part of a larger employee records modernization project, Hewlett Packard requested an analysis of their employee data to determine how many positions will soon be open due to retirement. Using SQL and Hewlett Packard's own employee records, I created .csv files with the lists of employees who will soon be eligible for retirement as well as the positions which will be vacated.

The analysis showed a large portion of Hewlett Packard's workforce will soon be eligible for retirement. In order to off-set these pending job vacancies, a second analysis of the data was requested to discover employees who could be mentored in order to fill these positions internally.

## Analysis

The data for this analysis came from six .csv files provided by Hewlett Packard detailing their current departments, employees, and employee salaries and titles. Using SQL tables to streamline the overlapping data in the provided files, I created three new .csv files with lists of employees eligible for retirement and mentorship.

###### Major Points

- Using birth dates between January 1, 1952, and December 31, 1955, as the range for determining retirment age, I filtered the employee data to determine 133,776 employees will soon be eligible for retirement.

<img width="491" alt="Screen Shot 2021-06-04 at 3 41 26 PM" src="https://user-images.githubusercontent.com/82982901/120854619-6739ea80-c54b-11eb-90df-1553f6db70ef.png">

On closer inspection of the results provided by the previous code, it became apparent that a further filter was needed as long-term employees who had held mutliptle positions in the company were listed for each role they had filled over the years. 

- After filtering the data to return results only for currently held positions, I was able to determine 90,398 employees will soon be eligible for retirement.

- The majority of retirement eligible employees hold Senior Engineer and Senior Staff titles.

<img width="235" alt="Department Vacancies" src="https://user-images.githubusercontent.com/82982901/120855123-14acfe00-c54c-11eb-893c-6146409d17c9.png">

- By slightly refactoring the code used to determine retirement age, I was able to determine there are 1,549 employees eligible for a proposed mentorship program for employees born in the year 1965.

<img width="463" alt="Screen Shot 2021-06-04 at 3 52 05 PM" src="https://user-images.githubusercontent.com/82982901/120855757-e54ac100-c54c-11eb-9277-3961cc55a84c.png">

## Summary

The coming retirements will leave many more vacancies than the proposed mentorship will fill. The proposed mentorship program for employees born in 1965 will provide 1,549 employees to fill the 90,398 retirement vacancies. In order to get the maximize the potential of the mentorship program, I propose further analyzing the data to expand the eligibility to qualify for the program to employees born later than 1965. 

Additionally, it would be helpful to add a filter on the analysis to account for employee positions and titles. Currently, the code used to determine mentorship eligibility does not consider the current positions of the employees born in 1965. It is possible that there are not enough retiring employees to mentor certain positions. As the third image in the Analysis section illustrated, there are only two employees listed as "manager" who will be eligible for retirement but the current code does not tell us how many 1965 employees hold the title of manager.   
