    WITH model_a AS (

    SELECT * FROM   {{ ref('emp_details_model') }}
),
model_b AS (
    SELECT * FROM {{ ref('stg_table_model') }} 
)
 
SELECT 
    a.*,
    b.name
FROM 
    model_a AS a
JOIN 
    model_b AS b
ON 
    a.id = b.id