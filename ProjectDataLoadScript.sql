
CREATE TABLE IF NOT EXISTS visas.countryregion(
country varchar(255),
region	varchar(255)
)

CREATE TABLE IF NOT EXISTS visas.visainfo(
agent_state	varchar(255),
case_number	varchar(255),
case_received_date date,
case_status	varchar(255),
class_of_admission varchar(255),
country_of_citizenship	varchar(255),
decision_date	date,
employer_address_1	varchar(255),
employer_address_2	varchar(255),
employer_city	varchar(255),
employer_country	varchar(255),
employer_decl_info_title	varchar(255),
employer_name	varchar(255),
employer_num_employees	integer,
employer_postal_code	integer,
employer_state	varchar(255),
employer_yr_estab	integer,
foreign_worker_info_birth_country varchar(255),
foreign_worker_info_city	varchar(255),
foreign_worker_info_education	varchar(255),
foreign_worker_info_inst	varchar(255),
foreign_worker_info_major	varchar(255),
job_info_education	varchar(255),
job_info_experience	varchar(255),
job_info_experience_num_months	integer,
job_info_foreign_ed	varchar(255),
job_info_foreign_lang_req	varchar(255),
job_info_job_req_normal	varchar(255),
job_info_job_title	varchar(255),
job_info_major	varchar(255),
job_info_training	varchar(255),
job_info_work_city	varchar(255),
job_info_work_postal_code	varchar(255),
job_info_work_state	varchar(255),
naics_code	integer,
naics_title	varchar(255),
preparer_info_emp_completed	varchar(255),
preparer_info_title	varchar(255),
pw_amount_9089	money,
pw_determ_date	date,
pw_expire_date	date,
pw_job_title_9089	varchar(255),
pw_level_9089	varchar(255),
pw_soc_code	varchar(255),
pw_soc_title	varchar(255),
pw_source_name_9089	varchar(255),
pw_unit_of_pay_9089	varchar(255),
wage_offer_from_9089	money,
wage_offer_unit_of_pay_9089	varchar(255)
	
)


copy visas.countryregion(
country, region)
from 'C:/ForGalvanize/country_profile_variables.csv'
delimiter ','
csv header;

--select * from visas.countryregion

COPY visas.visainfo(
agent_city,
agent_firm_name,
agent_state,
case_number,
case_received_date,
case_status,
class_of_admission,
country_of_citizenship,
decision_date,
employer_address_1,
employer_address_2,
employer_city,
employer_country,
employer_decl_info_title,
employer_name,
employer_num_employees,
employer_postal_code,
employer_state,
employer_yr_estab,
foreign_worker_info_birth_country,
foreign_worker_info_city,
foreign_worker_info_education,
foreign_worker_info_inst,
foreign_worker_info_major,
job_info_education,
job_info_experience,
job_info_experience_num_months,
job_info_foreign_ed,
job_info_foreign_lang_req,
job_info_job_req_normal,
job_info_job_title,
job_info_major,
job_info_training,
job_info_work_city,
job_info_work_postal_code,
job_info_work_state,
naics_code,
naics_title,
preparer_info_emp_completed,
preparer_info_title,
pw_amount_9089,
pw_determ_date,
pw_expire_date,
pw_job_title_9089,
pw_level_9089,
pw_soc_code,
pw_soc_title,
pw_source_name_9089,
pw_unit_of_pay_9089,
wage_offer_from_9089,
wage_offer_unit_of_pay_9089
)
from 'C:/ForGalvanize/US Visas_CSV.csv'
delimiter ','
csv header;