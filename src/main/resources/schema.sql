
create table prescription(
    p_id int NOT NULL,
    p_name varchar(50) NOT NULL,
    p_symptoms varchar(200) NOT NULL,
    p_diagnosis varchar(200) NOT NULL,
    p_donts varchar(200),
    p_dos varchar(200),
    p_meds varchar(200) NOT NULL,
    p_followup varchar(20),
    )