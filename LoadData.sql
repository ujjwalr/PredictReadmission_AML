/* 
The following statements loads data from S3 into Redshift as described in the blog post pulished here:
Replace the aws_access_key and aws_secret_access_key with corresponding values
*/

copy admission_source from 's3://diabetesdata/admission_source.csv' credentials 'aws_access_key_id=<>;aws_secret_access_key=<>' delimiter ',' IGNOREHEADER 1;
copy admission_type from 's3://diabetesdata/admission_type.csv' credentials 'aws_access_key_id=<>;aws_secret_access_key=<>' delimiter ',' IGNOREHEADER 1;
copy discharge_disposition from 's3://diabetesdata/discharge_disposition.csv' credentials 'aws_access_key_id=<>;aws_secret_access_key=<>' delimiter ',' IGNOREHEADER 1;
copy diabetes_data from 's3://diabetesdata/diabetic_data.csv' credentials 'aws_access_key_id=<>;aws_secret_access_key=<>' delimiter ',' IGNOREHEADER 1;
