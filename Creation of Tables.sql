/*
Project Name: Marvel Educational System
Database: Microsoft Access Database
Author: Surya

Creation of tables and Relations
Purpose: Implementing Physical layer in Database Design


*/

Create table Course
(
CourseNum VARCHAR (6),
CDescrip VARCHAR (20),
NumCred CHAR (1),
CONSTRAINT pk_CourseNum PRIMARY KEY(CourseNum)
)



Create table Department
(
DeptNum NUMBER,
 DeptName VARCHAR (20),
 CONSTRAINT pk_DeptNum PRIMARY KEY(DeptNum)
)



Create table Faculty
(
FacNum NUMBER,
FacName VARCHAR (20),
DeptNum NUMBER, 
CONSTRAINT pk_facnum PRIMARY KEY(FacNum),
CONSTRAINT fk_deptnum FOREIGN KEY(DeptNum) REFERENCES Department(DeptNum) )






Create table Student 
(
StuNum NUMBER, 
StuName VARCHAR (20),
FacNum NUMBER,
GPA DOUBLE, 
HScode VARCHAR (20),
CONSTRAINT pk_StuNum PRIMARY KEY(StuName),
CONSTRAINT fk_HScode FOREIGN KEY(HScode) REFERENCES HighSchool(HScode),
CONSTRAINT fk_Facnum FOREIGN KEY(FacNum) REFERENCES Faculty(FacNum)
)



Create table FacCourse
(
FacNum NUMBER,
CourseNum VARCHAR (6),
CONSTRAINT pk_FacCouNum PRIMARY KEY (FacNum, CourseNum),
CONSTRAINT fk_Fac_Num FOREIGN KEY(FacNum) REFERENCES Faculty(FacNum),
CONSTRAINT fk_CourseNum FOREIGN KEY(CourseNum) REFERENCES Course(CourseNum)
)



Create table HighSchool 
(
HScode VARCHAR (6),
HSname VARCHAR (20),
CONSTRAINT pk_HScode PRIMARY KEY(HScode)
)





Create table StuCourse
(
StuNum NUMBER,
CourseNum VARCHAR (6),
Grade CHAR (1),
CONSTRAINT pk_StuCou PRIMARY KEY (StuNum, CourseNum),
CONSTRAINT fk_StuNum_1 FOREIGN KEY(StuNum) REFERENCES Student(StuNum),
CONSTRAINT fk_CouNum FOREIGN KEY(CourseNum) REFERENCES Course(CourseNum)
)



Create table StuDept
(
StuNum NUMBER,
DeptNum NUMBER,
Capacity VARCHAR (20),
CONSTRAINT pk_StuDept PRIMARY KEY (StuNum, DeptNum),
CONSTRAINT fk_StuNum0 FOREIGN KEY(StuNum) REFERENCES Student(StuNum),
CONSTRAINT fk_DeptNum0 FOREIGN KEY(DeptNum) REFERENCES Department(DeptNum)
)




Create table Users
(
UserId autoincrement,
UserName varchar (20),
Password varchar (20),
constraint pk_userId Primary key(UserId)
)




create table StuCourse
(
StuNum NUMBER,
CourseNum VARCHAR(6),
Grade CHAR(1),
CONSTRAINT pk_StuCou PRIMARY KEY(StuNum, CourseNum),
CONSTRAINT fk_StuNum_1 FOREIGN KEY(StuNum) REFERENCES Student(StuNum),
CONSTRAINT fk_CouNum FOREIGN KEY(CourseNum) REFERENCES Course(CourseNum)
)




create table Student 
(
StuNum NUMBER, 
StuName VARCHAR(20),
FacNum NUMBER,
GPA DOUBLE, 
HScode VARCHAR(20),
CONSTRAINT pk_StuNum PRIMARY KEY(StuName),
CONSTRAINT fk_HScode FOREIGN KEY(HScode) REFERENCES HighSchool(HScode),
CONSTRAINT fk_Facnum FOREIGN KEY(FacNum) REFERENCES Faculty(FacNum)
)




create table StuDept
(
StuNum NUMBER,
DeptNum NUMBER,
Capacity VARCHAR(20),
CONSTRAINT pk_StuDept PRIMARY KEY(StuNum, DeptNum),
CONSTRAINT fk_StuNum0 FOREIGN KEY(StuNum) REFERENCES Student(StuNum),
CONSTRAINT fk_DeptNum0 FOREIGN KEY(DeptNum) REFERENCES Department(DeptNum)
)



Create table Users
(
UserId autoincrement,
UserName varchar(20),
Password varchar(20),
constraint pk_UserId  Primary key(UserId)

)