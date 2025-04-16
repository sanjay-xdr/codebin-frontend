CREATE DATABASE MakeMyTeam;
GO

-- Use the MakeMyTeam database
USE MakeMyTeam;
GO

-- Create Designation table
CREATE TABLE Designation (
    Id INT PRIMARY KEY,
    DesignationName VARCHAR(100)
);

-- Create Skill table
CREATE TABLE Skill (
    Id INT PRIMARY KEY,
    SkillName VARCHAR(100)
);

-- Create Employee table
CREATE TABLE Employee (
    Id INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Age INT
);

ALTER TABLE Employee
ADD Gender VARCHAR(10);

-- Create EmployeeDetails table
CREATE TABLE EmployeeDetails (
    Id INT PRIMARY KEY,
    DesignationId INT,
    EmployeeId INT,
    FOREIGN KEY (DesignationId) REFERENCES Designation(Id),
    FOREIGN KEY (EmployeeId) REFERENCES Employee(Id)
);

	ALTER TABLE EmployeeDetails
ADD ProfileImageURL VARCHAR(255);

-- Create Projects table
CREATE TABLE Projects (
    Id INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Description TEXT,
    Skills VARCHAR(255),
    ReportingManager VARCHAR(100)
);

-- Create EmployeeProject table
CREATE TABLE EmployeeProject (
    Id INT PRIMARY KEY,
    EmployeeId INT,
    ProjectId INT,
    FOREIGN KEY (EmployeeId) REFERENCES Employee(Id),
    FOREIGN KEY (ProjectId) REFERENCES Projects(Id)
);

-- Create EmployeeSkill table
CREATE TABLE EmployeeSkill (
    Id INT PRIMARY KEY,
    EmployeeId INT,
    SkillId INT,
    FOREIGN KEY (EmployeeId) REFERENCES Employee(Id),
    FOREIGN KEY (SkillId) REFERENCES Skill(Id)
);


-- Inserting data into Designation table
INSERT INTO Designation (Id, DesignationName) VALUES
(1, 'Consultant 1'),
(2, 'Consultant 2'),
(3, 'Associate 1'),
(4, 'Associate 2'),
(5, 'Manager 1'),
(6, 'Manager 2'),
(7, 'Manager 3');


-- Inserting additional data into Skill table
INSERT INTO Skill (Id, SkillName) VALUES
(1, 'Java'),
(2, 'Python'),
(3, 'JavaScript'),
(4, 'TypeScript'),
(5, '.Net'),
(6, 'C#'),
(7, 'Azure'),
(8, 'AWS'),
(9, 'Web Development'),
(10, 'Backend Development'),
(11, 'Go'),
(12, 'Angular'),
(13, 'React'),
(14, 'SQL'),
(15, 'HTML/CSS'),
(16, 'DevOps'),
(17, 'Docker'),
(18, 'Kubernetes'),
(19, 'Microservices'),
(20, 'Node.js'),
(21, 'PHP'),
(22, 'Ruby on Rails'),
(23, 'Swift'),
(24, 'Objective-C'),
(25, 'Salesforce'),
(26, 'SAP'),
(27, 'Oracle'),
(28, 'Machine Learning'),
(29, 'Data Science'),
(30, 'Big Data'),
(31, 'Hadoop'),
(32, 'Spark'),
(33, 'Tableau'),
(34, 'Power BI'),
(35, 'Business Analysis'),
(36, 'Project Management'),
(37, 'Scrum'),
(38, 'Agile'),
(39, 'QA Testing'),
(40, 'Automation Testing');



insert into Employee (Id, FirstName, LastName, Gender) values (1, 'Marthe', 'Phlippsen', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (2, 'Heinrik', 'Beddon', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (3, 'Ingelbert', 'Croster', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (4, 'Humphrey', 'Stockow', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (5, 'Adams', 'Kehri', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (6, 'Liana', 'St Ange', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (7, 'Anissa', 'Alliberton', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (8, 'Jobi', 'Eykelbosch', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (9, 'Dorotea', 'Bauman', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (10, 'Wandie', 'Oldknowe', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (11, 'Erena', 'Karpfen', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (12, 'Devlin', 'Fortescue', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (13, 'Riane', 'McGifford', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (14, 'Bartram', 'Dyke', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (15, 'Robbyn', 'Dudenie', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (16, 'Mufinella', 'Bourcq', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (17, 'Gray', 'Oldcote', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (18, 'Corene', 'Domenici', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (19, 'Jacquenetta', 'Duckhouse', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (20, 'Agneta', 'Sarchwell', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (21, 'Stevena', 'Maharry', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (22, 'Kareem', 'Tenbrug', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (23, 'Shauna', 'Lougheid', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (24, 'Giorgio', 'Wilbor', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (25, 'Frasco', 'Lars', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (26, 'Juli', 'Schuricht', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (27, 'Mabel', 'Youll', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (28, 'Joel', 'Deerr', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (29, 'Aile', 'Jostan', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (30, 'Kristoforo', 'Brinkman', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (31, 'Arman', 'Craney', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (32, 'Kerby', 'Leeke', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (33, 'Angelique', 'Scrivenor', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (34, 'Oralie', 'Mapholm', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (35, 'Hamid', 'Lidierth', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (36, 'Elvis', 'Kline', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (37, 'Heinrick', 'Broadfield', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (38, 'Marijo', 'Mullally', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (39, 'Elnora', 'Fancutt', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (40, 'Egor', 'Batrim', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (41, 'Ely', 'Hoodless', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (42, 'Halley', 'Kipling', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (43, 'Dimitri', 'Tuny', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (44, 'Demeter', 'Petrichat', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (45, 'Lucian', 'Godbold', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (46, 'Edith', 'Reaper', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (47, 'Jeremias', 'Heddon', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (48, 'Iggie', 'McMechan', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (49, 'Terry', 'Colebrook', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (50, 'Trixy', 'Spackman', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (51, 'Hort', 'Oger', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (52, 'Dore', 'Sarfati', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (53, 'Eirena', 'Alpes', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (54, 'Phylys', 'Denkin', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (55, 'Amanda', 'Volante', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (56, 'Isidoro', 'Ibberson', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (57, 'Torie', 'Gallety', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (58, 'Buffy', 'Sabater', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (59, 'Sioux', 'Monkman', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (60, 'Gualterio', 'O''Hanley', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (61, 'Elizabet', 'Scarlet', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (62, 'Cesaro', 'Scottesmoor', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (63, 'Garek', 'Daens', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (64, 'Wilmer', 'McCreery', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (65, 'Hervey', 'Camplejohn', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (66, 'Melisande', 'Rubinivitz', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (67, 'Tomasina', 'Everex', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (68, 'Almeria', 'Flukes', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (69, 'Maiga', 'Vequaud', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (70, 'Raina', 'Pickering', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (71, 'Anallise', 'Deveral', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (72, 'Armin', 'Osboldstone', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (73, 'Edita', 'Scarffe', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (74, 'Collette', 'Jaine', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (75, 'Staffard', 'Prestage', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (76, 'Norbert', 'Gerren', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (77, 'Siobhan', 'Trewhitt', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (78, 'Jesse', 'Andreolli', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (79, 'Noami', 'Bromell', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (80, 'Ives', 'Gasquoine', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (81, 'Teresina', 'Caroll', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (82, 'Bartlet', 'Nazair', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (83, 'Ignaz', 'Blakesley', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (84, 'Jobi', 'Letixier', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (85, 'Doe', 'Stoaks', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (86, 'Jonell', 'Soppett', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (87, 'Connie', 'Abbatt', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (88, 'Riobard', 'Karpov', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (89, 'Ari', 'Buttress', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (90, 'Thedrick', 'Stear', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (91, 'Kathe', 'Sambles', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (92, 'Josy', 'Vaun', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (93, 'Hanny', 'Castelin', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (94, 'Cordi', 'Tombleson', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (95, 'Shaw', 'Endrizzi', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (96, 'Nikos', 'Marielle', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (97, 'Mariele', 'Simonitto', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (98, 'Fritz', 'Demanche', 'M');
insert into Employee (Id, FirstName, LastName, Gender) values (99, 'Stephanie', 'Douberday', 'F');
insert into Employee (Id, FirstName, LastName, Gender) values (100, 'Korella', 'Bridat', 'F');


--Select * from Designation


--Select * from EmployeeDetails


-- Inserting data into EmployeeDetails table for 100 employees
INSERT INTO EmployeeDetails (Id, DesignationId, EmployeeId) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 1, 8),
(9, 2, 9),
(10, 3, 10),
(11, 4, 11),
(12, 5, 12),
(13, 6, 13),
(14, 7, 14),
(15, 1, 15),
(16, 2, 16),
(17, 3, 17),
(18, 4, 18),
(19, 5, 19),
(20, 6, 20),
(21, 7, 21),
(22, 1, 22),
(23, 2, 23),
(24, 3, 24),
(25, 4, 25),
(26, 5, 26),
(27, 6, 27),
(28, 7, 28),
(29, 1, 29),
(30, 2, 30),
(31, 3, 31),
(32, 4, 32),
(33, 5, 33),
(34, 6, 34),
(35, 7, 35),
(36, 1, 36),
(37, 2, 37),
(38, 3, 38),
(39, 4, 39),
(40, 5, 40),
(41, 6, 41),
(42, 7, 42),
(43, 1, 43),
(44, 2, 44),
(45, 3, 45),
(46, 4, 46),
(47, 5, 47),
(48, 6, 48),
(49, 7, 49),
(50, 1, 50),
(51, 2, 51),
(52, 3, 52),
(53, 4, 53),
(54, 5, 54),
(55, 6, 55),
(56, 7, 56),
(57, 1, 57),
(58, 2, 58),
(59, 3, 59),
(60, 4, 60),
(61, 5, 61),
(62, 6, 62),
(63, 7, 63),
(64, 1, 64),
(65, 2, 65),
(66, 3, 66),
(67, 4, 67),
(68, 5, 68),
(69, 6, 69),
(70, 7, 70),
(71, 1, 71),
(72, 2, 72),
(73, 3, 73),
(74, 4, 74),
(75, 5, 75),
(76, 6, 76),
(77, 7, 77),
(78, 1, 78),
(79, 2, 79),
(80, 3, 80),
(81, 4, 81),
(82, 5, 82),
(83, 6, 83),
(84, 7, 84),
(85, 1, 85),
(86, 2, 86),
(87, 3, 87),
(88, 4, 88),
(89, 5, 89),
(90, 6, 90),
(91, 7, 91),
(92, 1, 92),
(93, 2, 93),
(94, 3, 94),
(95, 4, 95),
(96, 5, 96),
(97, 6, 97),
(98, 7, 98),
(99, 1, 99),
(100, 2, 100);









-- Inserting data into EmployeeSkill table for 100 employees with multiple skills
INSERT INTO EmployeeSkill (Id, EmployeeId, SkillId) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9),
(10, 4, 10),
(11, 4, 11),
(12, 4, 12),
(13, 5, 13),
(14, 5, 14),
(15, 5, 15),
(16, 6, 16),
(17, 6, 17),
(18, 6, 18),
(19, 7, 19),
(20, 7, 20),
(21, 7, 21),
(22, 8, 22),
(23, 8, 23),
(24, 8, 24),
(25, 9, 25),
(26, 9, 26),
(27, 9, 27),
(28, 10, 28),
(29, 10, 29),
(30, 10, 30),
(31, 11, 31),
(32, 11, 32),
(33, 11, 33),
(34, 12, 34),
(35, 12, 35),
(36, 12, 36),
(37, 13, 37),
(38, 13, 38),
(39, 13, 39),
(40, 14, 40),
(41, 14, 1),
(42, 14, 2),
(43, 15, 3),
(44, 15, 4),
(45, 15, 5),
(46, 16, 6),
(47, 16, 7),
(48, 16, 8),
(49, 17, 9),
(50, 17, 10),
(51, 17, 11),
(52, 18, 12),
(53, 18, 13),
(54, 18, 14),
(55, 19, 15),
(56, 19, 16),
(57, 19, 17),
(58, 20, 18),
(59, 20, 19),
(60, 20, 20),
(61, 21, 21),
(62, 21, 22),
(63, 21, 23),
(64, 22, 24),
(65, 22, 25),
(66, 22, 26),
(67, 23, 27),
(68, 23, 28),
(69, 23, 29),
(70, 24, 30),
(71, 24, 31),
(72, 24, 32),
(73, 25, 33),
(74, 25, 34),
(75, 25, 35),
(76, 26, 36),
(77, 26, 37),
(78, 26, 38),
(79, 27, 39),
(80, 27, 40),
(81, 28, 1),
(82, 28, 2),
(83, 28, 3),
(84, 29, 4),
(85, 29, 5),
(86, 29, 6),
(87, 30, 7),
(88, 30, 8),
(89, 30, 9),
(90, 31, 10),
(91, 31, 11),
(92, 31, 12),
(93, 32, 13),
(94, 32, 14),
(95, 32, 15),
(96, 33, 16),
(97, 33, 17),
(98, 33, 18),
(99, 34, 19),
(100, 34, 20),
(101, 34, 21),
(102, 35, 22),
(103, 35, 23),
(104, 35, 24),
(105, 36, 25),
(106, 36, 26),
(107, 36, 27),
(108, 37, 28),
(109, 37, 29),
(110, 37, 30),
(111, 38, 31),
(112, 38, 32),
(113, 38, 33),
(114, 39, 34),
(115, 39, 35),
(116, 39, 36),
(117, 40, 37),
(118, 40, 38),
(119, 40, 39),
(120, 41, 40),
(121, 41, 1),
(122, 41, 2),
(123, 42, 3),
(124, 42, 4),
(125, 42, 5),
(126, 43, 6),
(127, 43, 7),
(128, 43, 8),
(129, 44, 9),
(130, 44, 10),
(131, 44, 11),
(132, 45, 12),
(133, 45, 13),
(134, 45, 14),
(135, 46, 15),
(136, 46, 16),
(137, 46, 17),
(138, 47, 18),
(139, 47, 19),
(140, 47, 20),
(141, 48, 21),
(142, 48, 22),
(143, 48, 23),
(144, 49, 24),
(145, 49, 25),
(146, 49, 26),
(147, 50, 27),
(148, 50, 28),
(149, 50, 29),
(150, 51, 30),
(151, 51, 31),
(152, 51, 32),
(153, 52, 33),
(154, 52, 34),
(155, 52, 35),
(156, 53, 36),
(157, 53, 37),
(158, 53, 38),
(159, 54, 39),
(160, 54, 40),
(161, 55, 1),
(162, 55, 2),
(163, 55, 3),
(164, 56, 4),
(165, 56, 5),
(166, 56, 6),
(167, 57, 7),
(168, 57, 8),
(169, 57, 9),
(170, 58, 10),
(171, 58, 11),
(172, 58, 12),
(173, 59, 13),
(174, 59, 14),
(175, 59, 15),
(176, 60, 16),
(177, 60, 17),
(178, 60, 18),
(179, 61, 19),
(180, 61, 20),
(181, 61, 21),
(182, 62, 22),
(183, 62, 23),
(184, 62, 24),
(185, 63, 25),
(186, 63, 26),
(187, 63, 27),
(188, 64, 28),
(189, 64, 29),
(190, 64, 30),
(191, 65, 31),
(192, 65, 32),
(193, 65, 33),
(194, 66, 34),
(195, 66, 35),
(196, 66, 36),
(197, 67, 37),
(198, 67, 38),
(199, 67, 39),
(200, 68, 40),
(201, 68, 1),
(202, 68, 2),
(203, 69, 3),
(204, 69, 4),
(205, 69, 5),
(206, 70, 6),
(207, 70, 7),
(208, 70, 8),
(209, 71, 9),
(210, 71, 10),
(211, 71, 11),
(212, 72, 12),
(213, 72, 13),
(214, 72, 14),
(215, 73, 15),
(216, 73, 16),
(217, 73, 17),
(218, 74, 18),
(219, 74, 19),
(220, 74, 20),
(221, 75, 21),
(222, 75, 22),
(223, 75, 23),
(224, 76, 24),
(225, 76, 25),
(226, 76, 26),
(227, 77, 27),
(228, 77, 28),
(229, 77, 29),
(230, 78, 30),
(231, 78, 31),
(232, 78, 32),
(233, 79, 33),
(234, 79, 34),
(235, 79, 35),
(236, 80, 36),
(237, 80, 37),
(238, 80, 38),
(239, 81, 39),
(240, 81, 40),
(241, 82, 1),
(242, 82, 2),
(243, 82, 3),
(244, 83, 4),
(245, 83, 5),
(246, 83, 6),
(247, 84, 7),
(248, 84, 8),
(249, 84, 9),
(250, 85, 10),
(251, 85, 11),
(252, 85, 12),
(253, 86, 13),
(254, 86, 14),
(255, 86, 15),
(256, 87, 16),
(257, 87, 17),
(258, 87, 18),
(259, 88, 19),
(260, 88, 20),
(261, 88, 21),
(262, 89, 22),
(263, 89, 23),
(264, 89, 24),
(265, 90, 25),
(266, 90, 26),
(267, 90, 27),
(268, 91, 28),
(269, 91, 29),
(270, 91, 30),
(271, 92, 31),
(272, 92, 32),
(273, 92, 33),
(274, 93, 34),
(275, 93, 35),
(276, 93, 36),
(277, 94, 37),
(278, 94, 38),
(279, 94, 39),
(280, 95, 40),
(281, 95, 1),
(282, 95, 2),
(283, 96, 3),
(284, 96, 4),
(285, 96, 5),
(286, 97, 6),
(287, 97, 7),
(288, 97, 8),
(289, 98, 9),
(290, 98, 10),
(291, 98, 11),
(292, 99, 12),
(293, 99, 13),
(294, 99, 14),
(295, 100, 15),
(296, 100, 16),
(297, 100, 17);






-- Inserting data into Projects table
INSERT INTO Projects (Id, ProjectName, StartDate, EndDate, Description, Skills, ReportingManager) VALUES
(1, 'Project Alpha', '2025-01-01', '2025-06-30', 'Development of Project Alpha', '', ''),
(2, 'Project Beta', '2025-02-01', '2025-07-31', 'Implementation of Project Beta', '', ''),
(3, 'Project Gamma', '2025-03-01', '2025-08-31', 'Testing and deployment of Project Gamma', '', ''),
(4, 'Project Delta', '2025-04-01', '2025-09-30', 'Maintenance of Project Delta', '', ''),
(5, 'Project Epsilon', '2025-05-01', '2025-10-31', 'Development of Project Epsilon', '', ''),
(6, 'Project Zeta', '2025-06-01', '2025-11-30', 'Implementation of Project Zeta', '', ''),
(7, 'Project Eta', '2025-07-01', '2025-12-31', 'Testing and deployment of Project Eta', '', ''),
(8, 'Project Theta', '2025-08-01', '2026-01-31', 'Maintenance of Project Theta', '', ''),
(9, 'Project Iota', '2025-09-01', '2026-02-28', 'Development of Project Iota', '', ''),
(10, 'Project Kappa', '2025-10-01', '2026-03-31', 'Implementation of Project Kappa', '', ''),
(11, 'Project Lambda', '2025-11-01', '2026-04-30', 'Testing and deployment of Project Lambda', '', ''),
(12, 'Project Mu', '2025-12-01', '2026-05-31', 'Maintenance of Project Mu', '', ''),
(13, 'Project Nu', '2026-01-01', '2026-06-30', 'Development of Project Nu', '', ''),
(14, 'Project Xi', '2026-02-01', '2026-07-31', 'Implementation of Project Xi', '', ''),
(15, 'Project Omicron', '2026-03-01', '2026-08-31', 'Testing and deployment of Project Omicron', '', ''),
(16, 'Project Pi', '2026-04-01', '2026-09-30', 'Maintenance of Project Pi', '', ''),
(17, 'Project Rho', '2026-05-01', '2026-10-31', 'Development of Project Rho', '', ''),
(18, 'Project Sigma', '2026-06-01', '2026-11-30', 'Implementation of Project Sigma', '', ''),
(19, 'Project Tau', '2026-07-01', '2026-12-31', 'Testing and deployment of Project Tau', '', ''),
(20, 'Project Upsilon', '2026-08-01', '2027-01-31', 'Maintenance of Project Upsilon', '', '');


-- Inserting data into EmployeeProject table
INSERT INTO EmployeeProject (Id, EmployeeId, ProjectId) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 4),
(6, 2, 5),
(7, 3, 1),
(8, 3, 2),
(9, 3, 6),
(10, 4, 3),
(11, 4, 7),
(12, 4, 8),
(13, 5, 4),
(14, 5, 9),
(15, 5, 10),
(16, 6, 5),
(17, 6, 11),
(18, 6, 12),
(19, 7, 6),
(20, 7, 13),
(21, 7, 14),
(22, 8, 7),
(23, 8, 15),
(24, 8, 16),
(25, 9, 8),
(26, 9, 17),
(27, 9, 18),
(28, 10, 9),
(29, 10, 19),
(30, 10, 20),
(31, 11, 10),
(32, 11, 1),
(33, 11, 2),
(34, 12, 11),
(35, 12, 3),
(36, 12, 4),
(37, 13, 12),
(38, 13, 5),
(39, 13, 6),
(40, 14, 13),
(41, 14, 7),
(42, 14, 8),
(43, 15, 14),
(44, 15, 9),
(45, 15, 10),
(46, 16, 15),
(47, 16, 11),
(48, 16, 12),
(49, 17, 16),
(50, 17, 13),
(51, 17, 14),
(52, 18, 17),
(53, 18, 15),
(54, 18, 16),
(55, 19, 18),
(56, 19, 17),
(57, 19, 18),
(58, 20, 19),
(59, 20, 20),
(60, 20, 1),
(61, 21, 2),
(62, 21, 3),
(63, 21, 4),
(64, 22, 5),
(65, 22, 6),
(66, 22, 7),
(67, 23, 8),
(68, 23, 9),
(69, 23, 10),
(70, 24, 11),
(71, 24, 12),
(72, 24, 13),
(73, 25, 14),
(74, 25, 15),
(75, 25, 16),
(76, 26, 17),
(77, 26, 18),
(78, 26, 19),
(79, 27, 20),
(80, 27, 1),
(81, 27, 2),
(82, 28, 3),
(83, 28, 4),
(84, 28, 5),
(85, 29, 6),
(86, 29, 7),
(87, 29, 8),
(88, 30, 9),
(89, 30, 10),
(90, 30, 11),
(91, 31, 12),
(92, 31, 13),
(93, 31, 14),
(94, 32, 15),
(95, 32, 16),
(96, 32, 17),
(97, 33, 18),
(98, 33, 19),
(99, 33, 20),
(100, 34, 1),
(101, 34, 2),
(102, 34, 3),
(103, 35, 4),
(104, 35, 5),
(105, 35, 6),
(106, 36, 7),
(107, 36, 8),
(108, 36, 9),
(109, 37, 10),
(110, 37, 11),
(111, 37, 12),
(112, 38, 13),
(113, 38, 14),
(114, 38, 15),
(115, 39, 16),
(116, 39, 17),
(117, 39, 18),
(118, 40, 19),
(119, 40, 20),
(120, 40, 1),
(121, 41, 2),
(122, 41, 3),
(123, 41, 4),
(124, 42, 5),
(125, 42, 6),
(126, 42, 7),
(127, 43, 8),
(128, 43, 9),
(129, 43, 10),
(130, 44, 11),
(131, 44, 12),
(132, 44, 13),
(133, 45, 14),
(134, 45, 15),
(135, 45, 16),
(136, 46, 17),
(137, 46, 18),
(138, 46, 19),
(139, 47, 20),
(140, 47, 1),
(141, 47, 2),
(142, 48, 3),
(143, 48, 4),
(144, 48, 5),
(145, 49, 6),
(146, 49, 7),
(147, 49, 8),
(148, 50, 9),
(149, 50, 10),
(150, 50, 11),
(151, 51, 12),
(152, 51, 13),
(153, 51, 14),
(154, 52, 15),
(155, 52, 16),
(156, 52, 17),
(157, 53, 18),
(158, 53, 19),
(159, 53, 20),
(160, 54, 1),
(161, 54, 2),
(162, 54, 3),
(163, 55, 4),
(164, 55, 5),
(165, 55, 6),
(166, 56, 7),
(167, 56, 8),
(168, 56, 9),
(169, 57, 10),
(170, 57, 11),
(171, 57, 12),
(172, 58, 13),
(173, 58, 14),
(174, 58, 15),
(175, 59, 16),
(176, 59, 17),
(177, 59, 18),
(178, 60, 19),
(179, 60, 20),
(180, 60, 1),
(181, 61, 2),
(182, 61, 3),
(183, 61, 4),
(184, 62, 5),
(185, 62, 6),
(186, 62, 7),
(187, 63, 8),
(188, 63, 9),
(189, 63, 10),
(190, 64, 11),
(191, 64, 12),
(192, 64, 13),
(193, 65, 14),
(194, 65, 15),
(195, 65, 16),
(196, 66, 17),
(197, 66, 18),
(198, 66, 19),
(199, 67, 20),
(200, 67, 1);


-- Updating EmployeeDetails table with URLs of employee images
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/172x109.png/cc0000/ffffff' WHERE Id = 1;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/148x181.png/dddddd/000000' WHERE Id = 2;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/207x161.png/cc0000/ffffff' WHERE Id = 3;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/211x135.png/cc0000/ffffff' WHERE Id = 4;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/114x209.png/dddddd/000000' WHERE Id = 5;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/199x107.png/ff4444/ffffff' WHERE Id = 6;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/239x166.png/5fa2dd/ffffff' WHERE Id = 7;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/131x139.png/ff4444/ffffff' WHERE Id = 8;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/207x241.png/dddddd/000000' WHERE Id = 9;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/117x220.png/cc0000/ffffff' WHERE Id = 10;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/127x268.png/dddddd/000000' WHERE Id = 11;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/247x224.png/cc0000/ffffff' WHERE Id = 12;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/111x293.png/dddddd/000000' WHERE Id = 13;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/159x262.png/ff4444/ffffff' WHERE Id = 14;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/167x173.png/dddddd/000000' WHERE Id = 15;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/173x260.png/dddddd/000000' WHERE Id = 16;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/122x106.png/5fa2dd/ffffff' WHERE Id = 17;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/172x247.png/cc0000/ffffff' WHERE Id = 18;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/204x246.png/cc0000/ffffff' WHERE Id = 19;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/172x140.png/cc0000/ffffff' WHERE Id = 20;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/140x224.png/cc0000/ffffff' WHERE Id = 21;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/130x268.png/ff4444/ffffff' WHERE Id = 22;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/202x201.png/cc0000/ffffff' WHERE Id = 23;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/201x250.png/ff4444/ffffff' WHERE Id = 24;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/178x272.png/dddddd/000000' WHERE Id = 25;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/163x201.png/ff4444/ffffff' WHERE Id = 26;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/126x252.png/5fa2dd/ffffff' WHERE Id = 27;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/212x236.png/ff4444/ffffff' WHERE Id = 28;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/101x265.png/5fa2dd/ffffff' WHERE Id = 29;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/190x161.png/ff4444/ffffff' WHERE Id = 30;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/181x145.png/dddddd/000000' WHERE Id = 31;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/206x245.png/cc0000/ffffff' WHERE Id = 32;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/200x222.png/5fa2dd/ffffff' WHERE Id = 33;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/113x206.png/ff4444/ffffff' WHERE Id = 34;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/204x183.png/cc0000/ffffff' WHERE Id = 35;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/115x117.png/5fa2dd/ffffff' WHERE Id = 36;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/157x175.png/cc0000/ffffff' WHERE Id = 37;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/233x184.png/dddddd/000000' WHERE Id = 38;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/138x283.png/dddddd/000000' WHERE Id = 39;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/209x261.png/ff4444/ffffff' WHERE Id = 40;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/197x118.png/dddddd/000000' WHERE Id = 41;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/202x209.png/ff4444/ffffff' WHERE Id = 42;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/191x180.png/5fa2dd/ffffff' WHERE Id = 43;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/195x213.png/cc0000/ffffff' WHERE Id = 44;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/122x267.png/dddddd/000000' WHERE Id = 45;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/130x248.png/dddddd/000000' WHERE Id = 46;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/199x288.png/5fa2dd/ffffff' WHERE Id = 47;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/104x192.png/cc0000/ffffff' WHERE Id = 48;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/138x209.png/cc0000/ffffff' WHERE Id = 49;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/154x167.png/5fa2dd/ffffff' WHERE Id = 50;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/208x198.png/dddddd/000000' WHERE Id = 51;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/221x229.png/cc0000/ffffff' WHERE Id = 52;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/223x129.png/dddddd/000000' WHERE Id = 53;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/219x261.png/cc0000/ffffff' WHERE Id = 54;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/233x106.png/dddddd/000000' WHERE Id = 55;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/121x105.png/5fa2dd/ffffff' WHERE Id = 56;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/225x134.png/ff4444/ffffff' WHERE Id = 57;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/247x228.png/ff4444/ffffff' WHERE Id = 58;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/218x246.png/ff4444/ffffff' WHERE Id = 59;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/114x246.png/ff4444/ffffff' WHERE Id = 60;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/241x291.png/5fa2dd/ffffff' WHERE Id = 61;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/221x260.png/ff4444/ffffff' WHERE Id = 62;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/156x146.png/5fa2dd/ffffff' WHERE Id = 63;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/108x287.png/dddddd/000000' WHERE Id = 64;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/219x220.png/cc0000/ffffff' WHERE Id = 65;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/167x276.png/ff4444/ffffff' WHERE Id = 66;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/106x169.png/ff4444/ffffff' WHERE Id = 67;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/178x102.png/dddddd/000000' WHERE Id = 68;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/249x197.png/cc0000/ffffff' WHERE Id = 69;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/128x121.png/dddddd/000000' WHERE Id = 70;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/119x260.png/5fa2dd/ffffff' WHERE Id = 71;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/115x127.png/dddddd/000000' WHERE Id = 72;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/180x270.png/dddddd/000000' WHERE Id = 73;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/118x263.png/ff4444/ffffff' WHERE Id = 74;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/170x291.png/cc0000/ffffff' WHERE Id = 75;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/125x219.png/cc0000/ffffff' WHERE Id = 76;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/152x124.png/ff4444/ffffff' WHERE Id = 77;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/162x158.png/5fa2dd/ffffff' WHERE Id = 78;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/109x244.png/ff4444/ffffff' WHERE Id = 79;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/132x127.png/5fa2dd/ffffff' WHERE Id = 80;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/202x134.png/ff4444/ffffff' WHERE Id = 81;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/217x155.png/5fa2dd/ffffff' WHERE Id = 82;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/195x113.png/5fa2dd/ffffff' WHERE Id = 83;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/213x160.png/ff4444/ffffff' WHERE Id = 84;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/200x106.png/ff4444/ffffff' WHERE Id = 85;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/137x279.png/ff4444/ffffff' WHERE Id = 86;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/142x117.png/5fa2dd/ffffff' WHERE Id = 87;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/178x158.png/5fa2dd/ffffff' WHERE Id = 88;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/128x269.png/ff4444/ffffff' WHERE Id = 89;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/221x188.png/ff4444/ffffff' WHERE Id = 90;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/227x163.png/cc0000/ffffff' WHERE Id = 91;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/246x275.png/ff4444/ffffff' WHERE Id = 92;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/117x163.png/cc0000/ffffff' WHERE Id = 93;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/150x273.png/5fa2dd/ffffff' WHERE Id = 94;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/112x240.png/dddddd/000000' WHERE Id = 95;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/150x118.png/ff4444/ffffff' WHERE Id = 96;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/105x159.png/5fa2dd/ffffff' WHERE Id = 97;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/175x147.png/cc0000/ffffff' WHERE Id = 98;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/226x271.png/5fa2dd/ffffff' WHERE Id = 99;
UPDATE EmployeeDetails SET ProfileImageURL = 'http://dummyimage.com/150x267.png/5fa2dd/ffffff' WHERE Id = 100;

	


SELECT 
    e.FirstName AS EmployeeFirstName,
    e.LastName AS EmployeeLastName,
    d.DesignationName,
	ed.ProfileImageURL AS PROFILEPICTURE,
    STUFF((
        SELECT ', ' + s.SkillName
        FROM EmployeeSkill es
        JOIN Skill s ON es.SkillId = s.Id
        WHERE es.EmployeeId = e.Id
        FOR XML PATH(''), TYPE
    ).value('.', 'NVARCHAR(MAX)'), 1, 2, '') AS Skills,
    STUFF((
        SELECT ', ' + p.ProjectName
        FROM EmployeeProject ep
        JOIN Projects p ON ep.ProjectId = p.Id
        WHERE ep.EmployeeId = e.Id
        FOR XML PATH(''), TYPE
    ).value('.', 'NVARCHAR(MAX)'), 1, 2, '') AS Projects
FROM 
    Employee e
JOIN 
    EmployeeDetails ed ON e.Id = ed.EmployeeId
JOIN 
    Designation d ON ed.DesignationId = d.Id
ORDER BY 
    e.Id;


	





INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [NickName], [Email], [Phone], [HireDate], [DOB], [Location], [ManagerID], [Status]) VALUES
(N'CG112', N'Vivaan', N'Verma', N'Vivaan', N'vivaan.verma@test.com', N'8888888888', CAST(N'2023-10-12' AS Date), CAST(N'1990-05-20' AS Date), N'Bangalore', NULL, N'Active'),
(N'CG113', N'Aditya', N'Rao', N'Adi', N'aditya.rao@test.com', N'7777777777', CAST(N'2023-11-14' AS Date), CAST(N'1985-07-15' AS Date), N'Hyderabad', NULL, N'Active'),
(N'CG114', N'Vihaan', N'Kumar', N'Vihaan', N'vihaan.kumar@test.com', N'6666666666', CAST(N'2023-12-16' AS Date), CAST(N'1975-09-10' AS Date), N'Chennai', NULL, N'Active'),
(N'CG115', N'Arjun', N'Singh', N'Arjun', N'arjun.singh@test.com', N'5555555555', CAST(N'2024-01-18' AS Date), CAST(N'1980-11-25' AS Date), N'Mumbai', NULL, N'Active'),
(N'CG116', N'Sai', N'Patel', N'Sai', N'sai.patel@test.com', N'4444444444', CAST(N'2024-02-20' AS Date), CAST(N'1995-04-30' AS Date), N'Pune', NULL, N'Active'),
(N'CG117', N'Reyansh', N'Sen', N'Rey', N'reyansh.sen@test.com', N'3333333333', CAST(N'2024-03-22' AS Date), CAST(N'1988-06-18' AS Date), N'Kolkata', NULL, N'Active'),
(N'CG118', N'Ayaan', N'Mishra', N'Ayaan', N'ayaan.mishra@test.com', N'2222222222', CAST(N'2024-04-24' AS Date), CAST(N'1972-01-10' AS Date), N'Noida', NULL, N'Active'),
(N'CG119', N'Krishna', N'Reddy', N'Krish', N'krishna.reddy@test.com', N'1111111111', CAST(N'2024-05-26' AS Date), CAST(N'1992-03-14' AS Date), N'Bangalore', NULL, N'Active'),
(N'CG120', N'Ishaan', N'Naik', N'Ishaan', N'ishaan.naik@test.com', N'0000000000', CAST(N'2024-06-28' AS Date), CAST(N'1983-08-22' AS Date), N'Hyderabad', NULL, N'Active'),
(N'CG121', N'Rudra', N'Chopra', N'Rudra', N'rudra.chopra@test.com', N'9999999998', CAST(N'2024-07-30' AS Date), CAST(N'1981-12-05' AS Date), N'Chennai', NULL, N'Active'),
(N'CG122', N'Atharva', N'Bhat', N'Atharva', N'atharva.bhat@test.com', N'8888888887', CAST(N'2024-08-01' AS Date), CAST(N'1976-02-12' AS Date), N'Mumbai', NULL, N'Active'),
(N'CG123', N'Dhruv', N'Pandey', N'Dhruv', N'dhruv.pandey@test.com', N'7777777776', CAST(N'2024-09-03' AS Date), CAST(N'1984-09-30' AS Date), N'Pune', NULL, N'Active'),
(N'CG124', N'Kabir', N'Mehta', N'Kabir', N'kabir.mehta@test.com', N'6666666665', CAST(N'2024-10-05' AS Date), CAST(N'1999-11-18' AS Date), N'Kolkata', NULL, N'Active'),
(N'CG125', N'Aarush', N'Desai', N'Aarush', N'aarush.desai@test.com', N'5555555554', CAST(N'2024-11-07' AS Date), CAST(N'1978-07-10' AS Date), N'Noida', NULL, N'Active'),
(N'CG126', N'Ansh', N'Malhotra', N'Ansh', N'ansh.malhotra@test.com', N'4444444443', CAST(N'2024-12-09' AS Date), CAST(N'1991-05-20' AS Date), N'Bangalore', NULL, N'Active'),
(N'CG127', N'Arnav', N'Joshi', N'Arnav', N'arnav.joshi@test.com', N'3333333332', CAST(N'2025-01-11' AS Date), CAST(N'1986-06-15' AS Date), N'Hyderabad', NULL, N'Active'),
(N'CG128', N'Shaurya', N'Acharya', N'Shaurya', N'shaurya.acharya@test.com', N'2222222221', CAST(N'2025-02-13' AS Date), CAST(N'1997-12-25' AS Date), N'Chennai', NULL, N'Active'),
(N'CG129', N'Aaryan', N'Trivedi', N'Aaryan', N'aaryan.trivedi@test.com', N'1111111110', CAST(N'2025-03-15' AS Date), CAST(N'1974-03-10' AS Date), N'Mumbai', NULL, N'Active'),
(N'CG130', N'Rishi', N'Nair', N'Rishi', N'rishi.nair@test.com', N'0000000009', CAST(N'2025-04-17' AS Date), CAST(N'1989-11-25' AS Date), N'Pune', NULL, N'Active'),
(N'CG131', N'Yash', N'Khanna', N'Yash', N'yash.khanna@test.com', N'9999999998', CAST(N'2025-05-19' AS Date), CAST(N'1993-01-30' AS Date), N'Kolkata', NULL, N'Active'),
(N'CG132', N'Om', N'Kapoor', N'Om', N'om.kapoor@test.com', N'8888888887', CAST(N'2025-06-21' AS Date), CAST(N'1982-05-14' AS Date), N'Noida', NULL, N'Active'),
(N'CG133', N'Kartik', N'Agarwal', N'Kartik', N'kartik.agarwal@test.com', N'7777777776', CAST(N'2025-07-23' AS Date), CAST(N'1979-07-10' AS Date), N'Bangalore', NULL, N'Active'),
(N'CG134', N'Dev', N'Chaudhary', N'Dev', N'dev.chaudhary@test.com', N'6666666665', CAST(N'2025-08-25' AS Date), CAST(N'1996-09-20' AS Date), N'Hyderabad', NULL, N'Active'),
(N'CG135', N'Aadhya', N'Ghosh', N'Aadhya', N'aadhya.ghosh@test.com', N'5555555554', CAST(N'2025-09-27' AS Date), CAST(N'1987-11-18' AS Date), N'Chennai', NULL, N'Active'),
(N'CG136', N'Ananya', N'Basu', N'Ananya', N'ananya.basu@test.com', N'4444444443', CAST(N'2025-10-29' AS Date), CAST(N'1994-07-10' AS Date), N'Mumbai', NULL, N'Active'),
(N'CG137', N'Diya', N'Roy', N'Diya', N'diya.roy@test.com', N'3333333332', CAST(N'2025-11-31' AS Date), CAST(N'1973-05-20' AS Date), N'Pune', NULL, N'Active'),
(N'CG138', N'Kiara', N'Datta', N'Kiara', N'kiara.datta@test.com', N'2222222221', CAST(N'2026-01-02' AS Date), CAST(N'1977-06-15' AS Date), N'Kolkata', NULL, N'Active'),
(N'CG139', N'Pari', N'Gupta', N'Pari', N'pari.gupta@test.com', N'1111111110', CAST(N'2026-02-04' AS Date), CAST(N'1983-12-25' AS Date), N'Noida', NULL, N'Active'),
(N'CG140', N'Saanvi', N'Saxena', N'Saanvi', N'saanvi.saxena@test.com', N'0000000009', CAST(N'2026-03-06' AS Date), CAST(N'1998-03-10' AS Date), N'Bangalore', NULL, N'Active'),
(N'CG141', N'Anika', N'Menon', N'Anika', N'anika.menon@test.com', N'9999999998', CAST(N'2026-04-08' AS Date), CAST(N'1990-11-25' AS Date), N'Hyderabad', NULL, N'Active'),
(N'CG142', N'Navya', N'Shetty', N'Navya', N'navya.shetty@test.com', N'8888888887', CAST(N'2026-05-10' AS Date), CAST(N'1971-01-30' AS Date), N'Chennai', NULL, N'Active'),
(N'CG143', N'Meera', N'Kohli', N'Meera', N'meera.kohli@test.com', N'7777777776', CAST(N'2026-06-12' AS Date), CAST(N'1975-12-12' AS Date), N'Mumbai', NULL, N'Active'),
(N'CG144', N'Isha', N'Gandhi', N'Isha', N'isha.gandhi@test.com', N'6666666665', CAST(N'2026-07-14' AS Date), CAST(N'1992-04-04' AS Date), N'Pune', NULL, N'Active'),
(N'CG145', N'Anvi', N'Kaur', N'Anvi', N'anvi.kaur@test.com', N'5555555554', CAST(N'2026-08-16' AS Date), CAST(N'1984-06-06' AS Date), N'Kolkata', NULL, N'Active'),
(N'CG146', N'Myra', N'Gill', N'Myra', N'myra.gill@test.com', N'4444444443', CAST(N'2026-09-18' AS Date), CAST(N'1979-10-10' AS Date), N'Noida', NULL, N'Active'),
(N'CG147', N'Reet', N'Singh', N'Reet', N'reet.singh@test.com', N'3333333332', CAST(N'2026-10-20' AS Date), CAST(N'1996-02-22' AS Date), N'Bangalore', NULL, N'Active'),
(N'CG148', N'Siya', N'Chopra', N'Siya', N'siya.chopra@test.com', N'2222222221', CAST(N'2026-11-22' AS Date), CAST(N'1985-03-13' AS Date), N'Hyderabad', NULL, N'Active'),
(N'CG149', N'Aarna', N'Malhotra', N'Aarna', N'aarna.malhotra@test.com', N'1111111110', CAST(N'2026-12-24' AS Date), CAST(N'1973-07-07' AS Date), N'Chennai', NULL, N'Active'),
(N'CG150', N'Riya', N'Bajaj', N'Riya', N'riya.bajaj@test.com', N'0000000009', CAST(N'2027-01-26' AS Date), CAST(N'1997-05-15' AS Date), N'Mumbai', NULL, N'Active'),
(N'CG151', N'Aarohi', N'Bhatia', N'Aarohi', N'aarohi.bhatia@test.com', N'9999999998', CAST(N'2027-02-28' AS Date), CAST(N'1989-08-18' AS Date), N'Pune', NULL, N'Active'),
(N'CG152', N'Kavya', N'Chauhan', N'Kavya', N'kavya.chauhan@test.com', N'8888888887', CAST(N'2027-03-30' AS Date), CAST(N'1987-01-10' AS Date), N'Kolkata', NULL, N'Active'),
(N'CG153', N'Shanaya', N'Jain', N'Shanaya', N'shanaya.jain@test.com', N'7777777776', CAST(N'2027-04-01' AS Date), CAST(N'1978-11-11' AS Date), N'Noida', NULL, N'Active'),
(N'CG154', N'Aanya', N'Kapoor', N'Aanya', N'aanya.kapoor@test.com', N'6666666665', CAST(N'2027-05-03' AS Date), CAST(N'1995-02-14' AS Date), N'Bangalore', NULL, N'Active'),
(N'CG155', N'Tanvi', N'Rana', N'Tanvi', N'tanvi.rana@test.com', N'5555555554', CAST(N'2027-06-05' AS Date), CAST(N'1994-09-09' AS Date), N'Hyderabad', NULL, N'Active'),
(N'CG156', N'Ira', N'Singh', N'Ira', N'ira.singh@test.com', N'4444444443', CAST(N'2027-07-07' AS Date), CAST(N'1991-04-17' AS Date), N'Chennai', NULL, N'Active'),
(N'CG157', N'Sia', N'Ahuja', N'Sia', N'sia.ahuja@test.com', N'3333333332', CAST(N'2027-08-09' AS Date), CAST(N'1993-12-12' AS Date), N'Mumbai', NULL, N'Active'),
(N'CG158', N'Tisha', N'Bakshi', N'Tisha', N'tisha.bakshi@test.com', N'2222222221', CAST(N'2027-09-11' AS Date), CAST(N'1980-10-10' AS Date), N'Pune', NULL, N'Active'),
(N'CG159', N'Vanya', N'Rao', N'Vanya', N'vanya.rao@test.com', N'1111111110', CAST(N'2027-10-13' AS Date), CAST(N'1982-06-06' AS Date), N'Kolkata', NULL, N'Active');