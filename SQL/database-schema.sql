-- Create a new user and grant privileges
CREATE USER AnujSapkota IDENTIFIED BY 23049194;
GRANT CONNECT, RESOURCE TO AnujSapkota;
CONNECT AnujSapkota/23049194;

-- Create TABLE: Teacher
CREATE TABLE Teacher (
   Teacher_ID INT PRIMARY KEY,
   First_Name VARCHAR2(20) NOT NULL,
   Last_Name VARCHAR2(20) NOT NULL,
   Specialization VARCHAR2(50) NOT NULL,
   Contact_Number VARCHAR2(15),
   Join_Date DATE NOT NULL
);

-- Create TABLE: Module
CREATE TABLE Module (
   Module_ID INT PRIMARY KEY,
   Module_Name VARCHAR2(30),
   Duration_Months INT,
   Credits INT,
   Teacher_ID INT,
   CONSTRAINT FK_TeacherID FOREIGN KEY (Teacher_ID) REFERENCES Teacher (Teacher_ID)
);

-- Create TABLE: PROGRAM
CREATE TABLE PROGRAM (
   Program_ID INT PRIMARY KEY,
   Program_Name VARCHAR2(50),
   Program_Duration_Years DECIMAL(2,1) NOT NULL,
   Program_Fees DECIMAL(9,1) NOT NULL,
   Total_Credits INT NOT NULL
);

-- Create TABLE: RESOURCES
CREATE TABLE RESOURCES (
   Resource_ID INT PRIMARY KEY,
   Resource_Name VARCHAR2(50),
   Format VARCHAR2(50),
   Duration_Weeks INT
);

-- Create TABLE: Assessment
CREATE TABLE Assessment (
   Assessment_ID INT PRIMARY KEY,
   Title VARCHAR2(50) NOT NULL,
   Deadline DATE NOT NULL,
   Weightage_Percentage DECIMAL(5,2) NOT NULL CHECK (Weightage_Percentage >= 0 AND Weightage_Percentage <= 100),
   Full_Marks INT NOT NULL CHECK (Full_Marks > 0 AND Full_Marks <= 100)
);

-- Create TABLE: Student
CREATE TABLE Student (
   Student_ID INT PRIMARY KEY,
   First_Name VARCHAR2(20) NOT NULL,
   Last_Name VARCHAR2(20) NOT NULL,
   Email VARCHAR2(50) UNIQUE,
   Phone VARCHAR2(15),
   Address VARCHAR2(25),
   Enroll_Date DATE NOT NULL,
   Program_ID INT,
   CONSTRAINT FK_ProgramID FOREIGN KEY (Program_ID) REFERENCES PROGRAM (Program_ID)
);

-- Create TABLE: Announcement
CREATE TABLE Announcement (
   Announcement_ID INT PRIMARY KEY,
   Announcement_Title VARCHAR2(100) NOT NULL,
   BODY VARCHAR2(250),
   Date_Posted DATE NOT NULL,
   Expiry_Date DATE NOT NULL
);

-- Create TABLE: ASSESSMENT_RESULT
CREATE TABLE ASSESSMENT_RESULT (
   Assessment_ID INT NOT NULL,
   Result_ID INT NOT NULL,
   Module_ID INT NOT NULL,
   Student_ID INT NOT NULL,
   Marks_Obtained INT CHECK (Marks_Obtained >= 0 AND Marks_Obtained <= 100),
   Feedback VARCHAR2(50),
   Grade CHAR(1) CHECK (Grade IN ('A', 'B', 'C', 'D', 'F')),
   Percentage DECIMAL(5,2) CHECK (Percentage >= 0 AND Percentage <= 100),
   PRIMARY KEY (Assessment_ID, Result_ID, Module_ID, Student_ID),
   FOREIGN KEY (Assessment_ID) REFERENCES Assessment(Assessment_ID),
   FOREIGN KEY (Module_ID) REFERENCES Module (Module_ID),
   FOREIGN KEY (Student_ID) REFERENCES Student (Student_ID)
);

-- Create TABLE: MODULE_ASSESSMENT
CREATE TABLE MODULE_ASSESSMENT (
   Module_ID INT NOT NULL,
   Assessment_ID INT NOT NULL,
   Student_ID INT NOT NULL,
   PRIMARY KEY (Module_ID, Assessment_ID, Student_ID),
   FOREIGN KEY (Module_ID) REFERENCES Module (Module_ID),
   FOREIGN KEY (Assessment_ID) REFERENCES Assessment (Assessment_ID),
   FOREIGN KEY (Student_ID) REFERENCES Student (Student_ID)
);

-- Create TABLE: MODULE_ANNOUNCEMENT
CREATE TABLE MODULE_ANNOUNCEMENT (
   Student_ID INT NOT NULL,
   Module_ID INT NOT NULL,
   Announcement_ID INT NOT NULL,
   PRIMARY KEY (Student_ID, Module_ID, Announcement_ID),
   FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
   FOREIGN KEY (Module_ID) REFERENCES Module(Module_ID),
   FOREIGN KEY (Announcement_ID) REFERENCES Announcement(Announcement_ID)
);

-- Create TABLE: STUDENT_MODULE
CREATE TABLE STUDENT_MODULE (
   Student_ID INT NOT NULL,
   Module_ID INT NOT NULL,
   PRIMARY KEY (Student_ID, Module_ID),
   FOREIGN KEY (Student_ID) REFERENCES Student (Student_ID),
   FOREIGN KEY (Module_ID) REFERENCES Module (Module_ID)
);

-- Create TABLE: MODULE_RESOURCE
CREATE TABLE MODULE_RESOURCE (
   Module_ID INT NOT NULL,
   Resource_ID INT NOT NULL,
   Student_ID INT NOT NULL,
   Status VARCHAR2(9) NOT NULL CHECK (Status IN ('Completed', 'Pending')),
   PRIMARY KEY (Module_ID, Resource_ID, Student_ID),
   FOREIGN KEY (Module_ID) REFERENCES Module (Module_ID),
   FOREIGN KEY (Resource_ID) REFERENCES RESOURCES (Resource_ID),
   FOREIGN KEY (Student_ID) REFERENCES Student (Student_ID)
);
