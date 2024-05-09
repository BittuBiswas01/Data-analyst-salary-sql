SELECT 
	job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM job_postings_fact
WHERE 
    job_location IN('Boston, MA', 'Anywhere') AND
    (
     	(job_title_short='Data Analyst' AND salary_year_avg>100000) OR
    	(job_title_short='Business Analyst' AND salary_year_avg>70000)
    );
    
SELECT 
	job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM job_postings_fact
WHERE
	job_title_short LIKE '%Analyst%' ;
    
-- Next 
SELECT 
	name
FROM 
	company_dim
WHERE
	name LIKE '%TECH%';

-- Next
SELECT 
	job_title_short AS Job_Title,
    job_location AS Locations,
    job_via AS Online_PLatform,
    salary_year_avg AS Salary
FROM 
	job_postings_fact;
-- NExt 
SELECT
	job_id,
	job_title_short,
    job_location,
    job_via AS job_postings_site,
    salary_year_avg AS avg_yearly_salary
FROM 
	job_postings_fact;
    
    
    
SELECT 
	job_title,
    job_location AS location,
    salary_year_avg AS salary
FROM 
	job_postings_fact
WHERE 
	 (job_title LIKE '%Data%'OR job_title LIKE '%Business%') AND 
     job_title LIKE '%Analyst%' AND
     job_title NOT LIKE '%Senior%'
     