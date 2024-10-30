-- models/staging_data_model.sql
create table emp_details_final as(
SELECT  sd.id,sd.name,ed.domain,ed.location
FROM dbt_db.dbt_schema.emp_details ed
join dbt_db.dbt_schema.staging_data sd on ed.id=sd.id)