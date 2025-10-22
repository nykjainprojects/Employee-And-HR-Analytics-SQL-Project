-- Creating database

Create database EMP_HR_ANALYTICS;
USE EMP_HR_ANALYTICS;

-- Creating Tables

CREATE TABLE Department (
  DeptID INT PRIMARY KEY,
  DeptName VARCHAR(50),
  Location VARCHAR(50)
);

CREATE TABLE Employee (
  EmpID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  JobTitle VARCHAR(50),
  ManagerID INT NULL,
  HireDate DATE,
  Salary DECIMAL(10,2),
  DeptID INT,
  FOREIGN KEY (DeptID) REFERENCES Department(DeptID),
  FOREIGN KEY (ManagerID) REFERENCES Employee(EmpID)
);

CREATE TABLE Performance (
  PerfID INT PRIMARY KEY,
  EmpID INT,
  ReviewDate DATE,
  Rating INT,
  Comments VARCHAR(255),
  FOREIGN KEY (EmpID) REFERENCES Employee(EmpID)
);

CREATE TABLE 	 (
  AttID INT PRIMARY KEY,
  EmpID INT,
  AttDate DATE,
  Status VARCHAR(20),  -- e.g. Present, Absent, Leave
  FOREIGN KEY (EmpID) REFERENCES Employee(EmpID)
); 


-- Inserting Values into Tables

INSERT INTO Department VALUES
(1, 'Finance', 'New York'),
(2, 'Sales', 'Chicago'),
(3, 'IT', 'San Francisco'),
(4, 'HR', 'Miami'),
(5, 'Marketing', 'Los Angeles'),
(6, 'Research', 'Seattle'),
(7, 'Customer Support', 'Austin');

INSERT INTO Employee VALUES
(101, 'John', 'Doe', 'Manager', NULL, '2015-03-15', 90000.00, 1),
(102, 'Jane', 'Smith', 'Sales Rep', 101, '2017-07-30', 60000.00, 2),
(103, 'Sam', 'Brown', 'Developer', 101, '2018-11-01', 80000.00, 3),
(104, 'Lucy', 'Davis', 'HR Executive', 101, '2019-01-22', 65000.00, 4),
(105, 'Michael', 'Johnson', 'Marketing Manager', 101, '2016-05-10', 85000.00, 5),
(106, 'Linda', 'Martinez', 'Research Analyst', 103, '2017-09-23', 72000.00, 6),
(107, 'James', 'Wilson', 'Customer Support Rep', 104, '2018-12-12', 48000.00, 7),
(108, 'Patricia', 'Taylor', 'Marketing Specialist', 105, '2019-07-02', 60000.00, 5),
(109, 'Robert', 'Anderson', 'Research Scientist', 106, '2020-01-18', 78000.00, 6),
(110, 'Barbara', 'Thomas', 'Customer Support Lead', 104, '2017-03-05', 65000.00, 7),
(111, 'Karen', 'Lee', 'Product Manager', 101, '2016-08-15', 88000.00, 5),
(112, 'Mark', 'Garcia', 'Research Associate', 106, '2019-03-10', 71000.00, 6),
(113, 'Nancy', 'Hall', 'Customer Support Specialist', 110, '2020-11-20', 46000.00, 7),
(114, 'Peter', 'Young', 'Marketing Analyst', 105, '2017-06-05', 62000.00, 5),
(115, 'Susan', 'King', 'Research Scientist', 109, '2018-04-18', 79000.00, 6),
(116, 'David', 'Wright', 'Customer Support Technician', 110, '2017-09-28', 53000.00, 7);


INSERT INTO Performance VALUES
(1, 101, '2024-12-31', 4, 'Strong leadership'),
(2, 102, '2024-12-31', 3, 'Meets targets'),
(3, 103, '2024-12-31', 5, 'Excellent coder'),
(4, 104, '2024-12-31', 4, 'Good support'),
(5, 105, '2024-12-31', 4, 'Strong campaign performance'),
(6, 106, '2024-12-31', 5, 'Innovative analysis'),
(7, 107, '2024-12-31', 3, 'Meets customer expectations'),
(8, 108, '2024-12-31', 4, 'Good team collaboration'),
(9, 109, '2024-12-31', 5, 'Excellent research outcomes'),
(10, 110, '2024-12-31', 4, 'Effective team leadership'),
(11, 111, '2024-12-31', 5, 'Exceeded product roadmap goals'),
(12, 112, '2024-12-31', 4, 'Delivered quality research with minor delays'),
(13, 113, '2024-12-31', 3, 'Adequate performance, needs improvement in response times'),
(14, 114, '2024-12-31', 4, 'Good analysis contributing to marketing success'),
(15, 115, '2024-12-31', 5, 'Innovative research and accurate results'),
(16, 116, '2024-12-31', 4, 'Consistent support with good customer feedback');



INSERT INTO Attendance VALUES
(1, 101, '2025-09-01', 'Present'),
(2, 102, '2025-09-01', 'Absent'),
(3, 103, '2025-09-01', 'Leave'),
(4, 104, '2025-09-01', 'Present'),
(5, 105, '2025-09-01', 'Present'),
(6, 106, '2025-09-01', 'Leave'),
(7, 107, '2025-09-01', 'Present'),
(8, 108, '2025-09-01', 'Absent'),
(9, 109, '2025-09-01', 'Present'),
(10, 110, '2025-09-01', 'Present'),
(11, 111, '2025-09-01', 'Present'),
(12, 112, '2025-09-01', 'Present'),
(13, 113, '2025-09-01', 'Absent'),
(14, 114, '2025-09-01', 'Leave'),
(15, 115, '2025-09-01', 'Present'),
(16, 116, '2025-09-01', 'Present');

INSERT INTO Attendance VALUES
(17, 101, '2025-09-02', 'Present'),
(18, 102, '2025-09-02', 'Present'),
(19, 103, '2025-09-02', 'Absent'),
(20, 104, '2025-09-02', 'Leave'),
(21, 105, '2025-09-02', 'Present'),
(22, 106, '2025-09-02', 'Present'),
(23, 107, '2025-09-02', 'Present'),
(24, 108, '2025-09-02', 'Leave'),
(25, 109, '2025-09-02', 'Present'),
(26, 110, '2025-09-02', 'Present'),
(27, 111, '2025-09-02', 'Absent'),
(28, 112, '2025-09-02', 'Present'),
(29, 113, '2025-09-02', 'Absent'),
(30, 114, '2025-09-02', 'Present'),
(31, 115, '2025-09-02', 'Leave'),
(32, 116, '2025-09-02', 'Present'),
(33, 101, '2025-09-03', 'Present'),
(34, 102, '2025-09-03', 'Absent'),
(35, 103, '2025-09-03', 'Present'),
(36, 104, '2025-09-03', 'Present'),
(37, 105, '2025-09-03', 'Absent'),
(38, 106, '2025-09-03', 'Present'),
(39, 107, '2025-09-03', 'Present'),
(40, 108, '2025-09-03', 'Present'),
(41, 109, '2025-09-03', 'Absent'),
(42, 110, '2025-09-03', 'Present'),
(43, 111, '2025-09-03', 'Leave'),
(44, 112, '2025-09-03', 'Present'),
(45, 113, '2025-09-03', 'Present'),
(46, 114, '2025-09-03', 'Present'),
(47, 115, '2025-09-03', 'Present'),
(48, 116, '2025-09-03', 'Leave');

-- September 4, 2025
INSERT INTO Attendance VALUES
(49, 101, '2025-09-04', 'Present'),
(50, 102, '2025-09-04', 'Leave'),
(51, 103, '2025-09-04', 'Present'),
(52, 104, '2025-09-04', 'Absent'),
(53, 105, '2025-09-04', 'Present'),
(54, 106, '2025-09-04', 'Present'),
(55, 107, '2025-09-04', 'Leave'),
(56, 108, '2025-09-04', 'Present'),
(57, 109, '2025-09-04', 'Present'),
(58, 110, '2025-09-04', 'Present'),
(59, 111, '2025-09-04', 'Present'),
(60, 112, '2025-09-04', 'Absent'),
(61, 113, '2025-09-04', 'Present'),
(62, 114, '2025-09-04', 'Present'),
(63, 115, '2025-09-04', 'Leave'),
(64, 116, '2025-09-04', 'Present');

-- September 5, 2025
INSERT INTO Attendance VALUES
(65, 101, '2025-09-05', 'Absent'),
(66, 102, '2025-09-05', 'Present'),
(67, 103, '2025-09-05', 'Present'),
(68, 104, '2025-09-05', 'Leave'),
(69, 105, '2025-09-05', 'Present'),
(70, 106, '2025-09-05', 'Present'),
(71, 107, '2025-09-05', 'Present'),
(72, 108, '2025-09-05', 'Absent'),
(73, 109, '2025-09-05', 'Present'),
(74, 110, '2025-09-05', 'Present'),
(75, 111, '2025-09-05', 'Leave'),
(76, 112, '2025-09-05', 'Present'),
(77, 113, '2025-09-05', 'Present'),
(78, 114, '2025-09-05', 'Present'),
(79, 115, '2025-09-05', 'Present'),
(80, 116, '2025-09-05', 'Present');

-- Determine the total number of employee in the dataset.

Select count(distinct Empid) From Employee;

-- Determine the total number of Manager in the dataset.

Select count(distinct ManagerID) From Employee;

-- Identify all unique Departments in the dataset.

Select Count(*) From Department;
    

-- 1. List all employees with their department names:

Select EmpID, Firstname, Lastname, E.DeptID, Deptname
From Employee E
Join Department D on D.deptID=E.DeptID;


-- 2. Get average salary by department:

Select DeptName, Round(Avg(Salary),2) AS AvgSalary
From Employee E
Join Department D on E.deptID=D.deptID
Group by DeptName;

-- 3. Find employees with performance rating above 4:

Select E.EmpID, E.Firstname, E.lastname, P.Rating, P.comments
From employee E
Join performance P on P.empID=E.empID
Where P.Rating>4;

-- 4. Count attendance status for each employee in September 2025:

Select E.EmpID, A.Status, Count(*) as Days
From Employee E
Join attendance A on A.empID=E.empId
Where A.AttDate Between	'2025-09-01' and '2025-09-30'
group By E.empid, A.status
order By E.empID, A.Status;

-- 5. Find employees who earn more than their manager

Select E.Empid, E.firstname, E.lastname, E.salary, M.firstname as ManagerFirstName, M.Lastname as ManagerLastName, M.salary as ManagerSalary
From Employee E
JOIN Employee M on E.managerID=M.empID
Where E.Salary>M.salary;

-- 6. Calculate year-over-year salary growth for each employee

With SalarybyYear AS(
Select EmpID, Year(HireDate) AS `Year`, Salary
From Employee),

SalaryGrowth as(
Select S1.EmpID, S1.`Year` AS `Year`, S1.Salary as curSalary,
S2.Salary as PrevSalary,
Round(((S1.Salary-S2.Salary)/Nullif(S2.Salary,0))*100,2) as SalaryGrowthPercent
From SalarybyYear S1
Join SalarybyYear S2 on S1.EmpID=S2.EmpID and S1.Year=S2.Year+1
)

Select * from SalaryGrowth
WHERE SalaryGrowthPercent IS NOT NULL;

-- 7. Rank employees within their departments by salary

Select E.EmpID, E.firstname, E.lastname, D.DeptName, E.Salary,
Rank() Over (Partition By D.DeptName Order By E.Salary Desc) as SalaryRank
From Employee E
Join Department D on E.deptID = D.DeptID;

-- 8. Calculate the percentage of employees meeting or exceeding a rating threshold by department

With RatedEmp AS(
	Select E.DeptID, P.empID, P.Rating
	From employee E
	Join Performance P on P.empID=E.EmpID
),
RatingSummery AS(
	Select DeptID, Count(*) AS TotalEMP,
    Sum(Case When Rating > 1 then 1 Else 0 END) AS EmployeesMeetingThreshold
    From RatedEmp
    Group By DeptID
)
Select 	D.DeptName, TotalEMP, EmployeesMeetingThreshold,
	Round(EmployeesMeetingThreshold*100/TotalEMP,2) AS PercentMeetingThreshold
    From RatingSummery RS
    Join department D on D.DeptID=RS.DeptID;
    
    



-- 9. Identify employees with perfect attendance in a given month

With MonthlyAttendance AS(
	Select EmpID, Count(*) as DaysPresent
	From attendance
	Where AttDate between '2025-09-01' and '2025-09-30' and Status = 'Present'
	Group By EMPID
),
WorkingDays AS(
	Select Count(*) as TotalWorkingDays
    From Attendance
    where AttDate between '2025-09-01' and '2025-09-30'
    Group By AttDate
)
Select E.empID, E.FirstName, E.LastName
From Employee E
Join MonthlyAttendance AS MA on MA.EMPID=E.EMPID
Cross Join WorkingDays WD
Where MA.dayspresent = WD.TotalWorkingDays;
    
    
-- 10. Employees with performance rating 4 or above and their comments

Select E.EmpID, E.FirstName, E.LastName,P.rating, P.Comments
From employee E
Join Performance P on P.empID=E.EmpID
Where Rating>4;

-- 11. Count of employees by attendance status on a specific date

Select Status, Count(*) as EmpCount
From Attendance
Where Attdate='2025-09-01'
Group by Status;

-- 12. Average salary of employees with performance rating 5

Select Round(Avg(E.Salary),2) As AvgSalaryHighPerformers
From Employee E
Join performance P on P.empID= E.EmpID
Where P.Rating=5;

-- 13. Employees on leave and their departments

Select E.FirstName, E.LastName, D.DeptName
From employee E
Join department D on D.DeptID=E.DeptID
Join attendance A on A.EmpID=E.EmpID
Where A.Attdate = '2025-09-01' and A.Status='Leave';

-- 14. Performance summary: average rating by department

Select D.Deptname, Avg(P.Rating) AS AvgDeptRating
From Department D
Join Employee E on E.deptID=D.deptid
Join performance P on P.EmpID=E.empID
group by D.DeptName;

-- 15. Employees rated 3 or less with their attendance status

Select E.firstName, E.lastName, Status
From employee E
Join attendance A on A.EmpID=E.EmpID
Join performance P on P.EmpID=E.EmpID
Where P.rating<=3 and Attdate='2025-09-01';

-- 16. List employees not present on 2025-09-01 along with their manager names

Select E.EmpID, E.FirstName as EmpFirstName, E.lastName as EmpLastName, M.firstname as ManFirstName, M.lastName as ManLastName
From Employee E
Left Join employee M on E.ManagerID=M.EmpID
Join attendance A on A.EmpID=E.empid
Where  A.AttDate='2025-09-01' and A.Status <> 'Present' ;

-- 17. Employees hired after 2018 with their performance ratings

Select E.FirstName,E.lastName, P.Rating
From employee E
Join performance P on E.EmpID=P.EmpID
Where E.HireDate>'2018-01-01';

-- 18. Number of employees reporting to each manager

Select M.FirstName, M.LastName, Count(E.empID) as EmpCount
From employee E
Join employee M on M.EmpID=E.ManagerID
group By M.FirstName,M.LastName
Order By Count(E.empID) Desc;

-- 19. Attendance percentage (Present days) for each employee in September 2025

With TotalDays AS(
	Select Count(distinct Attdate) AS WorkingDays
    From attendance
    Where AttDate Between '2025-09-01' and '2025-09-30'
    ),
PresentDays AS (
	Select EmpID, Count(*) as DaysPresent
    From attendance
    Where Status = 'Present' and AttDate Between '2025-09-01' and '2025-09-30'
    Group by EmpID
)
Select E.FirstName, E.LastName,
		Round((PD.DaysPresent / TD.WorkingDays) * 100,2) as AttendancePercent
From Employee E
Left Join PresentDays PD on PD.empID=E.EmpID
Cross Join TotalDays TD
Order By AttendancePercent Desc;
	
    
-- END OF PROJECT

