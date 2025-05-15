CREATE TABLE Clients (
    Client_ID VARCHAR(20) PRIMARY KEY,
    Client_Name VARCHAR(50) NOT NULL,
    Contact_Details VARCHAR(100),
    Contact_Start_Date DATE,
    Contact_End_Date DATE
);

CREATE TABLE Campaigns (
    Campaign_ID VARCHAR(10) PRIMARY KEY,
    Start_Date DATE NOT NULL,
    End_Date DATE NOT NULL,
    Budget FLOAT,
    Impressions INT,
    Clicks INT,
    Audience VARCHAR(50),
    Conversations VARCHAR(50),
    Engagement_Rate FLOAT,
    Conversion_Rate FLOAT,
    Executive_Emp_ID VARCHAR(20),
    Client_ID VARCHAR(20),
    FOREIGN KEY (Executive_Emp_ID) REFERENCES Employees(Employee_ID),
    FOREIGN KEY (Client_ID) REFERENCES Clients(Client_ID)
);

CREATE TABLE Employees (
    Employee_ID VARCHAR(20) PRIMARY KEY,
    Employee_Name VARCHAR(50),
    Department_ID VARCHAR(20),
    Phone VARCHAR(15),
    Employee_Since DATE,
    Address VARCHAR(100),
    Supervisor_ID VARCHAR(20),
    FOREIGN KEY (Supervisor_ID) REFERENCES Employees(Employee_ID)
);

CREATE TABLE Platforms (
    Platform_ID VARCHAR(10) PRIMARY KEY,
    Platform_Name VARCHAR(100) NOT NULL,
    URL VARCHAR(100),
    Contact_Person VARCHAR(50),
    Contact_Phone VARCHAR(30),
    Contact_Email VARCHAR(100)
);

CREATE TABLE Campaigns_Platforms (
    Campaign_ID VARCHAR(100),
    Platform_ID VARCHAR(10),
    PRIMARY KEY (Campaign_ID, Platform_ID),
    FOREIGN KEY (Campaign_ID) REFERENCES Campaigns(Campaign_ID),
    FOREIGN KEY (Platform_ID) REFERENCES Platforms(Platform_ID)
);

CREATE TABLE Influencers (
    Influencer_ID VARCHAR(10) PRIMARY KEY,
    Influencer_Name VARCHAR(50) NOT NULL,
    Social_Handle VARCHAR(100),
    Follower_Count INT,
    Email VARCHAR(50)
);

CREATE TABLE Influencer_Campaigns (
    Influencer_ID VARCHAR(10),
    Campaign_ID VARCHAR(10),
    PRIMARY KEY (Influencer_ID, Campaign_ID),
    FOREIGN KEY (Influencer_ID) REFERENCES Influencers(Influencer_ID),
    FOREIGN KEY (Campaign_ID) REFERENCES Campaigns(Campaign_ID)
);

CREATE TABLE Contents (
    Content_ID VARCHAR(50) PRIMARY KEY,
    Title VARCHAR(50),
    Description VARCHAR(50),
    Media_Type VARCHAR(50),
    Creation_Date DATETIME,
    Campaign_ID VARCHAR(10),
    FOREIGN KEY (Campaign_ID) REFERENCES Campaigns(Campaign_ID)
);

CREATE TABLE Payments (
    Payment_ID VARCHAR(50) PRIMARY KEY,
    Date DATETIME NOT NULL,
    Amount FLOAT NOT NULL,
    Payment_Type VARCHAR(50),
    Payment_Details VARCHAR(100),
    Campaign_ID VARCHAR(10),
    FOREIGN KEY (Campaign_ID) REFERENCES Campaigns(Campaign_ID)
);

CREATE TABLE Advertisements (
    Ad_ID VARCHAR(20) PRIMARY KEY,
    Ad_Name VARCHAR(50) NOT NULL,
    Type VARCHAR(50),
    Duration INTEGER,
    Budget FLOAT,
    Campaign_ID VARCHAR(10),
    Platform_ID VARCHAR(10),
    FOREIGN KEY (Campaign_ID) REFERENCES Campaigns(Campaign_ID),
    FOREIGN KEY (Platform_ID) REFERENCES Platforms(Platform_ID)
);



INSERT INTO Clients (Client_ID, Client_Name, Contact_Details, Contact_Start_Date, Contact_End_Date)
VALUES
('C001', 'Lopez Plc', 'zmcintyre@bauer.info, 0806 Watson Drive Suite 662, Port Andrea, DE 42578-2286, 3724028579.0', '12.18.2023', '10.01.2024'),
('C002', 'Weaver, Garner And Ramos', 'oscott@gmail.com, 2933 Ortiz Overpass Suite 099, South Douglasburgh, KY 52632-7557, 4989787718501.0', '12.10.2023', '09.11.2023'),
('C003', 'Salinas-Chavez', 'richard84@hotmail.com, 53637 Bonnie Walk Suite 961, South Adrianaport, IA 49560, 2545622603.0', '05.18.2023', '04.06.2023'),
('C004', 'Russell, Wilson And Rogers', 'michael78@yahoo.com, 27907 Deborah Hill Suite 235, Abigailbury, CO 58408, 9952136315.0', '02.23.2023', '09.03.2023'),
('C005', 'White Ltd', 'jeremy56@gmail.com, 172 Angela Crescent Apt. 306, North Laura, HI 69094-7497, 3201853187395.0', '11.20.2023', '11.12.2023'),
('C006', 'Patterson And Sons', 'nataliemartinez@hotmail.com, 0171 Patricia Street Suite 265, Frankmouth, MS 50700-0717, 2281662016.0', '09.19.2023', '05.10.2023'),
('C007', 'Salinas-Chavez', 'richard84@hotmail.com, 53637 Bonnie Walk Suite 961, South Adrianaport, IA 49560, 2545622603.0', '06.19.2023', '09.07.2023'),
('C008', 'Weaver-Hoover', 'jacqueline32@dominguez.biz, 050 Andrews Green, North Renee, VT 22014-1131, 5741894981166.0', '08.07.2023', '07.20.2023'),
('C009', 'White Ltd', 'jeremy56@gmail.com, 172 Angela Crescent Apt. 306, North Laura, HI 69094-7497, 3201853187395.0', '04.24.2023', '05.17.2023'),
('C010', 'Ross Group', 'kristopher99@romero.org, 2397 Allison Knolls Suite 213, Jacksonside, WV 58803-3895, 184424524870945.0', '05.06.2023', '07.06.2023');


INSERT INTO Employees (Employee_ID, Employee_Name, Department_ID, Phone, Employee_Since, Address, Supervisor_ID)
VALUES
('EMP001', 'Lauren Riggs', 'D001', '1234567890', '01.01.2023', 'Sample Address', NULL),
('EMP002', 'Brandon Townsend Jr.', 'D001', '1234567890', '01.01.2023', 'Sample Address', NULL),
('EMP003', 'Thomas Ryan', 'D001', '1234567890', '01.01.2023', 'Sample Address', NULL),
('EMP004', 'Jesus Rivera', 'D001', '1234567890', '01.01.2023', 'Sample Address', NULL),
('EMP005', 'Wesley Simon', 'D001', '1234567890', '01.01.2023', 'Sample Address', NULL),
('EMP006', 'Becky Brown', 'D001', '1234567890', '01.01.2023', 'Sample Address', NULL),
('EMP007', 'Michael Camacho', 'D001', '1234567890', '01.01.2023', 'Sample Address', NULL),
('EMP008', 'Melissa Haynes', 'D001', '1234567890', '01.01.2023', 'Sample Address', NULL),
('EMP009', 'Aaron Faulkner', 'D001', '1234567890', '01.01.2023', 'Sample Address', NULL),
('EMP010', 'Kyle Serrano', 'D001', '1234567890', '01.01.2023', 'Sample Address', NULL);


INSERT INTO Campaigns (Campaign_ID, Start_Date, End_Date, Budget, Clicks, Impressions, Engagement_Rate, Conversion_Rate, Audience, Conversions, Executive_Emp_ID, Client_ID)
VALUES
('CMP001', '12.18.2023', '01.10.2024', 13961.03, 1056, 23458, 4.5, 66.48, '18-40 Adults', 702, 'EMP001', 'C001'),
('CMP002', '10.12.2023', '11.09.2023', 43804.31, 1360, 92422, 1.47, 13.38, 'Female 60+', 182, 'EMP002', 'C002'),
('CMP008', '07.08.2023', '07.20.2023', 7863.2, 1858, 63951, 2.91, 42.95, 'Adults 40-60', 798, 'EMP002', 'C008'),
('CMP010', '06.05.2023', '06.07.2023', 26039.88, 905, 49877, 1.81, 103.54, 'Male 60+', 937, 'EMP002', 'C010'),
('CMP003', '05.18.2023', '06.04.2023', 36007.47, 1655, 45934, 3.6, 40.42, 'Male 40-60', 669, 'EMP003', 'C003'),
('CMP003', '05.18.2023', '06.04.2023', 36007.47, 1655, 45934, 3.6, 40.42, 'Male 40-60', 669, 'EMP003', 'C007'),
('CMP007', '06.19.2023', '07.09.2023', 4274.45, 97, 51437, 0.19, 513.4, 'Seniors 60+', 498, 'EMP003', 'C003'),
('CMP007', '06.19.2023', '07.09.2023', 4274.45, 97, 51437, 0.19, 513.4, 'Seniors 60+', 498, 'EMP003', 'C007'),
('CMP004', '02.23.2023', '03.09.2023', 37425.85, 2669, 30391, 8.78, 9.1, 'Female 18-40', 243, 'EMP003', 'C004'),
('CMP005', '11.20.2023', '12.11.2023', 48590.34, 4242, 52042, 8.15, 17.75, 'Male 60+', 753, 'EMP004', 'C005'),
('CMP005', '11.20.2023', '12.11.2023', 48590.34, 4242, 52042, 8.15, 17.75, 'Male 60+', 753, 'EMP004', 'C009'),
('CMP009', '04.24.2023', '05.17.2023', 14404.95, 4208, 24495, 17.18, 12.52, '18-40 Adults', 527, 'EMP004', 'C005'),
('CMP009', '04.24.2023', '05.17.2023', 14404.95, 4208, 24495, 17.18, 12.52, '18-40 Adults', 527, 'EMP004', 'C009'),
('CMP006', '09.19.2023', '10.05.2023', 26693.82, 1499, 40365, 3.71, 63.04, 'Male 60+', 945, 'EMP004', 'C006');

--Avg_Cost_Per_Click
SELECT 
    ROUND(AVG(Budget / Clicks), 2) AS Avg_Cost_Per_Click
FROM 
    Campaigns
WHERE
    Clicks > 0;
    
 --Avg_Cost_Per_Conversion   
    SELECT 
    ROUND(AVG(Budget / Conversions), 2) AS Avg_Cost_Per_Conversion
FROM 
    Campaigns
WHERE
    Conversions > 0;
    
    
    
    
    SELECT 
    Audience,
    COUNT(*) AS Total_Campaigns,
    SUM(Clicks) AS Total_Clicks,
    SUM(Conversions) AS Total_Conversions,
    ROUND(AVG(Engagement_Rate), 2) AS Avg_Engagement_Rate,
    ROUND(AVG(Conversion_Rate), 2) AS Avg_Conversion_Rate
FROM 
    Campaigns
GROUP BY 
    Audience;
