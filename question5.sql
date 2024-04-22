--SQL statements to create tables
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Courses;

CREATE TABLE Courses (
    Cno VARCHAR PRIMARY KEY,
    Cname VARCHAR(255),
    Cduration INT
    
);
CREATE TABLE Students (
    Sno VARCHAR(100) PRIMARY KEY,
    Sname VARCHAR(255),
	 SGPA DECIMAL(3, 2),
	Scity VARCHAR(255),
	Cno VARCHAR(100)
);



INSERT INTO Courses (Cno, Cname,Cduration) VALUES ('C1', 'HNDA',4);
INSERT INTO Courses (Cno, Cname,Cduration) VALUES ('C2', 'HNDIT',2);
INSERT INTO Courses (Cno, Cname,Cduration) VALUES ('C3', 'HNDM',3);
INSERT INTO Courses (Cno, Cname,Cduration) VALUES ('C4', 'HNDE',2);

INSERT INTO Students (Sno, Sname, SGPA, Scity, Cno) VALUES ('S1', 'Saman', 2.60, 'Kegalle', 'C1');
INSERT INTO Students(Sno, Sname, SGPA, Scity, Cno) VALUES ('S2', 'Kamal', 2.45, 'Kandy', 'C2');
INSERT INTO Students (Sno, Sname, SGPA, Scity, Cno) VALUES ('S3', 'Joe', 3.20, 'Galle', 'C3');
INSERT INTO Students (Sno, Sname, SGPA, Scity, Cno) VALUES ('S4', 'Ruwan', 4.00, 'Kandy', 'C1');
INSERT INTO Students (Sno, Sname, SGPA, Scity, Cno) VALUES ('S5', 'Asela', 3.50, 'Jaffna', 'C4');
INSERT INTO Students (Sno, Sname, SGPA, Scity, Cno) VALUES ('S6', 'Asanka', 2.88, 'Galle', 'C2');
INSERT INTO Students (Sno, Sname, SGPA, Scity, Cno) VALUES ('S7', 'Wasana', 2.75, 'Galle', 'C3');
INSERT INTO Students (Sno, Sname, SGPA, Scity, Cno) VALUES ('S8', 'Dilin', 3.35, 'Collombo', 'C1');
INSERT INTO Students (Sno, Sname, SGPA, Scity, Cno) VALUES ('S9', 'Aruna', 2.76, 'Kandy', 'C4');
INSERT INTO Students (Sno, Sname, SGPA, Scity, Cno) VALUES ('S10', 'Gayan', 3.00, 'Galle', 'C4');

SELECT * FROM Courses;
SELECT * FROM Students;

--a)
SELECT Sname, SGPA FROM Students;

--b)
SELECT Sname FROM Students WHERE SGPA > 3.00;

--c)
SELECT Cno, COUNT(*) AS Number_of_Students
FROM Students
GROUP BY Cno;

--d)
SELECT S.Sname, S.SGPA, C.Cname
FROM Students AS S
JOIN Courses AS C ON S.Cno = C.Cno;

--e)
SELECT *
FROM Students
ORDER BY SGPA ASC;

--f)
--Security Management: DBAs implement security measures to protect sensitive data stored in databases. This includes setting up user accounts, access controls, encryption, and implementing security policies to safeguard against unauthorized access and data breaches.
--Backup and Recovery: They develop and implement backup and recovery strategies to ensure data integrity and minimize the risk of data loss in the event of hardware failure, human error, or disasters. This involves scheduling regular backups, testing recovery procedures, and restoring data when necessary.
--Performance Tuning: DBAs monitor database performance, identify bottlenecks, and optimize database configurations, queries, and indexes to improve efficiency and responsiveness. They also analyze resource utilization and plan for capacity scaling as data volumes grow.
--Data Integrity and Maintenance: They enforce data integrity constraints, such as ensuring referential integrity and enforcing business rules, to maintain data accuracy and consistency. DBAs also perform routine maintenance tasks, such as data cleanup, index rebuilding, and database reorganization, to optimize performance and reliability.
--Troubleshooting and Support: DBAs diagnose and resolve database-related issues, such as database errors, performance degradation, and connectivity problems. They provide technical support to users and developers, offering guidance on database usage, best practices, and troubleshooting techniques.
--Database Upgrades and Patch Management: They plan and execute database upgrades, migrations, and patch installations to ensure that databases are running on the latest software versions with the latest security patches and bug fixes.
