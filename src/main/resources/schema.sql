/*create table otherEmployee
(
   empId NOT NULL PRIMARY KEY ,
   empName VARCHAR(255) NOT NULL,
   deptId VARCHAR(255) NOT NULL,
   faceid VARCHAR(255) NOT NULL
);

ALTER TABLE otherEmployee
ADD COLUMN inTime TIME DEFAULT '09:00:00',
ADD COLUMN outTime TIME DEFAULT '17:30:00'; */
create table users
(
   id IDENTITY NOT NULL PRIMARY KEY ,
   first_name VARCHAR(255) NOT NULL,
   last_name VARCHAR(255) NOT NULL,
   email_id VARCHAR(255) NOT NULL,
   inTime time default '09:00:00',
   outTime time default '17:30:00'
);