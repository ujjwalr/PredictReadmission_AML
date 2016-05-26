-- Drop existing tables
drop table discharge_disposition; 
drop table admission_type; 
drop table admission_source;
drop table diabetes_data;
drop table diabetes_data_modified1;
drop table diabetes_data_modified2;

-- Create Table statements
create table admission_type (
admission_type_id INTEGER NOT NULL,
description varchar(100)
);

ALTER TABLE admission_type ADD PRIMARY KEY (admission_type_id);

create table discharge_disposition (
discharge_disposition_id INTEGER NOT NULL,
description VARCHAR(500)
);

ALTER TABLE discharge_disposition ADD PRIMARY KEY (discharge_disposition_id);

create table admission_source (
admission_source_id INTEGER NOT NULL,
description VARCHAR(500)
);

ALTER TABLE admission_source ADD PRIMARY KEY (admission_source_id);

create table diabetes_data (
encounter_id INTEGER NOT NULL,
patient_nbr INTEGER,
race VARCHAR(100),
gender	VARCHAR(50),
age VARCHAR(50),
weight	VARCHAR(50),
admission_type_id INTEGER,
discharge_disposition_id INTEGER,
admission_source_id INTEGER,
time_in_hospital INTEGER,
payer_code VARCHAR(10),
medical_specialty VARCHAR(100),
num_lab_procedures INTEGER,
num_procedures INTEGER,
num_medications	INTEGER,
number_outpatient INTEGER,
number_emergency INTEGER,
number_inpatient INTEGER,
diag_1 VARCHAR(20),
diag_2 VARCHAR(20),
diag_3 VARCHAR(20),
number_diagnoses INTEGER,
max_glu_serum VARCHAR(20),
A1Cresult VARCHAR(20),
metformin VARCHAR(20),
repaglinide VARCHAR(20),
nateglinide VARCHAR(20),
chlorpropamide VARCHAR(20),
glimepiride VARCHAR(20),
acetohexamide VARCHAR(20),
glipizide VARCHAR(20),
glyburide VARCHAR(20),
tolbutamide VARCHAR(20),
pioglitazone VARCHAR(20),
rosiglitazone VARCHAR(20),
acarbose VARCHAR(20),
miglitol VARCHAR(20),
troglitazone VARCHAR(20),
tolazamide VARCHAR(20),
examide VARCHAR(20),
citoglipton VARCHAR(20),
insulin VARCHAR(20),
glyburide_metformin VARCHAR(20),
glipizide_metformin VARCHAR(20),
glimepiride_pioglitazone VARCHAR(20),
metformin_rosiglitazone VARCHAR(20),
metformin_pioglitazone VARCHAR(20),
change VARCHAR(20),
diabetesMed VARCHAR(20),
readmitted  VARCHAR(20)
);

ALTER TABLE diabetes_data ADD PRIMARY KEY (encounter_id);


-- data load

insert into admission_type(admission_type_id,description) values (1,'Emergency');
insert into admission_type(admission_type_id,description) values (2,'Urgent');
insert into admission_type(admission_type_id,description) values (3,'Elective');
insert into admission_type(admission_type_id,description) values (4,'Newborn');
insert into admission_type(admission_type_id,description) values (5,'Not Available');
insert into admission_type(admission_type_id,description) values (6,NULL);
insert into admission_type(admission_type_id,description) values (7,'Trauma Center');
insert into admission_type(admission_type_id,description) values (8,'Not Mapped');

insert into discharge_disposition(discharge_disposition_id,description) values (1,'Discharged to home'); 
insert into discharge_disposition(discharge_disposition_id,description) values (2,'Discharged/transferred to another short term hospital'); 
insert into discharge_disposition(discharge_disposition_id,description) values (3,'Discharged/transferred to SNF'); 
insert into discharge_disposition(discharge_disposition_id,description) values (4,'Discharged/transferred to ICF'); 
insert into discharge_disposition(discharge_disposition_id,description) values (5,'Discharged/transferred to another type of inpatient care institution'); 
insert into discharge_disposition(discharge_disposition_id,description) values (6,'Discharged/transferred to home with home health service'); 
insert into discharge_disposition(discharge_disposition_id,description) values (7,'Left AMA'); 
insert into discharge_disposition(discharge_disposition_id,description) values (8,'Discharged/transferred to home under care of Home IV provider'); 
insert into discharge_disposition(discharge_disposition_id,description) values (9,'Admitted as an inpatient to this hospital'); 
insert into discharge_disposition(discharge_disposition_id,description) values (10,'Neonate discharged to another hospital for neonatal aftercare'); 
insert into discharge_disposition(discharge_disposition_id,description) values (11,'Expired'); 
insert into discharge_disposition(discharge_disposition_id,description) values (12,'Still patient or expected to return for outpatient services'); 
insert into discharge_disposition(discharge_disposition_id,description) values (13,'Hospice / home'); 
insert into discharge_disposition(discharge_disposition_id,description) values (14,'Hospice / medical facility'); 
insert into discharge_disposition(discharge_disposition_id,description) values (15,'Discharged/transferred within this institution to Medicare approved swing bed'); 
insert into discharge_disposition(discharge_disposition_id,description) values (16,'Discharged/transferred/referred another institution for outpatient services'); 
insert into discharge_disposition(discharge_disposition_id,description) values (17,'Discharged/transferred/referred to this institution for outpatient services'); 
insert into discharge_disposition(discharge_disposition_id,description) values (18,NULL); 
insert into discharge_disposition(discharge_disposition_id,description) values (19,'Expired at home. Medicaid only, hospice.'); 
insert into discharge_disposition(discharge_disposition_id,description) values (20,'Expired in a medical facility. Medicaid only, hospice.'); 
insert into discharge_disposition(discharge_disposition_id,description) values (21,'Expired, place unknown. Medicaid only, hospice.'); 
insert into discharge_disposition(discharge_disposition_id,description) values (22,'Discharged/transferred to another rehab fac including rehab units of a hospital .'); 
insert into discharge_disposition(discharge_disposition_id,description) values (23,'Discharged/transferred to a long term care hospital.'); 
insert into discharge_disposition(discharge_disposition_id,description) values (24,'Discharged/transferred to a nursing facility certified under Medicaid but not certified under Medicare.'); 
insert into discharge_disposition(discharge_disposition_id,description) values (25,'Not Mapped');
insert into discharge_disposition(discharge_disposition_id,description) values (26,'Unknown/Invalid');
insert into discharge_disposition(discharge_disposition_id,description) values (27,'Discharged/transferred to another Type of Health Care Institution not Defined Elsewhere');
insert into discharge_disposition(discharge_disposition_id,description) values (28,'Discharged/transferred to a federal health care facility.');
insert into discharge_disposition(discharge_disposition_id,description) values (29,'Discharged/transferred/referred to a psychiatric hospital of psychiatric distinct part unit of a hospital');
insert into discharge_disposition(discharge_disposition_id,description) values (30,'Discharged/transferred to a Critical Access Hospital (CAH).');

insert into admission_source(admission_source_id,description) values (1,' Physician Referral');
insert into admission_source(admission_source_id,description) values (2,'Clinic Referral');
insert into admission_source(admission_source_id,description) values (3,'HMO Referral');
insert into admission_source(admission_source_id,description) values (4,'Transfer from a hospital');
insert into admission_source(admission_source_id,description) values (5,' Transfer from a Skilled Nursing Facility (SNF)');
insert into admission_source(admission_source_id,description) values (6,' Transfer from another health care facility');
insert into admission_source(admission_source_id,description) values (7,' Emergency Room');
insert into admission_source(admission_source_id,description) values (8,' Court/Law Enforcement');
insert into admission_source(admission_source_id,description) values (9,' Not Available');
insert into admission_source(admission_source_id,description) values (10,' Transfer from critial access hospital');
insert into admission_source(admission_source_id,description) values (11,'Normal Delivery');
insert into admission_source(admission_source_id,description) values (12,' Premature Delivery');
insert into admission_source(admission_source_id,description) values (13,' Sick Baby');
insert into admission_source(admission_source_id,description) values (14,' Extramural Birth');
insert into admission_source(admission_source_id,description) values (15,'Not Available');
insert into admission_source(admission_source_id,description) values (17,NULL);
insert into admission_source(admission_source_id,description) values (18,' Transfer From Another Home Health Agency');
insert into admission_source(admission_source_id,description) values (19,'Readmission to Same Home Health Agency');
insert into admission_source(admission_source_id,description) values (20,' Not Mapped');
insert into admission_source(admission_source_id,description) values (21,'Unknown/Invalid');
insert into admission_source(admission_source_id,description) values (22,' Transfer from hospital inpt/same fac reslt in a sep claim');
insert into admission_source(admission_source_id,description) values (23,' Born inside this hospital');
insert into admission_source(admission_source_id,description) values (24,' Born outside this hospital');
insert into admission_source(admission_source_id,description) values (25,' Transfer from Ambulatory Surgery Center');
insert into admission_source(admission_source_id,description) values (26,'Transfer from Hospice');

copy diabetes_data from 's3://inpatientpayments/Diabetes/diabetic_data.csv' credentials 'aws_access_key_id=AKIAIYMZRDO3VSU564HA;aws_secret_access_key=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' delimiter ',' IGNOREHEADER 1;


--data massaging


-- updating null values
update diabetes_data set weight=null where weight='?';
update diabetes_data set payer_code=null where payer_code='?';
update diabetes_data set medical_specialty=null where medical_specialty='?';
update diabetes_data set diag_2=null where diag_2='?';
update diabetes_data set diag_3=null where diag_3='?';
update diabetes_data set race=null where race='?';

-- Adding new age categorization column and updating age_categories
alter table diabetes_data add column age_category varchar(100);
update diabetes_data set age_category = 'Young' where age in ('[0-10)','[10-20)');
update diabetes_data set age_category = 'Adult' where age in ('[20-30)','[30-40)','[40-50)');
update diabetes_data set age_category = 'Old' where age in ('[50-60)','[60-70)','[70-80)','[80-90)','[90-100)');

-- Adding new readmission_result column and updating the readmission results
alter table diabetes_data add column readmission_result1 varchar(10);
update diabetes_data set readmission_result1='Yes' where readmitted='<30';
update diabetes_data set readmission_result1='No' where readmitted='>30';
update diabetes_data set readmission_result1='No' where readmitted='NO';


-- Creating the modified dataset for the model
create table diabetes_data_modified as 
select  
a.encounter_id,
a.patient_nbr,
a.race,
a.gender,
a.age,
a.age_category,
a.weight,
c.description as admission_type,
b.description as discharge_disposition,
d.description as admission_source,
a.time_in_hospital,
a.payer_code,
a.medical_specialty,
a.num_lab_procedures,
a.num_procedures,
a.num_medications,
a.number_outpatient,
a.number_emergency,
a.number_inpatient,
a.diag_1,
a.diag_2,
a.diag_3,
a.number_diagnoses,
a.max_glu_serum,
a.a1cresult,
a.metformin,
a.repaglinide,
a.nateglinide,
a.chlorpropamide,
a.glimepiride,
a.acetohexamide,
a.glipizide,
a.glyburide,
a.tolbutamide,
a.pioglitazone,
a.rosiglitazone,
a.acarbose,
a.miglitol,
a.troglitazone,
a.tolazamide,
a.examide,
a.citoglipton,
a.insulin,
a.glyburide_metformin,
a.glipizide_metformin,
a.glimepiride_pioglitazone,
a.metformin_rosiglitazone,
a.metformin_pioglitazone,
a.change,
a.diabetesmed,
a.readmission_result
from diabetes_data a
left outer join discharge_disposition b on a.discharge_disposition_id=b.discharge_disposition_id
left outer join admission_type c on a.admission_type_id=c.admission_type_id
left outer join admission_source d on a.admission_source_id=d.admission_source_id;

-- Checking the count of records to act as the final data source for AML
select count(*) from diabetes_data_modified where readmission_result='Yes';

-- ***************************** Debugging *****************************************

select le.starttime, d.query, d.line_number, d.colname, d.value,
le.raw_line, le.err_reason    
from stl_loaderror_detail d, stl_load_errors le
where d.query = le.query
order by le.starttime desc
limit 100

select * from stl_load_errors
