-- Loan Portfolio Performance & Risk Analysis
-- BUSINESS PROBLEMS 

-- Q1. What is the total number of loan applications in the portfolio?

select count(*) as total_loan_applications
from loan;

-- Q2. What is the total funded loan amount issued by the bank?

select round(sum(loan_amount)/1000000,2) as total_funded_amount_in_millions
from loan;

-- Q3. What is the total received (repaid) amount from customers?

select round(sum(total_payment)/1000000,2) as total_received_amount_in_millions
from loan;

-- Q4. How many loan applications exist by loan status (Fully Paid, Charged Off, Current)?

select loan_status,
      count(*) as total_loan_applications
from loan
group by loan_status;

-- Q5. What is the total funded amount by state?

select address_state as state,
       round(sum(loan_amount)/1000000,2) as total_funded_amount_in_millions
from loan
group by state
order by total_funded_amount_in_millions desc;

-- Q6. How many loan applications are there by loan term (36 months vs 60 months)?

select term as loan_term,
       count(loan_id) as total_loan_applications
from loan
group by term ;

-- Q7. What is the average loan amount per application?

select round(avg(loan_amount)/1000,2) as avg_loan_amount_in_thousands
from loan;

-- Q8. How does the number of loan applications trend month over month?

select 
       extract(month from issue_date) as month,
       count(loan_id) as total_loan_applications
from loan
group by month
order by month;

-- Q9. What is the monthly funded loan amount trend?

select 
       extract(month from issue_date) as month,
       round(sum(loan_amount)/1000000,2) as funded_amount_in_millions
from loan
group by month
order by month;

-- Q10. What is the monthly received amount trend?

select 
       extract(month from issue_date) as month,
       round(sum(total_payment)/1000000,2) as received_amount_in_millions
from loan
group by month
order by month;

-- Q11. Which loan purposes receive the highest funding?

select 
       purpose as loan_purpose,
       round(sum(loan_amount)/1000000,2) as highest_funding_in_millions
from loan
group by purpose
order by highest_funding_in_millions desc
limit 1;

-- Q12. What is the funded vs received amount by loan term?

select 
	   term as loan_term,
       round(sum(loan_amount)/1000000,2) as funded_amount_in_millions,
       round(sum(total_payment)/1000000,2) as received_amount_in_millions
from loan
group by term;

-- Q13. Which are the top 5 states by total funded amount?

select 
       address_state as state,
       round(sum(loan_amount)/1000000,2) as total_funded_amount_in_millions
from loan
group by state
order by total_funded_amount_in_millions desc
limit 5;

-- Q14. What is the average interest rate by loan grade?

select 
       grade as loan_grade,
       round(avg(int_rate),2) as avg_int_rate
from loan
group by grade
order by grade;
       
-- Q15. How does loan funding vary by employment length?

select 
	   emp_length as Emp_Length,
       round(sum(loan_amount)/1000000,2) as total_funded_amount_in_millions
from loan
group by emp_length
order by total_funded_amount_in_millions desc;

-- Q16. How does loan funding differ by home ownership type?

select 
       home_ownership as Home_Ownership,
       round(sum(loan_amount)/1000000,2) as total_funded_amount_in_millions
from loan
group by home_ownership
order by total_funded_amount_in_millions desc;

-- Q17. What is the Month-over-Month (MoM) growth rate in loan applications?

with monthly as(
select extract(month from issue_date) as month,
       count(loan_id) as loan_applications
from loan
group by month 
),
growth as(
select month,
       loan_applications,
       lag(loan_applications) over(order by month) as prev_month_loan_applications
from monthly
)
select month,
       loan_applications as curr_month_loan_applications,
       prev_month_loan_applications,
       round((loan_applications-prev_month_loan_applications)/prev_month_loan_applications*100,2) as MoM_growth_ratio
from growth
order by month;








