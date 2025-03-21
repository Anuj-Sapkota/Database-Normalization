-- Insert sample data into Program
INSERT ALL
    INTO Program VALUES (1, 'BSc in Computing', 3, 800000, 120)
    INTO Program VALUES (2, 'BSc in Networking', 4, 630500, 120)
    INTO Program VALUES (3, 'BSc in Multimedia', 3, 800000, 120)
    INTO Program VALUES (4, 'BSc in Data Science', 3, 700000, 120)
    INTO Program VALUES (5, 'BSc in Business Administration', 3.5, 800000, 120)
    INTO Program VALUES (6, 'BSc in Computer Application', 4, 600000, 120)
    INTO Program VALUES (7, 'BSc in Information Technology', 4, 700000, 120)
SELECT * FROM DUAL;

-- Insert sample data into Student
INSERT ALL
    INTO Student VALUES (1, 'Anish', 'Rai', 'anish.rai@example.com', '9824124214', 'Belbari-4, Morang', TO_DATE('2022-08-01', 'YYYY-MM-DD'), 1)
    INTO Student VALUES (2, 'Suman', 'Raut', 'suman.raut@example.com', '9853836283', 'Birtamode-2, Jhapa', TO_DATE('2022-08-05', 'YYYY-MM-DD'), 1)
    INTO Student VALUES (3, 'Manisha', 'Rasaili', 'manisha.rasaili@example.com', '9895554444', 'Biratnagar-3, Morang', TO_DATE('2022-08-10', 'YYYY-MM-DD'), 1)
    INTO Student VALUES (4, 'Ashish', 'Shrestha', 'ashish.shrestha@example.com', '9811122334', 'Damak-5, Jhapa', TO_DATE('2023-01-03', 'YYYY-MM-DD'), 2)
    INTO Student VALUES (5, 'Rabina', 'Uram', 'rabina.uram@example.com', '9899988776', 'Urlabari-6, Morang', TO_DATE('2023-01-07', 'YYYY-MM-DD'), 2)
    INTO Student VALUES (6, 'Nirajan', 'Subba', 'nirajan.subba@example.com', '9812131415', 'Budhabare-1, Jhapa', TO_DATE('2023-01-12', 'YYYY-MM-DD'), 2)
    INTO Student VALUES (7, 'Ramesh', 'Tamang', 'ramesh.tamang@example.com', '9814151617', 'Itahari-9, Morang', TO_DATE('2022-06-15', 'YYYY-MM-DD'), 3)
    INTO Student VALUES (8, 'Sarita', 'Bhattarai', 'sarita.bhattarai@example.com', '9802030405', 'Bhadrapur-10, Jhapa', TO_DATE('2022-06-18', 'YYYY-MM-DD'), 3)
    INTO Student VALUES (9, 'Bikash', 'Khatiwoda', 'bikash.khatiwoda@example.com', '9856942918', 'Koshi Haraicha-2, Morang', TO_DATE('2022-06-22', 'YYYY-MM-DD'), 3)
    INTO Student VALUES (10, 'Puja', 'Limbu', 'puja.limbu@example.com', '9823567383', 'Pathari-8, Morang', TO_DATE('2022-03-02', 'YYYY-MM-DD'), 4)
    INTO Student VALUES (11, 'Samikshya', 'Niroula', 'samikshya.niroula@example.com', '9823242173', 'Kanepokhari-7, Morang', TO_DATE('2022-03-05', 'YYYY-MM-DD'), 4)
    INTO Student VALUES (12, 'Pramila', 'Tamang', 'pramila.tamang@example.com', '9803336669', 'Shivasatakshi-3, Jhapa', TO_DATE('2022-03-10', 'YYYY-MM-DD'), 4)
SELECT * FROM DUAL;

-- Insert sample data into Teacher
INSERT ALL
    INTO Teacher VALUES (1011, 'Ramesh', 'limbu', 'Database', '9823432343', TO_DATE('2020-01-15', 'YYYY-MM-DD'))
    INTO Teacher VALUES (1012, 'Sita', 'Khatiwoda', 'Data Structures', '9862723632', TO_DATE('2021-02-10', 'YYYY-MM-DD'))
    INTO Teacher VALUES (1013, 'Raj', 'Singh', 'Web Development', '9824324255', TO_DATE('2021-05-20', 'YYYY-MM-DD'))
    INTO Teacher VALUES (1014, 'Soonam', 'Rai', 'Artificial Intelligence', '9852668273', TO_DATE('2020-11-03', 'YYYY-MM-DD'))
    INTO Teacher VALUES (1015, 'Mahendra', 'Kumar', 'Programming', '9856257157', TO_DATE('2022-07-01', 'YYYY-MM-DD'))
    INTO Teacher VALUES (1016, 'Deepa', 'Sapkota', 'Digital Media Design', '9867262651', TO_DATE('2022-03-10', 'YYYY-MM-DD'))
    INTO Teacher VALUES (1017, 'Dev', 'Pandey', 'Professional Ethics', '9865326782', TO_DATE('2021-09-15', 'YYYY-MM-DD'))
SELECT * FROM DUAL;

-- Insert sample data into Module
INSERT ALL
    INTO Module VALUES (101, 'Database', 3, 20, 1011)
    INTO Module VALUES (102, 'Data Structures', 4, 20, 1012)
    INTO Module VALUES (103, 'Web Development', 4, 20, 1013)
    INTO Module VALUES (104, 'Artificial Intelligence', 3, 20, 1014)
    INTO Module VALUES (105, 'Programming', 4, 20, 1015)
    INTO Module VALUES (106, 'Digital Media Design', 3, 20, 1016)
    INTO Module VALUES (107, 'Professional Ethics', 3, 20, 1017)
    INTO Module VALUES (108, 'Machine Learning', 3, 20, 1011)
    INTO Module VALUES (109, 'Business', 3, 20, 1012)
SELECT * FROM DUAL;

-- Insert sample data into Student_Module
INSERT ALL
    INTO Student_Module VALUES (1, 101)
    INTO Student_Module VALUES (1, 102)
    INTO Student_Module VALUES (1, 103)
    INTO Student_Module VALUES (1, 105)
    INTO Student_Module VALUES (2, 101)
    INTO Student_Module VALUES (2, 102)
    INTO Student_Module VALUES (2, 103)
    INTO Student_Module VALUES (2, 105)
    INTO Student_Module VALUES (3, 101)
    INTO Student_Module VALUES (3, 102)
    INTO Student_Module VALUES (3, 103)
    INTO Student_Module VALUES (3, 105)
    INTO Student_Module VALUES (7, 106)
    INTO Student_Module VALUES (7, 107)
    INTO Student_Module VALUES (8, 106)
    INTO Student_Module VALUES (8, 107)
    INTO Student_Module VALUES (9, 106)
    INTO Student_Module VALUES (9, 107)
    INTO Student_Module VALUES (4, 101)
    INTO Student_Module VALUES (4, 104)
SELECT * FROM DUAL;

-- Insert sample data into Resources
INSERT ALL
    INTO RESOURCES VALUES (10011, 'Database Design Principles', 'Book', 6)
    INTO RESOURCES VALUES (10012, 'SQL Basics', 'Video', 4)
    INTO RESOURCES VALUES (10013, 'Data Structures and Algorithms', 'Book', 8)
    INTO RESOURCES VALUES (10014, 'Linked Lists Explained', 'Video', 3)
    INTO RESOURCES VALUES (10015, 'Front-End Basics', 'Website', 5)
    INTO RESOURCES VALUES (10016, 'Building Web Applications', 'Book', 7)
    INTO RESOURCES VALUES (10017, 'AI and ML Introduction', 'Video', 4)
    INTO RESOURCES VALUES (10018, 'Deep Learning Foundations', 'Book', 10)
    INTO RESOURCES VALUES (10019, 'Programming with Python', 'Website', 6)
    INTO RESOURCES VALUES (100110, 'Java Basics', 'Video', 5)
    INTO RESOURCES VALUES (100111, 'Multimedia Design Tools', 'Website', 4)
    INTO RESOURCES VALUES (100112, 'Digital Design Handbook', 'Book', 7)
    INTO RESOURCES VALUES (100113, 'Professional Ethics in IT', 'Website', 3)
SELECT * FROM DUAL;

-- Insert sample data into Module_Resource
INSERT ALL
    INTO Module_Resource VALUES (101, 10011, 1, 'Completed')
    INTO Module_Resource VALUES (101, 10012, 2, 'Pending')
    INTO Module_Resource VALUES (102, 10013, 3, 'Completed')
    INTO Module_Resource VALUES (103, 10014, 4, 'Pending')
    INTO Module_Resource VALUES (104, 10015, 5, 'Completed')
    INTO Module_Resource VALUES (105, 10016, 6, 'Pending')
    INTO Module_Resource VALUES (106, 10017, 7, 'Completed')
    INTO Module_Resource VALUES (107, 10018, 8, 'Pending')
    INTO Module_Resource VALUES (101, 10019, 9, 'Completed')
    INTO Module_Resource VALUES (102, 100110, 10, 'Pending')
    INTO Module_Resource VALUES (103, 100111, 11, 'Completed')
    INTO Module_Resource VALUES (104, 100112, 12, 'Pending')
    INTO Module_Resource VALUES (105, 100113, 1, 'Completed')
    INTO Module_Resource VALUES (106, 10011, 2, 'Pending')
    INTO Module_Resource VALUES (107, 10012, 3, 'Completed')
    INTO Module_Resource VALUES (101, 10013, 4, 'Pending')
    INTO Module_Resource VALUES (102, 10014, 5, 'Completed')
    INTO Module_Resource VALUES (103, 10015, 6, 'Pending')
    INTO Module_Resource VALUES (104, 10016, 7, 'Completed')
    INTO Module_Resource VALUES (105, 10017, 8, 'Pending')
    INTO Module_Resource VALUES (106, 10018, 9, 'Completed')
    INTO Module_Resource VALUES (107, 10019, 10, 'Pending')
    INTO Module_Resource VALUES (101, 100110, 11, 'Completed')
    INTO Module_Resource VALUES (102, 100111, 12, 'Pending')
SELECT * FROM DUAL;

-- Insert sample data into Announcement
INSERT ALL
    INTO Announcement VALUES (2001, 'Database Exam Announcement', 'The Database module exam will be held on 10th May 2024. Please prepare accordingly.', TO_DATE('2024-04-25', 'YYYY-MM-DD'), TO_DATE('2024-05-15', 'YYYY-MM-DD'))
    INTO Announcement VALUES (2002, 'Data Structures Assignment Submission', 'Reminder: All students must submit their assignments for the Data Structures module by 5th May 2024.', TO_DATE('2024-04-30', 'YYYY-MM-DD'), TO_DATE('2024-05-06', 'YYYY-MM-DD'))
    INTO Announcement VALUES (2003, 'Web Development Workshop', 'Join the workshop on Web Development scheduled for 12th May 2024. Register now.', TO_DATE('2024-05-01', 'YYYY-MM-DD'), TO_DATE('2024-05-12', 'YYYY-MM-DD'))
    INTO Announcement VALUES (2004, 'AI Module Update', 'Artificial Intelligence module has a new update. Please check the course material for more information.', TO_DATE('2024-05-05', 'YYYY-MM-DD'), TO_DATE('2024-05-10', 'YYYY-MM-DD'))
    INTO Announcement VALUES (2005, 'Programming Exam Announcement', 'The Programming module final exam will take place on 15th May 2024. Study the course materials thoroughly.', TO_DATE('2024-05-03', 'YYYY-MM-DD'), TO_DATE('2024-05-17', 'YYYY-MM-DD'))
    INTO Announcement VALUES (2006, 'Digital Media Design Submission Reminder', 'Reminder for Digital Media Design module: Please complete your project submission by 20th May 2024.', TO_DATE('2024-05-10', 'YYYY-MM-DD'), TO_DATE('2024-05-20', 'YYYY-MM-DD'))
    INTO Announcement VALUES (2007, 'Professional Ethics Seminar', 'Professional Ethics Lecture will be conducted on 18th May 2024. All students are encouraged to attend.', TO_DATE('2024-05-08', 'YYYY-MM-DD'), TO_DATE('2024-05-18', 'YYYY-MM-DD'))
SELECT * FROM DUAL;

-- Insert sample data into Module_Announcement
INSERT ALL
    INTO Module_Announcement VALUES (1, 101, 2001)
    INTO Module_Announcement VALUES (2, 102, 2002)
    INTO Module_Announcement VALUES (3, 103, 2003)
    INTO Module_Announcement VALUES (4, 104, 2004)
    INTO Module_Announcement VALUES (5, 105, 2005)
    INTO Module_Announcement VALUES (6, 106, 2006)
    INTO Module_Announcement VALUES (7, 107, 2007)
SELECT * FROM DUAL;

-- Insert sample data into Assessment
INSERT ALL
    INTO Assessment VALUES (3001, 'Database Design Assignment', TO_DATE('2024-05-20', 'YYYY-MM-DD'), 20, 100)
    INTO Assessment VALUES (3002, 'Data Structures Practical', TO_DATE('2024-05-22', 'YYYY-MM-DD'), 25, 100)
    INTO Assessment VALUES (3003, 'Web Development Project', TO_DATE('2024-05-25', 'YYYY-MM-DD'), 30, 100)
    INTO Assessment VALUES (3004, 'AI Algorithm Assignment', TO_DATE('2024-05-28', 'YYYY-MM-DD'), 15, 100)
    INTO Assessment VALUES (3005, 'Programming Exam', TO_DATE('2024-06-01', 'YYYY-MM-DD'), 10, 100)
    INTO Assessment VALUES (3006, 'Digital Media Design Submission', TO_DATE('2024-06-03', 'YYYY-MM-DD'), 20, 100)
    INTO Assessment VALUES (3007, 'Ethics in Computing Quiz', TO_DATE('2024-06-05', 'YYYY-MM-DD'), 10, 50)
    INTO Assessment VALUES (3008, 'Project Proposal (Web Dev)', TO_DATE('2024-06-07', 'YYYY-MM-DD'), 15, 100)
    INTO Assessment VALUES (3009, 'Machine Learning Assignment', TO_DATE('2024-06-10', 'YYYY-MM-DD'), 20, 100)
    INTO Assessment VALUES (30010, 'Database Query Assignment', TO_DATE('2024-06-12', 'YYYY-MM-DD'), 15, 50)
SELECT * FROM DUAL;

-- Insert sample data into Assessment_Result
INSERT ALL
    INTO Assessment_Result VALUES (3001, 4001, 101, 1, 76, 'Excellent', 'A', 76)
    INTO Assessment_Result VALUES (3002, 4002, 102, 2, 45, 'Satisfactory', 'D', 45)
    INTO Assessment_Result VALUES (3003, 4003, 103, 3, 70, 'Good', 'A', 70)
    INTO Assessment_Result VALUES (3004, 4004, 104, 4, 80, 'Excellent', 'A', 80)
    INTO Assessment_Result VALUES (3005, 4005, 105, 5, 50, 'Average', 'C', 50)
    INTO Assessment_Result VALUES (3006, 4006, 106, 6, 60, 'Good', 'B', 60)
    INTO Assessment_Result VALUES (3007, 4007, 107, 7, 45, 'Outstanding', 'A', 90)
    INTO Assessment_Result VALUES (3008, 4008, 101, 8, 40, 'Passed', 'D', 40)
    INTO Assessment_Result VALUES (3009, 4009, 102, 9, 25, 'Fail', 'F', 25)
    INTO Assessment_Result VALUES (30010, 40010, 103, 10, 40, 'Outstanding', 'A', 80)
    INTO Assessment_Result VALUES (3001, 40011, 104, 11, 0, 'No submission', 'F', 0)
    INTO Assessment_Result VALUES (3002, 40012, 105, 12, 0, 'No submission', 'F', 0)
SELECT * FROM DUAL;

-- Insert sample data into Module_Assessment
INSERT ALL
    INTO Module_Assessment VALUES (101, 3001, 1)
    INTO Module_Assessment VALUES (102, 3002, 2)
    INTO Module_Assessment VALUES (103, 3003, 3)
    INTO Module_Assessment VALUES (104, 3004, 4)
    INTO Module_Assessment VALUES (105, 3005, 5)
    INTO Module_Assessment VALUES (106, 3006, 6)
    INTO Module_Assessment VALUES (107, 3007, 7)
    INTO Module_Assessment VALUES (101, 3008, 8)
    INTO Module_Assessment VALUES (102, 3009, 9)
    INTO Module_Assessment VALUES (103, 30010, 10)
    INTO Module_Assessment VALUES (104, 3001, 11)
    INTO Module_Assessment VALUES (105, 3002, 12)
SELECT * FROM DUAL;
