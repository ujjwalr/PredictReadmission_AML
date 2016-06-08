/* 
The following script massages the data set to make it suitable for use with the machine learning model. It also creates a new table diabetes_data_modified that has the custom target attribute readmission_result as described in the blog post published at the folloing link:
*/


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

