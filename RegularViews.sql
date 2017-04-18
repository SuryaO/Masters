/*

Project Name: Marvel Educational System
Database: Microsoft Access Database
Author: Surya

SQL Queries for Data Retrival. Normal views to diaplay the data.

*/

--Faculty and Department View
SELECT F.Facnum, F.FacName, D.DeptNum, D.DeptName
FROM Department AS D INNER JOIN Faculty AS F ON F.DeptNum=D.DeptNum
ORDER BY F.FacName;



--Student information View.
SELECT S.StuNum, S.StuName, S.GPA, F.FacNum, F.FacName, D.DeptNum, DeptName
FROM (Student AS S INNER JOIN Faculty AS F ON S.FacNum=F.FacNum) INNER JOIN Department AS D ON D.DeptNum=F.DeptNum
ORDER BY StuName;




--Course information view
SELECT C.CourseNum, C.CDescrip, C.NumCred
FROM Course AS C
ORDER BY CourseNum;




--Student School information
SELECT S.StuNum, S.StuName, H.HSCode, HSname
FROM HighSchool AS H INNER JOIN Student AS S ON S.HSCode=H.HSCode
ORDER BY H.HSname, S.StuName;





--Department information View
SELECT S.Stunum, S.stuName, S.GPa, H.Hscode, H.HsName, D.Deptnum, D.DeptName, SD.Capacity
FROM ((Student AS S INNER JOIN HighSchool AS H ON H.HScode=S.HScode) INNER JOIN StuDept AS SD ON SD.StuNum=S.StuNum) INNER JOIN Department AS D ON D.DeptNum=SD.DeptNum
ORDER BY S.Stunum, D.DeptNum;
