SELECT 
	project_company,
    nerd_id,
    nerd_role, 
    hours_spent,
    hours_rate AS rate_original,
    hours_rate - 5 AS rate_drop,
    hours_rate+5 AS rate_hike,
    (hours_rate+5)*hours_spent AS project_total
FROM 
	invoices_fact
WHERE
	rate_hike*hours_spent>1000;
-- project total (after hike)= rate hike*hourshours_spent 
SELECT 	
	activity_id,
    hours_spent, 
    hours_spent%8 AS extra_hours
FROM 
	invoices_fact
WHERE
	(hours_spent BETWEEN 8 AND 16) AND extra_hours>0
ORDER BY
	hours_spent;

