SELECT DISTINCT 
	job_postings_fact.job_title_short
FROM
	job_postings_fact;

SELECT DISTINCT
	salary_year_avg
FROM
	job_postings_fact;
    
SELECT 
	job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM 
	job_postings_fact
WHERE 
	job_title_short='Data Analyst';
SELECT 
	job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM 
	job_postings_fact
WHERE 
	salary_year_avg > 70000; -- filtering all the salary more than 70k 
-- commenting 
/*multi
line 
comment*/
SELECT 
	job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM 
	job_postings_fact
WHERE 
	job_title_short='Data Analyst'
ORDER BY 
	salary_year_avg DESC
