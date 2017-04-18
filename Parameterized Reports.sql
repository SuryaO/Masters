/*
Project Name: Marvel Educational System
Database: Microsoft Access Database
Author: Surya

SQL Queries for retriving the Data. The data is displayed by reports based on the parameters.

*/

--Faculty and course data
SELECT F.FacNum, F.FacName, C.CourseNum, C.CDescrip, C.NumCred
FROM (Faculty AS F INNER JOIN FacCourse AS FC ON FC.FacNum=F.FacNum) INNER JOIN Course AS C ON C.CourseNum=FC.CourseNum
WHERE C.CDescrip=[CourseName :];



--Faculty and Department Data
SELECT D.DeptNum, D.DeptName, F.FacNum, F.FacName
FROM Department AS D INNER JOIN Faculty AS F ON F.DeptNum=D.DeptNum
WHERE D.DeptName=[DeptName :]
ORDER BY F.FacName;



--Student and department Data
SELECT D.Deptnum, D.DeptName, S.Stunum, S.StuName, SD.Capacity
FROM (Department AS D INNER JOIN StuDept AS SD ON SD.DeptNum=D.Deptnum) INNER JOIN Student AS S ON S.Stunum=SD.Stunum
WHERE D.Deptname=[DeptName :]
ORDER BY S.Stuname;



--Student and Faculty data
SELECT F.FacNum, F.FacName, S.StuNum, S.StuName, S.GPA
FROM Faculty AS F INNER JOIN Student AS S ON S.FacNum=F.FacNum
WHERE F.FacName=[FacultyName :];




--Student and Course Data
SELECT S.StuNum, S.StuName, C.CourseNum, C.CDescrip, C.NumCred, SC.Grade
FROM (Student AS S INNER JOIN StuCourse AS SC ON SC.StuNum=S.StuNum) INNER JOIN Course AS C ON C.CourseNum=SC.coursenum
WHERE S.Stuname=[StudentName :];

