I found error in data structure, there are wrong data type in `leads_custom_fileds`. Field `facebook` must be VARCHAR(255) and `date_added` - DATE. So, correct structure is:
table `leads_custom_fileds`:
Primary key: id_c - BIGINT NOT NULL
Foreign key: lead_id - BIGINT NOT NULL
linkedin - VARCHAR(255)
twitter - VARCHAR(255)
facebook - VARCHAR(255)
date_added - DATE
