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

