--a) Entities in the Scenario
--TV Company
--TV Series
--Episode
--Actor
--Director

--Sql statements to create tables required
DROP TABLE IF EXISTS TVSeries;
DROP TABLE IF EXISTS Actor;
DROP TABLE IF EXISTS Director;
DROP TABLE IF EXISTS Episode;
DROP TABLE IF EXISTS SeriesActor;

CREATE TABLE TVSeries (
    Series_ID INT PRIMARY KEY,
    Series_Name VARCHAR(255),
    Start_Date DATE,
    End_Date DATE
);
SELECT *FROM TVSeries;

CREATE TABLE Actor (
    Actor_ID INT PRIMARY KEY,
    Actor_Name VARCHAR(255),
   Date_of_Birth DATE
);
SELECT *FROM Actor;

CREATE TABLE Director (
    Director_ID INT PRIMARY KEY,
    Director_Name VARCHAR(255),
   Date_of_Birth DATE
);
SELECT *FROM Director;

CREATE TABLE Episode (
    Episode_ID INT PRIMARY KEY,
    Episode_Title VARCHAR(255),
    Air_Date DATE,
    Series_ID INT,
    FOREIGN KEY (Series_ID) REFERENCES TVSeries(Series_ID)
);
SELECT *FROM Episode

--Primary key
--A primary key is a special relational database constraint that uniquely
--identifies each record (or row) in a table. It ensures that there are no
--duplicate values within the column(s) designated as the 
--primary key, and it also ensures data integrity by enforcing uniqueness.

--Example
--Let's consider an "Employee" table with the following attributes: 
--Employee_ID, Name, and Department_ID. In this case, we can choose the "Employee_ID" attribute
--as the primary key. Each employee would have a unique 
--Employee_ID, allowing us to uniquely identify each record in the table

--Foreign Key
--A foreign key is a relational database constraint that establishes a link or
--relationship between two tables. It is used to enforce referential integrity by ensuring that values in a column (or set of columns) in one table match 
--the values in another table's primary key or unique key column(s).

--Example
--lets Consider two tables: "Orders" and "Customers".
--order table
--Attributes: Order_ID (Primary Key), Customer_ID (Foreign Key),
--Order_Date, Total_Amount
--Customer table
--Attributes: Customer_ID (Primary Key), Customer_Name, Email_Address,
--Phone_Number
--In this scenario, the "Customer_ID" attribute in the "Orders" table is a foreign key that references the
--primary key "Customer_ID" in the "Customers" table.

