create database student_task_manager;

use student_task_manager;

create table students(
student_id int primary key auto_increment,
first_name varchar(100),
last_name varchar(100),
gender varchar(20),
mobile_number varchar(20),
email varchar(100),
course_name varchar(100),
admission_date date
);

insert into students (
first_name,
last_name,
gender,
mobile_number,
email,
course_name,
admission_date
)
values (
'Rajendra',
'Gaikwad',
'Male',
'9876543210',
'rahul@test.com',
'Python',
curdate()
),
(
'Samiksha',
'Gholase',
'Female',
'5632258654',
'samiksha@gmail.com',
'Data structure',
curdate()
),
(
'Atharv',
'Gaikwad',
'Male',
'8965712875',
'atharv12@gmail.com',
'Science',
curdate()
),
(
'Sakshi',
'Chavan',
'Female',
'7865912986',
'sakshi12@gmail.com',
'BCA',
curdate()
);



select * from students;


CREATE TABLE attendance
(
attendance_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
attendance_date DATE,
attendance_status VARCHAR(20),
FOREIGN KEY (student_id)
REFERENCES students(student_id)
);

SHOW TABLES;


CREATE TABLE tasks
(
task_id INT PRIMARY KEY AUTO_INCREMENT,
task_name VARCHAR(200),
task_description TEXT,
maximum_marks INT
);

INSERT INTO tasks
(
task_name,
task_description,
maximum_marks
)
VALUES
(
'Python Assignment',
'Basic Python Practice',
100
);

select * from tasks;


CREATE TABLE student_tasks
(
student_task_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
task_id INT,
obtained_marks INT,
submission_date DATE,
FOREIGN KEY (student_id)
REFERENCES students(student_id),
FOREIGN KEY (task_id)
REFERENCES tasks(task_id)
);


show tables;


ALTER TABLE student_tasks
ADD COLUMN submission_status VARCHAR(50);

ALTER TABLE student_tasks
ADD COLUMN remarks TEXT;

describe student_tasks;

CREATE TABLE users
(
user_id INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(100),
password VARCHAR(100),
full_name VARCHAR(200)
);

INSERT INTO users
(
username,
password,
full_name
)
VALUES
(
'admin',
'admin123',
'System Administrator'
);

select * from users;
