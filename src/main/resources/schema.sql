create table login
(
    role varchar(20) not null,
    username int not null,
    password varchar(20) not null,

    primary key(username)
)
SELECT * FROM hospital.login;

create table addpatient
(
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    patient_id int not null,
    date-of-birth int not null,
    city varchar(100) not null,
    state varchar(100) not null,
    address varchar(100) not null,
    mobilenumber int not null,
    gender varchar(20) not null,
    allergy varchar(100) not null,
    doctor_to_be_assigned varchar(100) not null,

)
SELECT * FROM hospital.addpatient;