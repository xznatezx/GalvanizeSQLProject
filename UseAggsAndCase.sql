--Add a Case to see what % of High Paying Jobs were accepted or Denied
with total as 
 (select count(*) as total
 from visas.visainfo
  WHERE employer_name LIKE '%COGNIZANT%'
  )
select distinct(visas.visainfo.case_status), 
   employer_name,
   count(visas.visainfo.case_status),
   CASE
     WHEN cast(wage_offer_from_9089 as decimal) >= 70000.00 THEN TRUE
	 ELSE FALSE
   END AS ISHIGHPAYING,
   cast(((count(visas.visainfo.case_status)*1.0)/total)as decimal(3,3)) as percentage
from visas.visainfo, total
WHERE employer_name LIKE '%COGNIZANT%'
group by case_status, total.total, employer_name, ISHIGHPAYING
order by employer_name desc, count desc
