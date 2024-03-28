-- table1
create database Attendance;
use Attendance;
desc Students;

create table Students(Student_id numeric primary key,
Id_num numeric(10) , First_name varchar(40),
Last_name varchar(20),Middlename varchar(10),Gender varchar(6), Department_id numeric(3) ,
Year_level numeric, Contact_num numeric unique key, Email_address varchar(20),Pass_word text);

ALTER TABLE Students
MODIFY First_name varchar(40) NOT NULL;
ALTER TABLE Students
MODIFY Id_num numeric(10) unique key;

INSERT INTO Students (Student_id, Id_num, First_name, Last_name, Middlename, Gender,Department_id,  Year_level, Contact_num, 
Email_address, Pass_word) 
VALUES
(1, 1234567890, 'John', 'Doe', 'M', 'Male',101,  3, 1234567890, 'john.doe@gmail.com', 'password123'),
(2, 0987654321, 'Jane', 'Smith', 'A', 'Female',102, 2, 9876543210, 'jane.sh@gmail.com', 'qwerty123'),
(3, 1357924680, 'Michael', 'Johnson', 'J', 'Male',103, 4, 2468013579, 'michael.j@gmail.com', 'pass1234'),
(4, 2468013579, 'Emily', 'Williams', 'L', 'Female',104,1, 3692581470, 'emily.w@gmail.com', 'abc123'),
(5, 3692581470, 'David', 'Brown', 'K', 'Male',105, 3, 9876543210, 'david.b@gmail.com', 'password567'),
(6, 9876543210, 'Sarah', 'Davis', 'E', 'Female',106,  2, 1234567890, 'sarah.d@gmail.com', 'hello123'),
(7, 5555555555, 'James', 'Wilson', 'P', 'Male',107,  4, 9876543210, 'james.w@gmail.com', 'test123'),
(8, 6666666666, 'Jessica', 'Martinez', 'R', 'Female',108,  1, 1234567890, 'jessica.mz@gmail.com', 'pass456'),
(9, 7777777777, 'Christopher', 'Taylor', 'S', 'Male',109,  3, 9876543210, 'chris.t@gmail.com', 'welcome123'),
(10, 8888888888, 'Amanda', 'Anderson', 'T', 'Female',110,  2, 1234567890, 'amanda.an@gmail.com', 'p@ssw0rd'),
(11, 9999999999, 'Rachel', 'Hernandez', 'U', 'Female',111,  4, 9876543210, 'rachel.h@gmail.com', 'secure123'),
(12, 1010101010, 'Matthew', 'Garcia', 'V', 'Male',112,  1, 1234567890, 'matthew.g@gmail.com', '12345678'),
(13, 1212121212, 'Lauren', 'Lopez', 'W', 'Female', 113, 3, 9876543210, 'lauren.l@gmail.com', 'passwordabc'),
(14, 1313131313, 'Daniel', 'Young', 'X', 'Male',114,  2, 1234567890, 'daniel.y@gmail.com', 'passpass'),
(15, 1414141414, 'Olivia', 'Lee', 'Y', 'Female',115,  4, 9876543210, 'olivia.lee@gmail.com', 'testtest');

alter table Students add foreign key(Department_id) references Department(Department_id);

-- table2
use Attendance;
 alter table Faculty add foreign key(Department_id) references Department(Department_id);
 select * from Faculty;

 create table Faculty(Faculty_id numeric primary key,
Id_num numeric(10) , First_name varchar(40),
Last_name varchar(20),Middlename varchar(10),Gender varchar(6), Department_id numeric(4) ,
 Contact_no numeric unique key, Email_address varchar(20),
 Pass_word text );
 
 ALTER TABLE Students
MODIFY First_name varchar(40) NOT NULL;

ALTER TABLE Faculty
MODIFY Id_num numeric(10) unique key;

 INSERT INTO Faculty (Faculty_id, Id_num, First_name, Last_name, Middlename, Gender,Department_id, Contact_no, Email_address, Pass_word)
VALUES
(1, 12345678, 'James', 'Walker', 'A', 'Male',101,  1234567890, 'james@mail.com', 'password1'),
(2, 23456789, 'Velma', 'Clemons', 'B', 'Female',102, 2345678901, 'velma@gmail.com', 'password2'),
(3, 34567890, 'Kibo', 'Underwood', 'C', 'Male',103,  3456789012, 'kibo@gmail.com', 'password3'),
(4, 45678901, 'Louis', 'Mcgee', 'D', 'Male',104,  4567890123, 'louis@gmail.com', 'password4'),
(5, 56789012, 'Phyllis', 'Paul', 'E', 'Female',105,  5678901234, 'phyllis@gmail.com', 'password5'),
(6, 67890123, 'Zenaida', 'Decker', 'F', 'Female',106,  1089012345, 'zenaida@gmail.com', 'password6'),
(7, 78901234, 'Gillian', 'Tillman', 'G', 'Female',107,  7890123456, 'gillian@gmail.com', 'password7'),
(8, 89012345, 'Constance', 'Boone', 'H', 'Female',108,  8901234567, 'constance@gmail.com', 'password8'),
(9, 90123456, 'Giselle', 'Lancaster', 'I', 'Female',109,  9012345678, 'giselle@gmail.com', 'password9'),
(10, 01234567, 'Kirsten', 'Mcdowell', 'J', 'Female',110,  1012345678, 'kirsten@gmail.com', 'password10'),
(11, 12345670, 'Renee', 'Allen', 'K', 'Female',111,  1123456789, 'renee@gmail.com', 'password11'),
(12, 23456701, 'Bevis', 'Vaughan', 'L', 'Male',112,  1234567890, 'bevis@gmail.com', 'password12'),
(13, 34567012, 'Armando', 'Edwards', 'M', 'Male',113,  2345678901, 'armando@gmail.com', 'password13'),
(14, 45670123, 'Aileen', 'Solis', 'N', 'Female',114,  3456789012, 'aileen@gmail.com', 'password14'),
(15, 56701234, 'Cleo', 'Smith', 'O', 'Female',115,  4567890123, 'cleo@email.com', 'password15');
select * from Faculty;

-- table3

create table Department(Department_id numeric(3) primary key,Department_name varchar(25) );

INSERT INTO Department (Department_id, Department_name)
VALUES
(101, 'Computer Science'),
(102, 'Electrical Engineering'),
(103, 'Mechanical Engineering'),
(104, 'Civil Engineering'),
(105, 'Chemical Engineering'),
(106, 'Biomedical Engineering'),
(107, 'Physics'),
(108, 'Chemistry'),
(109, 'Biology'),
(110, 'Mathematics'),
(111, 'Psychology'),
(112, 'Sociology'),
(113, 'Economics'),
(114, 'History'),
(115, 'English');
select * from Department;
alter table Students add foreign key(Department_id) references Department(Department_id);

-- table 4

create table Admin (admin_id numeric(3) primary key , user_name varchar(20), Pass_word numeric(10)not null,
 full_name varchar(20), Contact_num numeric(10) unique key, Email_address varchar(30));
 
insert into Admin values
(001, 'admin1', 1234567890, 'Adam Johnson', 1234567890, 'adam.johnson@example.com'),
(002, 'admin2', 9876543210, 'Olivia Smith', 9876543210, 'olivia.smith@example.com'),
(003, 'admin3', 2468101214, 'Ethan Williams', 5551234567, 'ethan.williams@example.com'),
(004, 'admin4', 1357924680, 'Sophia Brown', 7779876543, 'sophia.brown@example.com'),
(005, 'admin5', 9876543210, 'Liam Davis', 8884567890, 'liam.davis@example.com'),
(006, 'admin6', 1234567890, 'Ava Martinez', 3337894561, 'ava.martinez@example.com'),
(007, 'admin7', 9876543210, 'Noah Wilson', 2226549870, 'noah.wilson@example.com'),
(008, 'admin8', 1234567890, 'Isabella Taylor', 1117896543, 'isabella.taylor@example.com'),
(009, 'admin9', 2468101214, 'Lucas Anderson', 9991234567, 'lucas.anderson@example.com'),
(010, 'admin10', 1357924680, 'Mia Rodriguez', 6669876543, 'mia.rodriguez@example.com'),
(011, 'admin11', 1234567890, 'Benjamin Garcia', 4444567890, 'benjamin.garcia@example.com'),
(012, 'admin12', 9876543210, 'Amelia Lopez', 7777894561, 'amelia.lopez@example.com'),
(013, 'admin13', 1234567890, 'James Martinez', 8886549870, 'james.martinez@example.com'),
(014, 'admin14', 2468101214, 'Lily Thompson', 3337896543, 'lily.thompson@example.com'),
(015, 'admin15', 1357924680, 'William Scott', 2221234567, 'william.scott@example.com');
select * from Admin;

-- table 5
create table Events (event_id numeric(3), event_name varchar(10), date date not null, e_desc varchar(20));

  insert into Events values
  (001, 'Event1', '2024-02-19', 'Description1'),
(002, 'Event2', '2024-02-20', 'Description2'),
(003, 'Event3', '2024-02-21', 'Description3'),
(004, 'Event4', '2024-02-22', 'Description4'),
(005, 'Event5', '2024-02-23', 'Description5'),
(006, 'Event6', '2024-02-24', 'Description6'),
(007, 'Event7', '2024-02-25', 'Description7'),
(008, 'Event8', '2024-02-26', 'Description8'),
(009, 'Event9', '2024-02-27', 'Description9'),
(010, 'Event10', '2024-02-28', 'Description10'),
(011, 'Event11', '2024-02-29', 'Description11'),
(012, 'Event12', '2024-03-01', 'Description12'),
(013, 'Event13', '2024-03-02', 'Description13'),
(014, 'Event14', '2024-03-03', 'Description14'),
(015, 'Event15', '2024-03-04', 'Description15');
select * from Events;

-- table 6
create table Classes(Class_id numeric(3) primary key, Faculty_id numeric ,Room_no numeric(3),
Date date,time time,Start_date date,End_date date,Semester numeric,Department_name varchar(25) ,Course_code numeric);

alter table Classes add foreign key(Faculty_id) references Faculty(Faculty_id);
alter table Classes add foreign key(Course_code) references Course(Course_code);


select * from classes;
INSERT INTO Classes (Class_id, Faculty_id, Room_no, Date, Time, Start_date, End_date, Semester, Department_name, Course_code)
VALUES
(1, 1, 101, '2024-02-18', '09:00:00', '2024-02-18', '2024-06-18', 1, 'Computer Science', 101),
(2, 2, 102, '2024-02-19', '10:00:00', '2024-02-19', '2024-06-19', 1, 'Electrical Engineering', 102),
(3, 3, 103, '2024-02-20', '11:00:00', '2024-02-20', '2024-06-20', 1, 'Mechanical Engineering', 103),
(4, 4, 104, '2024-02-21', '12:00:00', '2024-02-21', '2024-06-21', 1, 'Civil Engineering', 104),
(5, 5, 105, '2024-02-22', '13:00:00', '2024-02-22', '2024-06-22', 1, 'Chemical Engineering', 105),
(6, 6, 106, '2024-02-23', '14:00:00', '2024-02-23', '2024-06-23', 1, 'Biomedical Engineering', 106),
(7, 7, 107, '2024-02-24', '15:00:00', '2024-02-24', '2024-06-24', 1, 'Physics', 107),
(8, 8, 108, '2024-02-25', '16:00:00', '2024-02-25', '2024-06-25', 1, 'Chemistry', 108),
(9, 9, 109, '2024-02-26', '17:00:00', '2024-02-26', '2024-06-26', 1, 'Biology', 109),
(10, 10, 110, '2024-02-27', '18:00:00', '2024-02-27', '2024-06-27', 1, 'Mathematics', 110),
(11, 11, 111, '2024-02-28', '19:00:00', '2024-02-28', '2024-06-28', 1, 'Psychology', 111),
(12, 12, 112, '2024-02-29', '20:00:00', '2024-02-29', '2024-06-29', 1, 'Sociology', 112),
(13, 13, 113, '2024-03-01', '21:00:00', '2024-03-01', '2024-07-01', 1, 'Economics', 113),
(14, 14, 114, '2024-03-02', '22:00:00', '2024-03-02', '2024-07-02', 1, 'History', 114),
(15, 15, 115, '2024-03-03', '23:00:00', '2024-03-03', '2024-07-03', 1, 'English', 115);

-- table 7
CREATE TABLE Courses (
    Course_id INT PRIMARY KEY,
    Course_name VARCHAR(100),
    Credits INT,
    Course_code VARCHAR(10),
    Faculty_id numeric ,
   Department_id numeric(3));
   
alter table Courses add foreign key(Department_id) references Department(Department_id);
alter table Courses add foreign key(Faculty_id) references Faculty(Faculty_id);

INSERT INTO Courses (Course_id, Course_name, Credits, Course_code, Faculty_id, Department_id)
VALUES
    (1, 'Introduction to Programming', 3, 'CSCI101',1, 101),
    (2, 'Database Management Systems', 4, 'CSCI201',2, 102),
    (3, 'Computer Networks', 3, 'CSCI301', 3,103),
    (4, 'Software Engineering', 4, 'CSCI401',4, 104),
    (5, 'Data Science Fundamentals', 3, 'DS101', 5,205),
    (6, 'Machine Learning', 4, 'ML201', 6,206),
    (7, 'Web Development', 3, 'WD301', 7,207),
    (8, 'Algorithms and Data Structures', 4, 'CSCI501', 8,208),
    (9, 'Operating Systems', 3, 'CSCI601', 9,209),
    (10, 'Business Analytics', 3, 'BA101',10, 210),
    (11, 'Introduction to Programming', 3, 'CSCI101', 11,211),  -- Repetitive Entry
    (12, 'Network Security', 3, 'NS301',12, 212),
    (13, 'Software Testing', 3, 'ST401', 13,213),
    (14, 'Human-Computer Interaction', 4, 'HCI501',14, 214)
     ,(15, 'Mobile App Development', 3, 'MAD301',15, 215);
-- table 8
create table facial_features(feature_id numeric(7) primary key, Student_id numeric,Faculty_id numeric, face_image varbinary(12) , 
encoding varbinary(25), capture_device varchar(10), data_captures varbinary(25)
,image_format varchar(25), resolution int(10) );

INSERT INTO facial_features (feature_id, Student_id, Faculty_id, face_image, encoding, capture_device, data_captures, image_format,
 resolution)
VALUES
    (1, 1, 1, 0x0123456789A, 0xFEDCBA9876543210FEDCBA9876, 'camera01', 0xABCDEF0123456789ABCDEF0123, 'JPEG', 1920),
    (2, 2, 2, 0x23456789ABC, 0xCBA9876543210FEDCBA9876543, 'camera02', 0x0123456789ABCDEF0123456789, 'PNG', 1280),
    (3, 3, 3, 0x456789ABCDEF, 0xBA9876543210FEDCBA98765432, 'camera03', 0x23456789ABCDEF0123456789AB, 'JPEG', 2560),
    (4, 4, 4, 0x6789ABCDEF01, 0xA9876543210FEDCBA987654321, 'camera01', 0x3456789ABCDEF0123456789ABC, 'PNG', 1920),
    (5, 5, 5, 0x89ABCDEF0123, 0x9876543210FEDCBA9876543210, 'camera02', 0x456789ABCDEF0123456789ABCDE, 'JPEG', 1280),
    (6, 6, 6, 0xABCDEF012345, 0x876543210FEDCBA9876543210F, 'camera03', 0x56789ABCDEF0123456789ABCDEF, 'JPEG', 1920),
    (7, 7, 7, 0xCDEF01234567, 0x76543210FEDCBA9876543210FE, 'camera01', 0x6789ABCDEF0123456789ABCDEF0, 'PNG', 2560),
    (8, 8, 8, 0x0123456789AB, 0x6543210FEDCBA9876543210FED, 'camera02', 0x789ABCDEF0123456789ABCDEF01, 'JPEG', 1280),
    (9, 9, 9, 0x23456789ABCDE, 0x543210FEDCBA9876543210FEDC, 'camera03', 0x89ABCDEF0123456789ABCDEF012, 'JPEG', 1920),
    (10, 10, 10, 0x456789ABCDEF, 0x43210FEDCBA9876543210FEDCB, 'camera01', 0x9ABCDEF0123456789ABCDEF0123, 'PNG', 1920),
    (11, 11, 11, 0x6789ABCDEF01, 0x3210FEDCBA9876543210FEDCBA, 'camera02', 0xABCDEF0123456789ABCDEF01234, 'JPEG', 1280),
    (12, 12, 12, 0x89ABCDEF0123, 0x210FEDCBA9876543210FEDCBA9, 'camera03', 0xBCDEF0123456789ABCDEF012345, 'JPEG', 1920),
    (13, 13, 13, 0xABCDEF012345, 0x10FEDCBA9876543210FEDCBA98, 'camera01', 0xCDEF0123456789ABCDEF0123456, 'PNG', 2560),
    (14, 14, 14, 0xCDEF01234567, 0xFEDCBA9876543210FEDCBA987, 'camera02', 0x0123456789ABCDEF0123456789A, 'JPEG', 1280),
    (15, 15, 15, 0x0123456789AB, 0xEDCBA9876543210FEDCBA98765, 'camera03', 0x123456789ABCDEF0123456789AB, 'JPEG', 1920);
 
alter table facial_features add foreign key(Student_id) references Students(Student_id);
alter table facial_features add foreign key(Faculty_id) references Faculty(Faculty_id);

-- table 9
create table Facial_landmarks(Landmark_ID int(2) primary key, feature_id numeric(7), XCoordinate numeric(10), 
YCoordinate numeric(10), Landmark_Type varchar(25));

alter table facial_landmarks add foreign key(Feature_id) references facial_features(Feature_id);
INSERT INTO Facial_landmarks (Landmark_ID, feature_id, XCoordinate, YCoordinate, Landmark_Type)
VALUES
    (1, 1, 100, 150, 'LeftEye'),
    (2, 2, 200, 150, 'RightEye'),
    (3, 3, 150, 200, 'Nose'),
    (4, 4, 120, 250, 'Mouth'),
    
    (5, 5, 110, 160, 'LeftEye'),
    (6, 6, 190, 160, 'RightEye'),
    (7, 7, 160, 220, 'Nose'),
    (8, 8, 130, 270, 'Mouth'),
    
    (9, 9, 95, 140, 'LeftEye'),
    (10, 10, 210, 140, 'RightEye'),
    (11, 11, 180, 190, 'Nose'),
    (12, 12, 140, 240, 'Mouth'),
    
    (13, 13, 105, 155, 'LeftEye'),
    (14, 14, 195, 155, 'RightEye'),
    (15, 15, 170, 210, 'Nose');
    
    -- table 10
create table attendance_records(face_recognition_confidence varchar(25), attendance_status varchar(25), time_in time,time_out time, 
date date , record_id numeric(3) primary key, Student_id numeric , class_id numeric(3),Faculty_id numeric);

alter table attendance_records add foreign key(Faculty_id) references Faculty(Faculty_id);
alter table attendance_records add foreign key(Student_id) references Students(Student_id);

insert into attendance_records(face_recognition_confidence, attendance_status , time_in ,time_out, 
date , record_id , Student_id , class_id ,Faculty_id)

VALUES 
('High', 'Present', '08:00:00', '13:00:00', '2024-02-18', 1, 1, 1, 1),
('Medium', 'Present', '08:15:00', '12:45:00', '2024-02-19', 2, 2, 2, 2),
('Low', 'Absent', '08:30:00', '00:00:00', '2024-02-20', 3, 3, 3, 3),
('High', 'Present', '08:45:00', '13:15:00', '2024-02-21', 4, 4, 4, 4),
('Medium', 'Present', '09:00:00', '12:30:00', '2024-02-22', 5, 5, 5, 5),
('Low', 'Absent', '09:15:00', '00:00:00', '2024-02-23', 6, 6, 6, 6),
('High', 'Present', '09:30:00', '13:30:00', '2024-02-24', 7, 7, 7, 7),
('Medium', 'Present', '09:45:00', '13:00:00', '2024-02-25', 8, 8, 8, 8),
('Low', 'Absent', '10:00:00', '00:00:00', '2024-02-26', 9, 9, 9, 9),
('High', 'Present', '10:15:00', '13:45:00', '2024-02-27', 10, 10, 10, 10),
('Medium', 'Present', '10:30:00', '13:15:00', '2024-02-28', 11, 11, 11, 11),
('Low', 'Absent', '10:45:00', '00:00:00', '2024-02-29', 12, 12, 12, 12),
('High', 'Present', '11:00:00', '14:00:00', '2024-03-01', 13, 13, 13, 13),
('Medium', 'Present', '11:15:00', '14:15:00', '2024-03-02', 14, 14, 14, 14),
('Low', 'Absent', '11:30:00', '00:00:00', '2024-03-03', 15, 15, 15, 15);

-- QUERIES

SELECT * from Classes
WHERE Faculty_ID = "15";

SELECT faculty_ID, COUNT(*) AS Total_Attendance
FROM Attendance_Records
GROUP BY faculty_ID;

SELECT AVG(resolution) AS Average_resolution
FROM facial_features;



UPDATE Attendance_Records
SET Time_out = '18:00:00'
WHERE record_ID = 1;
select * from attendance_records;


INSERT INTO Students (Student_id, Id_num, First_name, Last_name, Middlename, Gender,Department_id,  Year_level, Contact_num, 
Email_address, Pass_word)
VALUES (16, 1434141414, 'Olie', 'Leo', 'W', 'male',114,  4, 9876567210, 'olie.leo@gmail.com', 'ttest');
select * from students;


DELETE FROM Attendance_Records
WHERE Student_ID = 2;

SELECT MAX(Credits) AS Max_Credits FROM Courses;

SELECT MIN(resolution) AS Min_Resolution FROM facial_features;


SELECT SUM(Credits) AS Total_Credits 
FROM Courses 
WHERE Department_id = (SELECT Department_id FROM Department WHERE Department_name = 'Computer Science');

SELECT d.Department_name, COUNT(f.Faculty_id) AS Total_Faculty 
FROM Department d 
LEFT JOIN Faculty f ON d.Department_id = f.Department_id 
GROUP BY d.Department_name;

SELECT Email_address 
FROM Admin 
WHERE Contact_num LIKE '123%' OR Contact_num LIKE '%7890';

SELECT event_name, date 
FROM Events 
ORDER BY date ASC;


SELECT s.Student_id 
FROM Students s
JOIN Courses c1 ON s.Course_id = c1.Course_id
JOIN Department d1 ON c1.Department_id = d1.Department_id AND d1.Department_name = 'Computer Science'
JOIN Courses c2 ON s.Course_id = c2.Course_id
JOIN Department d2 ON c2.Department_id = d2.Department_id AND d2.Department_name = 'Electrical Engineering';




SELECT d.Department_name, COUNT(DISTINCT c.Course_id) AS Total_Courses 
FROM Department d 
LEFT JOIN Courses c ON d.Department_id = c.Department_id 
GROUP BY d.Department_name;

SELECT Student_id FROM Students WHERE Student_id NOT IN (SELECT DISTINCT Student_id FROM Students);


SELECT CONCAT(First_name, ' ', Last_name) AS Full_Name
FROM Faculty
WHERE Gender = 'Male' AND Department_id = (SELECT Department_id FROM Department WHERE Department_name = 'Computer Science');


SELECT event_name, e_desc
FROM Events
WHERE date BETWEEN '2024-02-20' AND '2024-02-25';

SELECT * from Students
INNER JOIN Attendance_Records ON Students.Student_ID = Attendance_Records.Student_ID
WHERE Attendance_Records.Class_ID = "10";


-- NORMALIZATION
CREATE TABLE Courses (
    Course_id INT PRIMARY KEY,
    Course_name VARCHAR(100),
    Credits INT,
    Course_code VARCHAR(20),
    Faculty_name VARCHAR(100),
    Department_name VARCHAR(100)
);
Select * from courses;
INSERT INTO Courses (Course_id, Course_name, Credits, Course_code, Faculty_name, Department_name)
VALUES
    (1, 'Introduction to Programming', 3, 'CSCI101', 'Dr. Smith', 'Computer Science'),
    (2, 'Database Management Systems', 4, 'CSCI201', 'Dr. Johnson', 'Computer Science'),
    (3, 'Computer Networks', 3, 'CSCI301', 'Dr. Lee', 'Computer Science');
 -- 1NF   
SELECT course_id, course_name,credits,Course_code, Faculty_name
FROM Courses;


 -- 2NF 
SELECT Course_id, Course_name, Credits, Course_code, Faculty_name
FROM Courses;

SELECT Faculty_name, Department_name
FROM Courses;

 -- 3NF
-- Check for transitive dependencies
SELECT Course_id, Course_name, Credits, Course_code
FROM Courses;


CREATE TABLE Faculty (
    Faculty_id INT PRIMARY KEY,
    Faculty_name VARCHAR(100)
);
insert into Faculty (Faculty_id , Faculty_name ) values(01,'Dr. Smith'),(02,'Dr. Johnson'),(03,'Dr. Lee');
SELECT Faculty_id, Faculty_name
FROM Faculty;

CREATE TABLE Department (
    Department_id INT PRIMARY KEY,
  Department_name VARCHAR(100)
);
insert into Department values(801,"Computer Science");
SELECT Department_id, Department_name
FROM Department;

-- BCNF
SELECT Course_id, Course_name, Credits, Course_code
FROM Courses;

SELECT Faculty_id, Faculty_name
FROM Faculty;

SELECT Department_id, Department_name
FROM Department;











