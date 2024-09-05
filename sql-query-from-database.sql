SELECT unit_id, fiscal_year, fiscal_month, SUM(applicants) AS sum_of_applicants
FROM funnel
GROUP BY unit_id, fiscal_year, fiscal_month;