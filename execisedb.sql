use exercisedb
-- Create CompanyInfo table
CREATE TABLE CompanyInfo (
    CId INT PRIMARY KEY,
    CName VARCHAR(255) NOT NULL
);

-- Insert data into CompanyInfo table
INSERT INTO CompanyInfo (CId, CName) VALUES
(1, 'Samsung'),
(2, 'HP'),
(3, 'Apple'),
(4, 'Dell'),
(5, 'Toshiba'),
(6, 'Redmi');

select * from CompanyInfo
-- Create Productinfo table
CREATE TABLE Productinfo (
    PId INT PRIMARY KEY,
    PName VARCHAR(255),
    PPrice DECIMAL(18, 2),
    PMDate DATE,
    CId INT,
    FOREIGN KEY (CId) REFERENCES CompanyInfo(CId)
);

-- Insert data into Productinfo table
INSERT INTO Productinfo (PId, PName, PPrice, PMDate, CId) VALUES
-- Create CompanyInfo table
CREATE TABLE CompanyInfo (
    CId INT PRIMARY KEY,
    CName VARCHAR(255) NOT NULL
);

-- Insert data into CompanyInfo table
INSERT INTO CompanyInfo (CId, CName) VALUES
(1, 'Samsung'),
(2, 'HP'),
(3, 'Apple'),
(4, 'Dell'),
(5, 'Toshiba'),
(6, 'Redmi');

-- Create Productinfo table
CREATE TABLE Productinfo (
    PId INT PRIMARY KEY,
    PName VARCHAR(255),
    PPrice DECIMAL(18, 2),
    PMDate DATE,
    CId INT,
    FOREIGN KEY (CId) REFERENCES CompanyInfo(CId)
);

-- Insert data into Productinfo table
INSERT INTO Productinfo (PId, PName, PPrice, PMDate, CId) VALUES
(101, 'Laptop', 55000.90, '2023-12-12', 1),
(102, 'Laptop', 35000.90, '2012-12-12', 2),
(103, 'Mobile', 15000.90, '2012-03-12', 2),
(104, 'Laptop', 135000.90, '2012-12-12', 3),
(105, 'Mobile', 65000.90, '2012-12-12', 3),
(106, 'Laptop', 35000.90, '2012-12-12', 5),
(107, 'Mobile', 35000.90, '2012-01-12', 5),
(108, 'Earpod', 1000.90, '2022-01-12', 3),
(109, 'Laptop', 85000.90, '2021-12-12', 6),
(110, 'Mobile', 55000.70, '2020-12-12', 1);
select * from Productinfo
-------------------------------------
--Q-1 Show All Companies Name and their products detail
-------------------------------------
SELECT CName, PName, PPrice, PMDate
FROM CompanyInfo
JOIN Productinfo ON CompanyInfo.CId = Productinfo.CId;

----------------------------------------------
--Q-2 Show All Products Name and their respective company Name
----------------------------------------------
SELECT PName, CName
FROM Productinfo
JOIN CompanyInfo ON Productinfo.CId = CompanyInfo.CId;

----------------------------------------------
--Q-3 Show all possible combinations of company and products
-----------------------------------------------------
SELECT CName, PName
FROM CompanyInfo
CROSS JOIN Productinfo;
