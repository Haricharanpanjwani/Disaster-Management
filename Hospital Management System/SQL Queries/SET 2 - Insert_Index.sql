use Hospital;

insert into Doctor (doctorID, doctorName, dob, gender, specialization) values 
(1, 'Johnny', '1990-01-14', 'M', 'Dentist'),
(2, 'Beverly', '1988-09-07', 'F', 'Cardiologist'),
(3, 'Carol', '1976-08-13', 'F', 'Dermatologist'),
(4, 'Gregory', '1977-05-29', 'M', 'ENT Specialist'),
(5, 'Eugene', '1971-07-03', 'M', 'Gynecologist'),
(6, 'Jean', '1982-04-29', 'F', 'Hematologist'),
(7, 'Lisa', '1983-12-26', 'F', 'Immunologist'),
(8, 'Ann', '1971-07-14', 'F', 'Neurologist'),
(9, 'Brian', '1978-10-27', 'M', 'Obstetrician'),
(10, 'Larry', '1974-12-29', 'M', 'Oncologist'),
(11, 'Christine', '1976-11-18', 'F', 'Radiologists'),
(12, 'Frances', '1977-12-20', 'F', 'Surgeon'),
(13, 'Daniel', '1978-04-21', 'M', 'Dentist'),
(14, 'Craig', '1989-02-24', 'M', 'Cardiologist'),
(15, 'Paul', '1982-05-03', 'M', 'Dermatologist'),
(16, 'Rebecca', '1988-04-30', 'F', 'ENT Specialist'),
(17, 'Jimmy', '1981-11-05', 'M', 'Gynecologist'),
(18, 'William', '1986-07-11', 'M', 'Hematologist'),
(19, 'Peter', '1986-02-10', 'M', 'Immunologist'),
(20, 'Earl', '1982-12-26', 'M', 'Neurologist'),
(21, 'Sarah', '1983-12-02', 'F', 'Obstetrician'),
(22, 'Carolyn', '1978-03-25', 'F', 'Oncologist'),
(23, 'Aaron', '1976-11-05', 'M', 'Radiologists'),
(24, 'Joseph', '1973-10-12', 'M', 'Surgeon'),
(25, 'Harry', '1981-05-06', 'M', 'Dentist'),
(26, 'Carlos', '1981-02-21', 'M', 'Cardiologist'),
(27, 'Christine', '1988-02-09', 'F', 'Dermatologist'),
(28, 'Sharon', '1982-09-12', 'F', 'ENT Specialist'),
(29, 'Janice', '1972-05-16', 'F', 'Gynecologist'),
(30, 'Diane', '1989-10-23', 'F', 'Hematologist'),
(31, 'Janice', '1972-08-26', 'F', 'Immunologist'),
(32, 'Janice', '1987-07-13', 'F', 'Neurologist'),
(33, 'Ruth', '1988-06-11', 'F', 'Obstetrician'),
(34, 'Tammy', '1980-07-22', 'F', 'Oncologist'),
(35, 'Joshua', '1981-10-08', 'M', 'Radiologists'),
(36, 'Tammy', '1973-07-20', 'F', 'Surgeon'),
(37, 'Shawn', '1971-05-05', 'M', 'Dentist'),
(38, 'Louis', '1990-12-09', 'M', 'Cardiologist'),
(39, 'Philip', '1973-03-07', 'M', 'Dermatologist'),
(40, 'Joshua', '1982-09-09', 'M', 'ENT Specialist'),
(41, 'Nicole', '1986-07-22', 'F', 'Gynecologist'),
(42, 'Pamela', '1972-06-16', 'F', 'Hematologist'),
(43, 'Anna', '1973-03-19', 'F', 'Immunologist'),
(44, 'James', '1985-07-17', 'M', 'Neurologist'),
(45, 'Judy', '1986-05-29', 'F', 'Obstetrician'),
(46, 'Amy', '1986-09-25', 'F', 'Oncologist'),
(47, 'Martha', '1983-10-28', 'F', 'Radiologists'),
(48, 'Gerald', '1979-08-30', 'M', 'Surgeon'),
(49, 'Lawrence', '1987-01-19', 'M', 'Dentist'),
(50, 'Irene', '1990-02-20', 'F', 'Cardiologist');

select * from doctor;

insert into Patient (patientID, patientName, dob, gender, admitDate, releaseDate, ReceptionistID) values 
(1, 'Stephanie', '1982-06-06', 'F', '2004-02-05', '2004-02-05', 4),
(2, 'Michelle', '1981-04-23', 'F', '2013-02-07', '2013-02-07', 43),
(3, 'Jean', '2008-08-16', 'F', '2007-04-08', '2007-04-08', 14),
(4, 'Daniel', '1991-05-30', 'M', '2006-09-11', '2006-09-11', 4),
(5, 'Marie', '1999-07-15', 'F', '2010-06-02', '2010-06-02', 42),
(6, 'Timothy', '1983-01-20', 'M', '2009-12-13', '2009-12-13', 26),
(7, 'Joyce', '2012-03-01', 'F', '2006-11-22', '2006-11-22', 47),
(8, 'Tina', '2013-07-22', 'F', '2009-09-24', '2009-09-24', 35),
(9, 'George', '1991-11-30', 'M', '2009-11-24', '2009-11-24', 12),
(10, 'Matthew', '1992-02-05', 'M', '2015-05-21', '2015-05-21', 42),
(11, 'Juan', '1990-03-31', 'M', '2013-05-27', '2013-05-27', 26),
(12, 'Albert', '1985-02-26', 'M', '2010-11-30', '2010-11-30', 39),
(13, 'Amy', '2012-12-29', 'F', '2015-08-21', '2015-08-21', 35),
(14, 'Alan', '1992-11-19', 'M', '2007-09-20', '2007-09-20', 50),
(15, 'Raymond', '1994-04-01', 'M', '2010-12-03', '2010-12-03', 41),
(16, 'Carol', '1985-08-23', 'F', '2004-08-23', '2004-08-23', 33),
(17, 'Debra', '1984-05-06', 'F', '2012-09-13', '2012-09-13', 38),
(18, 'Angela', '1990-02-22', 'F', '2008-08-21', '2008-08-21', 30),
(19, 'Ryan', '2015-08-30', 'M', '2005-04-27', '2005-04-27', 26),
(20, 'Theresa', '1992-01-14', 'F', '2009-08-07', '2009-08-07', 19),
(21, 'Sandra', '1990-05-20', 'F', '2004-10-18', '2004-10-18', 49),
(22, 'Martha', '2001-04-21', 'F', '2010-03-06', '2010-03-06', 29),
(23, 'Willie', '2000-03-10', 'M', '2015-02-22', '2015-02-22', 42),
(24, 'David', '2013-12-05', 'M', '2014-03-26', '2014-03-26', 50),
(25, 'Bonnie', '2010-05-13', 'F', '2011-04-17', '2011-04-17', 36),
(26, 'Shawn', '2007-04-08', 'M', '2006-09-11', '2006-09-11', 48),
(27, 'Debra', '2008-01-17', 'F', '2005-09-05', '2005-09-05', 1),
(28, 'Christina', '2013-01-02', 'F', '2009-02-03', '2009-02-03', 31),
(29, 'Randy', '2009-02-25', 'M', '2009-12-11', '2009-12-11', 3),
(30, 'Juan', '1993-01-11', 'M', '2010-02-27', '2010-02-27', 20),
(31, 'Gary', '1995-07-12', 'M', '2007-09-08', '2007-09-08', 19),
(32, 'Betty', '2010-12-30', 'F', '2005-07-10', '2005-07-10', 14),
(33, 'Arthur', '1995-06-23', 'M', '2014-02-10', '2014-02-10', 10),
(34, 'Lawrence', '1997-10-12', 'M', '2015-07-13', '2015-07-13', 48),
(35, 'Justin', '2009-08-04', 'M', '2015-08-01', '2015-08-01', 44),
(36, 'Beverly', '2009-12-18', 'F', '2008-03-03', '2008-03-03', 41),
(37, 'Brenda', '1981-06-04', 'F', '2012-06-12', '2012-06-12', 5),
(38, 'Earl', '2002-07-12', 'M', '2006-08-16', '2006-08-16', 33),
(39, 'Philip', '1993-07-06', 'M', '2012-12-06', '2012-12-06', 3),
(40, 'Juan', '1994-05-23', 'M', '2011-05-28', '2011-05-28', 35),
(41, 'Antonio', '1991-12-09', 'M', '2007-08-15', '2007-08-15', 27),
(42, 'Nicole', '1989-06-01', 'F', '2012-01-13', '2012-01-13', 34),
(43, 'Willie', '2013-10-25', 'M', '2014-08-28', '2014-08-28', 4),
(44, 'Dennis', '1993-03-14', 'M', '2009-09-11', '2009-09-11', 40),
(45, 'Roy', '1993-06-24', 'M', '2014-06-12', '2014-06-12', 21),
(46, 'Annie', '2002-03-04', 'F', '2015-10-03', '2015-10-03', 41),
(47, 'Chris', '1995-04-15', 'M', '2015-04-07', '2015-04-07', 7),
(48, 'Shawn', '2003-05-28', 'M', '2014-08-13', '2014-08-13', 2),
(49, 'Pamela', '1993-02-22', 'F', '2008-02-16', '2008-02-16', 8),
(50, 'Ashley', '2008-02-28', 'F', '2010-04-30', '2010-04-30', 39);

select * from patient;


insert into Room (roomID, roomType, status, patientID) values 
(1, 'Semi Private', 'F', 45),
(2, 'Semi Private', 'F', 21),
(3, 'Emergency', 'F', 31),
(4, 'Emergency', 'M', 18),
(5, 'Emergency', 'M', 6),
(6, 'Labor & Delivery', 'F', 5),
(7, 'Private', 'F', 47),
(8, 'Semi Private', 'M', 30),
(9, 'ICU', 'M', 29),
(10, 'Semi Private', 'F', 7),
(11, 'Standard ward', 'M', 49),
(12, 'Private', 'F', 8),
(13, 'Labor & Delivery', 'F', 16),
(14, 'Private', 'F', 38),
(15, 'Standard ward', 'F', 13),
(16, 'Emergency', 'F', 5),
(17, 'Semi Private', 'M', 42),
(18, 'Standard ward', 'M', 39),
(19, 'ICU', 'F', 13),
(20, 'Emergency', 'M', 45),
(21, 'Private', 'M', 35),
(22, 'ICU', 'M', 15),
(23, 'Semi Private', 'F', 21),
(24, 'Private', 'F', 39),
(25, 'ICU', 'F', 40),
(26, 'Labor & Delivery', 'F', 31),
(27, 'Labor & Delivery', 'F', 39),
(28, 'Semi Private', 'F', 10),
(29, 'Labor & Delivery', 'F', 3),
(30, 'ICU', 'F', 18),
(31, 'Semi Private', 'M', 21),
(32, 'Labor & Delivery', 'M', 34),
(33, 'ICU', 'M', 13),
(34, 'Labor & Delivery', 'F', 36),
(35, 'Emergency', 'M', 17),
(36, 'Semi Private', 'M', 16),
(37, 'Private', 'F', 35),
(38, 'ICU', 'M', 5),
(39, 'Standard ward', 'F', 10),
(40, 'Emergency', 'F', 22),
(41, 'ICU', 'F', 11),
(42, 'ICU', 'F', 10),
(43, 'ICU', 'M', 43),
(44, 'Semi Private', 'F', 5),
(45, 'Standard ward', 'F', 29),
(46, 'Semi Private', 'M', 22),
(47, 'Labor & Delivery', 'M', 45),
(48, 'Standard ward', 'M', 20),
(49, 'Labor & Delivery', 'M', 42),
(50, 'ICU', 'F', 48);

select * from room;

insert into nurse (staffID, staffName, gender, roomID) values 
(1, 'Jeremy', 'M', 16),
(2, 'Helen', 'F', 38),
(3, 'Amanda', 'F', 1),
(4, 'Ann', 'F', 19),
(5, 'Raymond', 'M', 8),
(6, 'Margaret', 'F', 47),
(7, 'Jimmy', 'M', 17),
(8, 'Ashley', 'F', 8),
(9, 'Julia', 'F', 6),
(10, 'Shirley', 'F', 28),
(11, 'Martin', 'M', 25),
(12, 'Wanda', 'F', 33),
(13, 'Aaron', 'M', 27),
(14, 'Norma', 'F', 41),
(15, 'Peter', 'M', 4),
(16, 'Jessica', 'F', 42),
(17, 'Jack', 'M', 21),
(18, 'Phillip', 'M', 10),
(19, 'Philip', 'M', 47),
(20, 'Shawn', 'M', 6),
(21, 'Kevin', 'M', 19),
(22, 'Lori', 'F', 6),
(23, 'Karen', 'F', 25),
(24, 'Sandra', 'F', 21),
(25, 'Jeffrey', 'M', 21),
(26, 'Christine', 'F', 42),
(27, 'Patrick', 'M', 30),
(28, 'Paul', 'M', 39),
(29, 'Katherine', 'F', 10),
(30, 'Larry', 'M', 50),
(31, 'Juan', 'M', 48),
(32, 'Nicole', 'F', 25),
(33, 'Amanda', 'F', 34),
(34, 'Joyce', 'F', 2),
(35, 'Aaron', 'M', 7),
(36, 'Jeffrey', 'M', 1),
(37, 'Timothy', 'M', 36),
(38, 'Aaron', 'M', 20),
(39, 'Brian', 'M', 7),
(40, 'Amanda', 'F', 42),
(41, 'Jason', 'M', 38),
(42, 'Larry', 'M', 40),
(43, 'Ralph', 'M', 20),
(44, 'Alice', 'F', 49),
(45, 'Edward', 'M', 16),
(46, 'Sharon', 'F', 41),
(47, 'Brian', 'M', 26),
(48, 'Carol', 'F', 34),
(49, 'Joseph', 'M', 4),
(50, 'Carolyn', 'F', 24);

select * from nurse;

insert into Receptionist (receptionistID, receptionistName, gender) values (1, 'Keith', 'M'),
(2, 'Charles', 'M'),
(3, 'Jesse', 'M'),
(4, 'Wanda', 'F'),
(5, 'Frank', 'M'),
(6, 'Helen', 'F'),
(7, 'Matthew', 'M'),
(8, 'Elizabeth', 'F'),
(9, 'Karen', 'F'),
(10, 'Annie', 'F'),
(11, 'Thomas', 'M'),
(12, 'Brian', 'M'),
(13, 'Clarence', 'M'),
(14, 'Gary', 'M'),
(15, 'Gloria', 'F'),
(16, 'Judith', 'F'),
(17, 'Sean', 'M'),
(18, 'Jeremy', 'M'),
(19, 'Daniel', 'M'),
(20, 'Catherine', 'F'),
(21, 'Howard', 'M'),
(22, 'Clarence', 'M'),
(23, 'Walter', 'M'),
(24, 'Samuel', 'M'),
(25, 'Kathryn', 'F'),
(26, 'Lori', 'F'),
(27, 'Adam', 'M'),
(28, 'Donna', 'F'),
(29, 'Marilyn', 'F'),
(30, 'Nicole', 'F'),
(31, 'Larry', 'M'),
(32, 'Eugene', 'M'),
(33, 'Doris', 'F'),
(34, 'Bruce', 'M'),
(35, 'Martin', 'M'),
(36, 'Tammy', 'F'),
(37, 'Antonio', 'M'),
(38, 'Victor', 'M'),
(39, 'Debra', 'F'),
(40, 'Edward', 'M'),
(41, 'Teresa', 'F'),
(42, 'Billy', 'M'),
(43, 'Gloria', 'F'),
(44, 'Anne', 'F'),
(45, 'Alice', 'F'),
(46, 'Mary', 'F'),
(47, 'Denise', 'F'),
(48, 'Gregory', 'M'),
(49, 'Stephen', 'M'),
(50, 'Martin', 'M');

select * from receptionist;

insert into Medicine (medicineCode, name, quantity, price, patientID) values 
(1, 'CUBA ORIGINAL', 45, 6541, 44),
(2, 'Digoxin', 37, 6971, 12),
(3, 'Clear Proof Acne System', 46, 7154, 24),
(4, 'Vancomycin Hydrochloride', 7, 8871, 41),
(5, 'Ibuprofen', 10, 5204, 16),
(6, 'PINUS STROBUS POLLEN', 37, 9983, 44),
(7, 'Alendronate Sodium', 36, 6421, 12),
(8, 'Mellow Out', 30, 1685, 50),
(9, 'Colistimethate', 18, 7856, 24),
(10, 'PERFECTION LUMIERE', 48, 6852, 30),
(11, 'Lemon', 23, 3027, 45),
(12, 'Oxaprozin', 8, 5310, 43),
(13, 'Nifedipine', 40, 6346, 38),
(14, 'Fluconazole', 8, 9516, 5),
(15, 'Gerbil Epithelium', 25, 832, 34),
(16, 'Diphenhydramine Hydrochloride', 42, 7822, 40),
(17, 'Olay Total Effects', 45, 5133, 30),
(18, 'PORE BB', 22, 406, 33),
(19, 'Wormwood', 23, 4688, 24),
(20, 'SODIUM SULFACETAMIDE', 17, 4372, 50),
(21, 'Plum Duo Emergency Eyewash', 20, 5502, 6),
(22, 'STOOL SOFTENER LAXATIVE', 25, 988, 16),
(23, 'AUGMENTIN', 38, 86, 8),
(24, 'Endopar M', 48, 6602, 49),
(25, 'Meijer Sport SPF 50', 45, 7762, 41),
(26, 'Facial SPF 30', 22, 6278, 8),
(27, 'Epsom Sal', 39, 3348, 10),
(28, 'Lamotrigine', 5, 9878, 15),
(29, 'venlafaxine hydrochloride', 14, 1904, 41),
(30, 'Stool Softener', 13, 7129, 22),
(31, 'Aldactone', 29, 8035, 39),
(32, 'Verapamil Hydrochloride', 11, 1539, 12),
(33, 'Morphine Sulfate', 5, 7533, 33),
(34, 'Tussin CF', 49, 6887, 32),
(35, 'Permethrin', 35, 2802, 23),
(36, 'SPF 15 Sunscreen', 20, 4178, 44),
(37, 'hydrocodone bitartrate', 36, 899, 47),
(38, 'Lisinopril', 5, 3662, 23),
(39, 'Hydralazine Hydrochloride', 25, 6348, 45),
(40, 'HYDROCODONE ACETAMINOPHEN', 27, 2847, 28),
(41, 'Cyclobenzaprine Hydrochloride', 41, 9940, 18),
(42, 'QUERCUS ALBA POLLEN', 50, 9264, 7),
(43, 'Adenocard', 27, 363, 41),
(44, 'STIFF JOINTS HP', 49, 6725, 33),
(45, 'Salsalate', 25, 4985, 16),
(46, 'Oxygen', 13, 7161, 3),
(47, 'Smart Sense Clearlax', 47, 1451, 24),
(48, 'Pioglitazone', 26, 3003, 20),
(49, 'Quality Antacid', 7, 6604, 49),
(50, 'Sedalmex', 42, 4418, 36);

select * from medicine;

insert into Bill (billNo, amount, patientID) values 
(1, 83870, 16),
(2, 14175, 26),
(3, 30951, 5),
(4, 90597, 8),
(5, 56159, 40),
(6, 94170, 17),
(7, 71349, 12),
(8, 16946, 32),
(9, 60293, 31),
(10, 17114, 23),
(11, 9548, 45),
(12, 19132, 4),
(13, 48195, 45),
(14, 94595, 23),
(15, 9153, 28),
(16, 96463, 40),
(17, 69358, 20),
(18, 73504, 42),
(19, 26161, 13),
(20, 85692, 19),
(21, 92058, 2),
(22, 72395, 18),
(23, 85899, 8),
(24, 45919, 15),
(25, 75511, 34),
(26, 37746, 15),
(27, 70860, 15),
(28, 23650, 10),
(29, 14423, 47),
(30, 26459, 37),
(31, 90619, 18),
(32, 7302, 50),
(33, 70567, 43),
(34, 10820, 11),
(35, 20057, 14),
(36, 93158, 16),
(37, 38079, 14),
(38, 68197, 26),
(39, 19087, 20),
(40, 51248, 42),
(41, 13844, 38),
(42, 98426, 11),
(43, 91708, 19),
(44, 84207, 24),
(45, 11997, 18),
(46, 78850, 2),
(47, 59374, 17),
(48, 52725, 23),
(49, 39706, 23),
(50, 23734, 24);

select * from bill;

/*INDEXING*/
create index IndexPatient on Patient(PatientID);