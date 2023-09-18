-- Change the data type of the `facebook` column to VARCHAR(255)
ALTER TABLE leads_custom_fileds
ALTER COLUMN facebook VARCHAR(255);

-- Change the data type of the `date_added` column to DATE
ALTER TABLE leads_custom_fileds
ALTER COLUMN date_added DATE;

SELECT l.first_name, l.last_name, lcf.linkedin
FROM leads l
INNER JOIN leads_custom_fileds lcf ON l.id = lcf.lead_id
WHERE l.date_added >= (CURRENT_DATE - INTERVAL '7 days');
