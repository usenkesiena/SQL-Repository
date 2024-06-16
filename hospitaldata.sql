--TASK 1
-- PART 1

-- CREATING PATIENTS TABLE
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY IDENTITY(1,1),
    FullName NVARCHAR(100) NOT NULL,
    Address NVARCHAR(255) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Insurance NVARCHAR(50) NOT NULL,
    Username NVARCHAR(50) UNIQUE NOT NULL,
    Password NVARCHAR(255) NOT NULL,
    Email NVARCHAR(100),
    Telephone NVARCHAR(15),
    DateLeft DATE
);



--INSERTING VALUES INTO PATIENT TABLE
INSERT INTO Patients (FullName, Address, DateOfBirth, Insurance, Username, Password, Email, Telephone, DateLeft)
VALUES
('Anosike Tare', 'No 9 henry street', '2003-05-15', 'stable insurance ltd', 'Tare_anosike', 'Tare2003$', 'misstare@gmail.com', '08099761234', NULL),
('Oke Oghene', 'jakpa road street', '1990-08-22', 'relayed insurance company', 'okeoghene', 'enehgoeko', 'okeoghene@gmail.com', '09087654321', NULL),
('Jimi Owen', 'no 18 queen idia road', '1975-03-30', 'allied Insurance Company', 'jimowens', 'jimi123owens', NULL, '09111223383', NULL),
('Aminu Mustapha', '31 ugbowo road ', '1985-07-14', 'Insurance Arrays', 'Mustify', 'musty419#', 'mustify@gmail.com', '07099941989', NULL),
('Michael osue', 'no 6 aka avenue St', '2015-09-05', 'big rays insured', 'osuemicheal', 'osue222micheal', NUll, '08123234545', NULL),
('Sarah izokaiah', '44 new site estate', '2000-12-25', 'null', 'sarah_izokhai', 'sarah###', 'sarahizzy@gmail.com', '+234815556666', NULL),
('emenahor Nonye', 'no 25 crd road', '1988-11-11', 'aggy Insurance ', 'nonye emenahor', 'nons999', 'emenahornons@gmail.com', '07088289999', NULL),
('Usen Elohor' , 'No 1 obada close', '1997-12-05', 'stable insurance ltd', 'usen_elohor', 'elohor1997', 'elohorusen@gmail.com', '09129467234', NULL),
('Progress Erharbor', 'no 17 praise center jakpa road street', '1999-03-17', 'aggy insurance company', 'Progressusen', 'progress123', 'progressusen@gmail.com', '08067659329', NULL),
('Mudiaga Macs', 'no 18 ssq road', '1989-03-13', 'aggy Insurance Company', 'Mudiqt', 'mudimacs#', NULL, '07155523338', NULL),
('Shelter Omoregie', '31 ugbowo road ', '1985-07-14', 'Insurance Arrays', 'shelteromo', 'sheltey1985pink', 'shelteromoregie@gmail.com', '070229874439', NULL),
('Bona Elochukwu', 'no 22 old market St', '1999-05-03', 'big rays insured', 'bonaumeaku', 'elochukwu1', NUll, '090228966711', NULL),
('chukwuma Blessing', '44 car wash road', '2001-12-11', 'null', 'blessing_chuks', 'blesschukwuma000', 'chukwumablessing@gmail.com', '0912229756340', NULL)




-- INSERTING MORE VALUES INTO PATIENT TABLE
INSERT INTO Patients (FullName, Address, DateOfBirth, Insurance, Username, Password, Email, Telephone, DateLeft)
VALUES
('Akpevwe Onatere', 'Lagos, Nigeria', '1980-01-15', 'Aetna', 'john_doe', 'password123', 'john.doe@example.com', '08012345678', NULL),
('Sadoh Vera', 'Abuja, Nigeria', '1975-02-20', 'UnitedHealthcare', 'jane_smith', 'password123', 'jane.smith@example.com', '08023456789', NULL),
('Nnsodima Charity', 'Kano, Nigeria', '1970-03-25', 'Cigna', 'alice_johnson', 'password123', 'alice.johnson@example.com', '08034567890', NULL),
('Osas Osayi', 'Ibadan, Nigeria', '1965-04-30', 'BlueCross', 'robert_brown', 'password123', 'robert.brown@example.com', '08045678901', NULL),
('Isreal Akakari', 'Port Harcourt, Nigeria', '1978-05-15', 'Kaiser', 'emily_davis', 'password123', 'emily.davis@example.com', '08056789012', NULL),
('Michael Omaweru', 'Benin City, Nigeria', '1980-06-20', 'Humana', 'michael_miller', 'password123', 'michael.miller@example.com', '08067890123', NULL),
('Jessica Onatere', 'Jos, Nigeria', '1979-07-25', 'Aetna', 'jessica_wilson', 'password123', 'jessica.wilson@example.com', '08078901234', NULL),
('David Erharbor', 'Enugu, Nigeria', '1977-08-30', 'UnitedHealthcare', 'david_moore', 'password123', 'david.moore@example.com', '08089012345', NULL),
('Sarah Aroture', 'Calabar, Nigeria', '1982-09-05', 'Cigna', 'sarah_taylor', 'password123', 'sarah.taylor@example.com', '08090123456', NULL),
('Chris Anderson', 'Ilorin, Nigeria', '1973-10-10', 'BlueCross', 'chris_anderson', 'password123', 'chris.anderson@example.com', '08001234567', NULL),
('Patricia Oshobugie', 'Maiduguri, Nigeria', '1972-11-15', 'Kaiser', 'patricia_thomas', 'password123', 'patricia.thomas@example.com', '08012345670', NULL),
('Matthew Adjayi', 'Abeokuta, Nigeria', '1968-12-20', 'Humana', 'matthew_jackson', 'password123', 'matthew.jackson@example.com', '08023456781', NULL),
('Mrs Laura Avwerusuo', 'Uyo, Nigeria', '1971-01-25', 'Aetna', 'laura_white', 'password123', 'laura.white@example.com', '08034567892', NULL),
('James Harrison', 'Ogbomosho, Nigeria', '1983-02-28', 'UnitedHealthcare', 'james_harris', 'password123', 'james.harris@example.com', '08045678903', NULL),
('Linda Martins', 'Akure, Nigeria', '1980-03-05', 'Cigna', 'linda_martin', 'password123', 'linda.martin@example.com', '08056789014', NULL),
('Joshua Oghenekevwe', 'Kaduna, Nigeria', '1975-04-10', 'BlueCross', 'joshua_thompson', 'password123', 'joshua.thompson@example.com', '08067890125', NULL),
('Karen Oghenekevwe', 'Owerri, Nigeria', '1979-05-15', 'Kaiser', 'karen_robinson', 'password123', 'karen.robinson@example.com', '08078901236', NULL),
('Ryan Omaweru', 'Onitsha, Nigeria', '1976-06-20', 'Humana', 'ryan_walker', 'password123', 'ryan.walker@example.com', '08089012347', NULL),
('Betty Usen', 'Ife, Nigeria', '1980-07-25', 'Aetna', 'betty_hall', 'password123', 'betty.hall@example.com', '08090123458', NULL),
('Jason Adjayi', 'Warri, Nigeria', '1981-08-30', 'UnitedHealthcare', 'jason_young', 'password123', 'jason.young@example.com', '08001234569', NULL),
('Angela Erharbor', 'Ado Ekiti, Nigeria', '1978-09-05', 'Cigna', 'angela_king', 'password123', 'angela.king@example.com', '08012345670', NULL),
('Kevin Scott', 'Sokoto, Nigeria', '1969-10-10', 'BlueCross', 'kevin_wright', 'password123', 'kevin.wright@example.com', '08023456781', NULL),
('Nancy Scott', 'Zaria, Nigeria', '1977-11-15', 'Kaiser', 'nancy_scott', 'password123', 'nancy.scott@example.com', '08034567892', NULL);




-- CREATING DEPARTMENT TABLE
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(100) NOT NULL
);



-- INSERTING VALUES INTO DEPARTMENT TABLE
INSERT INTO Departments (DepartmentName, DepartmentID)
VALUES
('Cardiology'),
('Neurology'),
('Orthopedics'),
('Pediatrics'),
('Dermatology'),
('Gastroenterology'),
('Oncology');


--INSERTING MORE VALUES INTO DEPARTMENT TABLE
INSERT INTO Departments (DepartmentName)
VALUES
    ('Cardiology'),
    ('Neurology'),
    ('Oncology'),
    ('Pediatrics'),
    ('Radiology'),
    ('Orthopedics'),
    ('Dermatology'),
    ('Gynecology'),
    ('Urology'),
    ('Ophthalmology'),
    ('Gastroenterology'),
    ('Hematology'),
    ('Endocrinology'),
    ('Pulmonology'),
    ('Nephrology'),
    ('Rheumatology'),
    ('Infectious Diseases'),
    ('Allergy and Immunology'),
    ('Anesthesiology'),
    ('Pathology'),
    ('Psychiatry'),
    ('Surgery'),
    ('Emergency Medicine');

    INSERT INTO Departments (DepartmentName)
    VALUES
    ('Emergency Medicine'),
    ('General Medicine'),
    ('Plastic Surgery'),
    ('Occupational Medicine'),
    ('Rehabilitation'),
    ('Sports Medicine');



--CREATING DOCTORS TABLE
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY IDENTITY(1,1),
    FullName NVARCHAR(100) NOT NULL,
    DepartmentID INT NOT NULL,
    CONSTRAINT FK_Doctors_DepartmentID FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);






--INSERTING VALUES INTO DOCTORS TABLE
INSERT INTO Doctors (FullName, DepartmentID)
VALUES
('Dr. Bright Anukam', 1),
('Dr. Jeffery Olisa', 2),
('Dr. Osas Azeez', 3),
('Dr. Caroline Ugochi', 1),
('Dr. Adewunmi Olorundare', 2),
('Dr. Somto Kosi', 3),
('Dr. Jolomi Tejere', 1);


--INSERTING MORE VALUES INTO DOCTORS TABLE
INSERT INTO Doctors(FullName,DepartmentID)
VALUES
    ('Dr. Adeola Adetokunbo',24),
    ('Dr. Chiamaka Akintola',5),
    ('Dr. Babajide Bamidele',7),
    ('Dr. Funmilayo Chukwuma',9),
    ('Dr. Ifeanyi Durojaiye',11),
    ('Dr. Kemi Eze',13),
    ('Dr. Adebayo Fashola',15),
    ('Dr. Nneka Ige',17),
    ('Dr. Bolaji Idowu',19),
    ('Dr. Yemi Jibola',21),
    ('Dr. Emeka Kalu',23),
    ('Dr. Sade Lawal',25),
    ('Dr. Chinedu Madu',27),
    ('Dr. Oluwatoyin Nwachukwu',29),
    ('Dr. Folake Okafor',31),
    ('Dr. Bisi Oladipo',33),
    ('Dr. Tunde Omisore',35),
    ('Dr. Yetunde Onyekachi',4),
    ('Dr. Ngozi Opara',6),
    ('Dr. Abiodun Osagie',8),
    ('Dr. Niyi Peters',10),
    ('Dr. Chisom Richards',12),
    ('Dr. Kayode Sanni',14),
    ('Dr. Chinelo Taiwo',16),
    ('Dr. Solomon Uche',17),
    ('Dr. Abimbola Udo',18),
    ('Dr. Kehinde Williams',19),
    ('Dr. Temidayo Yusuf',20),
    ('Dr. Obinna Zubair',22);

-- CREATING A NEW COLUMN CALLED SPECIALITY IN DOCTORS TABLE
ALTER TABLE DOCTORS
ADD Speciality VARCHAR(175)

UPDATE DOCTORS 
SET Speciality = CASE

WHEN FullName = 'Dr. Bridget Anukam' THEN 'Gastroenterologist'
WHEN FullName = 'Dr. Jeffery Olisa' THEN 'Cardiologist'
WHEN FullName = 'Dr. Osas Azeez' THEN 'Neurologist'
WHEN FullName ='Dr. Caroline Ugochi' THEN 'Gastroenterologist'
WHEN FullName ='Dr. Adewunmi Olorundare' THEN 'Cardiologist'
WHEN FullName ='Dr. Somto Kosi' THEN 'Neurologist'
WHEN FullName ='Dr. Jolomi Tejere' THEN 'Gastroenterologist'
WHEN FullName ='Dr. Adeola Adetokunbo' THEN 'Gastroenterologist'
WHEN FullName ='Dr. Chiamaka Akintola' THEN 'Pediatrician'
WHEN FullName ='Dr. Babajide Bamidele' THEN 'Dermatologist'
WHEN FullName ='Dr. Funmilayo Chukwuma'THEN 'Endocrinologist'
WHEN FullName ='Dr. Ifeanyi Durojaiye' THEN 'General Surgeon'
WHEN FullName ='Dr. Kemi Eze'THEN 'Ophthalmologist'
WHEN FullName ='Dr. Adebayo Fashola' THEN 'Hematologist'
WHEN FullName ='Dr. Nneka Ige' THEN 'Rheumatologist'
WHEN FullName ='Dr. Bolaji Idowu' THEN 'Gynecologist'
WHEN FullName ='Dr. Yemi Jibola' THEN 'Family Physician'
WHEN FullName ='Dr. Emeka Kalu' THEN 'Internist'
WHEN FullName ='Dr. Sade Lawal' THEN 'Anesthesiologist'
WHEN FullName ='Dr. Chinedu Madu' THEN 'Neonatologist'
WHEN FullName ='Dr. Oluwatoyin Nwachukwu' THEN 'Pathologist'
WHEN FullName ='Dr. Folake Okafor' THEN 'Plastic Surgeon'
WHEN FullName ='Dr. Bisi Oladipo' THEN 'Pain Management Specialist'
WHEN FullName ='Dr. Tunde Omisore' THEN 'Sleep Medicine Specialist'
WHEN FullName ='Dr. Yetunde Onyekachi' THEN 'Orthopedic Surgeon'
WHEN FullName ='Dr. Ngozi Opara' THEN 'Oncologist'
WHEN FullName ='Dr. Abiodun Osagie' THEN 'Dermatologist'
WHEN FullName ='Dr. Niyi Peters' THEN 'Psychiatrist'
WHEN FullName ='Dr. Chisom Richards'THEN 'Radiologist'
WHEN FullName ='Dr. Kayode Sanni' THEN 'Urologist'
WHEN FullName ='Dr. Chinelo Taiwo'THEN 'Hematologist'
WHEN FullName ='Dr. Solomon Uche' THEN 'Rheumatologist'
WHEN FullName ='Dr. Abimbola Udo' THEN 'Infectious Disease Specialist'
WHEN FullName ='Dr. Kehinde Williams'THEN 'Gynecologist'
WHEN FullName ='Dr. Temidayo Yusuf'THEN 'General Surgeon'
WHEN FullName ='Dr. Obinna Zubair'THEN 'Cardiologist'
END;

-- CREATING APPOINTMENT TABLE
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY IDENTITY(1,1),
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    DepartmentID INT NOT NULL,
    AppointmentDate DATE NOT NULL,
    AppointmentTime TIME NOT NULL,
    Status NVARCHAR(20) CHECK (Status IN ('Pending', 'Cancelled', 'Completed')),
    CONSTRAINT FK_Appointments_PatientID FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    CONSTRAINT FK_Appointments_DoctorID FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    CONSTRAINT FK_Appointments_DepartmentID FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    CONSTRAINT CHK_AppointmentDate_NotInPast CHECK (AppointmentDate >= CAST(GETDATE() AS DATE))
);




-- INSERTING VALUES INTO APPOINTMENT TABLES
INSERT INTO Appointments (PatientID, DoctorID, DepartmentID, AppointmentDate, AppointmentTime, Status)
VALUES
(1, 16, 1, '2024-06-11', '08:50', 'Pending'),
(2, 17, 2, '2024-06-08', '14:30', 'Completed'),
(3, 18, 3, '2024-06-15', '11:20', 'Cancelled'),
(4, 19, 1, '2024-06-24', '02:00', 'Pending'),
(5, 20, 2, '2024-06-10', '13:00', 'Completed'),
(6, 21, 3, '2024-06-29', '17:40', 'Cancelled'),
(7, 22, 1, '2024-06-23', '21:00', 'Pending');


--INSERTING MORE VALUES INTO APPOINTMENT TABLE
INSERT INTO Appointments (PatientID, DoctorID, DepartmentID, AppointmentDate, AppointmentTime, Status)
VALUES
    (1, 24, 1, '2024-06-15', '09:00', 'Pending'),
    (2, 25, 2, '2024-06-17', '10:00', 'Completed'),
    (3, 26, 3, '2024-06-20', '11:00', 'Cancelled'),
    (4, 27, 4, '2024-06-21', '09:00', 'Pending'),
    (5, 28, 5, '2024-06-30', '10:00', 'Completed'),
    (6, 29, 6, '2024-06-29', '11:00', 'Cancelled'),
    (7, 30, 7, '2024-08-25', '09:00', 'Pending'),
    (8, 31, 8, '2024-08-19', '10:00', 'Completed'),
    (9, 32, 9, '2024-08-07', '11:00', 'Cancelled'),
    (10, 33, 10, '2024-09-18', '09:00', 'Pending'),
    (11, 34, 11, '2024-08-22', '10:00', 'Completed'),
    (12, 35, 12, '2024-07-24', '11:00', 'Cancelled'),
    (13, 36, 13, '2024-07-27', '09:00', 'Pending'),
    (14, 37, 14, '2024-07-15', '10:00', 'Completed'),
    (15, 38, 15, '2024-07-12', '11:00', 'Cancelled'),
    (16, 39, 16, '2024-07-19', '09:00', 'Pending'),
    (17, 40, 17, '2024-07-28', '10:00', 'Completed'),
    (18, 41, 18, '2024-09-15', '11:00', 'Cancelled'),
    (19, 42, 19, '2024-09-11', '09:00', 'Pending'),
    (20, 43, 20, '2024-09-14', '10:00', 'Completed'),
    (21, 44, 21, '2024-07-17', '11:00', 'Cancelled'),
    (22, 45, 22, '2024-07-20', '09:00', 'Pending'),
    (23, 46, 23, '2024-07-19', '10:00', 'Completed'),
    (24, 47, 24, '2024-09-10', '11:00', 'Cancelled'),
    (25, 48, 25, '2024-08-30', '09:00', 'Pending'),
    (26, 49, 26, '2024-07-22', '10:00', 'Completed'),
    (27, 50, 27, '2024-07-01', '11:00', 'Cancelled'),
    (28, 51, 28, '2024-09-01', '09:00', 'Pending'),
    (29, 52, 29, '2024-08-13', '10:00', 'Completed');



    --CREATING FEEDBACK COLUMN IN APPOINTMENT TABLE
    ALTER TABLE Appointments
    ADD Feedback NVARCHAR(225)



--CREATING MEDICAL RECORDS
CREATE TABLE MedicalRecords (
    MedicalRecordID INT PRIMARY KEY IDENTITY(1,1),
    PatientID INT NOT NULL,
    AppointmentID INT NOT NULL,
    Diagnoses NVARCHAR(255),
    Medicines NVARCHAR(255),
    PrescribedDate DATE,
    Allergies NVARCHAR(255),
    CONSTRAINT FK_MedicalRecords_PatientID FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    CONSTRAINT FK_MedicalRecords_AppointmentID FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);




--INSERTING VALUES INTO MEDICAL RECORDS
INSERT INTO MedicalRecords (PatientID, AppointmentID, Diagnoses, Medicines, PrescribedDate, Allergies)
VALUES
(1, 9, 'Flu', 'Emzolyn', '2024-06-11', 'None'),
(2, 10, 'Headache', 'Panadol', '2024-06-09', 'Penicillin'),
(3, 11, 'none', 'none', '2024-06-15', 'none'),
(4, 12, 'Diabetes', 'Metformin', '2024-06-24', 'None'),
(5, 13, 'Asthma', 'Cromolyn', '2024-06-10', 'None'),
(6, 14, 'none', 'none', '2024-06-29', 'None'),
(7, 15, 'Allergy', 'Loratadine', '2024-06-23', 'Pollen');



--INSERTING MORE VALUES INTO MEDICAL RECORDS
-- Inserting 29 records starting from PatientID 16 and AppointmentID 16
INSERT INTO MedicalRecords (PatientID, AppointmentID, Diagnoses, Medicines, PrescribedDate, Allergies)
VALUES
    (8, 22, 'Fever', 'Paracetamol', '2024-06-15', 'None'),
    (9, 23, 'Cough', 'Cough Syrup', '2024-06-16', 'None'),
    (10, 24, 'Headache', 'Aspirin', '2024-06-17', 'None'),
    (11, 25, 'Sore throat', 'Antibiotics', '2024-06-18', 'None'),
    (12, 26, 'Back pain', 'Painkillers', '2024-06-19', 'None'),
    (13, 27, 'Allergy', 'Antihistamines', '2024-06-20', 'Pollen'),
    (14, 28, 'Stomach ache', 'Antacids', '2024-06-21', 'None'),
    (15, 29, 'Sprained ankle', 'Rest and Ice', '2024-06-22', 'None'),
    (16, 30, 'High blood pressure', 'Beta-blockers', '2024-06-23', 'None'),
    (17, 31, 'Diabetes', 'Insulin', '2024-06-24', 'Sugar'),
    (18, 32, 'Influenza', 'Tamiflu', '2024-06-25', 'None'),
    (19, 33, 'Migraine', 'Sumatriptan', '2024-06-26', 'None'),
    (20, 34, 'Sinusitis', 'Decongestants', '2024-06-27', 'Pollen'),
    (21, 35, 'Acid reflux', 'Protonix', '2024-06-28', 'None'),
    (22, 36, 'Arthritis', 'NSAIDs', '2024-06-29', 'None'),
    (23, 37, 'Asthma', 'Albuterol', '2024-06-30', 'Dust'),
    (24, 38, 'Eczema', 'Topical steroids', '2024-07-01', 'None'),
    (25, 39, 'Hypertension', 'ACE inhibitors', '2024-07-02', 'None'),
    (26, 40, 'Gastroenteritis', 'Rehydration solution', '2024-07-03', 'None'),
    (27, 41, 'Depression', 'SSRIs', '2024-07-04', 'None'),
    (28, 42, 'Anemia', 'Iron supplements', '2024-07-05', 'None'),
    (29, 43, 'Obesity', 'Orlistat', '2024-07-06', 'None'),
    (30, 44, 'Insomnia', 'Melatonin', '2024-07-07', 'None'),
    (31, 45, 'Bronchitis', 'Antibiotics', '2024-07-08', 'None'),
    (32, 46, 'Kidney stones', 'Pain management', '2024-07-09', 'None'),
    (33, 47, 'Conjunctivitis', 'Antibiotic eye drops', '2024-07-10', 'None'),
    (34, 48, 'Urinary tract infection', 'Antibiotics', '2024-07-11', 'None'),
    (35, 49, 'Psoriasis', 'Topical treatments', '2024-07-12', 'None'),
    (36, 50, 'Rheumatoid arthritis', 'DMARDs', '2024-07-13', 'None');

--- ALTER TABLE MEDICAL RECORDS
UPDATE MedicalRecords 
SET Diagnoses = 'Cancer'
WHERE PatientID = 11

UPDATE MedicalRecords 
SET Diagnoses = 'Cancer'
WHERE PatientID = 21

UPDATE MedicalRecords 
SET Diagnoses = 'Cancer'
WHERE PatientID = 33;


-- Part 2. Add the constraint to check that the appointment date is not in the past.
-- Already added in the code written for appointment





-- Part 3. List all the patients with older than 40 and have Cancer in diagnosis.
SELECT *
FROM Patients P
JOIN MedicalRecords MR
ON P.PatientID = MR.PatientID
WHERE DATEDIFF(YEAR,DateOfBirth,GETDATE()) >40
AND Diagnoses LIKE '%CANCER%';


-- Part 4. The hospital also requires stored procedures or user-defined functions to do the following things:
--a) Search the database of the hospital for matching character strings by name of medicine.
--- Results should be sorted with most recent medicine prescribed date first.

CREATE PROCEDURE Search_For_Medicine1
    @Medicines VARCHAR(100)
AS
BEGIN
    SELECT *
    FROM MedicalRecords
    WHERE Medicines LIKE '%' + @Medicines + '%'
    ORDER BY PrescribedDate DESC
END;

 EXEC Search_For_Medicine1
 @Medicines = 'panadol';





--b) Return a full list of diagnosis and allergies for a specific patient who has an appointment today
----  (i.e., the system date when the query is run)

CREATE PROCEDURE Get_Patient_Diagnosis_and_Allergies
    @PatientID INT
AS
BEGIN
    DECLARE @Today DATE = GETDATE();

    SELECT MR.Diagnoses, MR.Allergies
    FROM MedicalRecords MR
    JOIN Appointments A
    ON MR.AppointmentID = A.AppointmentID
    WHERE A.PatientID = @PatientID
      AND CONVERT(DATE, A.AppointmentDate) = @Today;
END;

EXEC Get_Patient_Diagnosis_and_Allergies
@PatientID = '1'



--c) Update the details for an existing doctor

CREATE PROCEDURE Update_Doctor_Details
    @DoctorID INT,
    @FullName NVARCHAR(100),
    @DepartmentID INT
AS
BEGIN
    UPDATE Doctors
    SET FullName = @FullName,
        DepartmentID = @DepartmentID
    WHERE DoctorID = @DoctorID;
END;


EXEC Update_Doctor_Details
@DoctorID = '16',
@FullName = 'Dr. Bridget Anukam',
@DepartmentID = '30';


--d) Delete the appointment who status is already completed.
CREATE PROCEDURE DELETE_APPOINTMENT
AS
BEGIN
DELETE FROM Appointments
WHERE Status = 'completed';
END;



--- Part 5. The hospitals wants to view the appointment date and time,
-- showing all previous and current appointments for all doctors,
-- and including details of the department (the doctor is associated with),
-- doctor’s specialty and any associate review/feedback given for a doctor.
-- You should create a view containing all the required information.

CREATE VIEW Hospital_Appointments
AS
SELECT
    A.AppointmentID,
    A.AppointmentDate,
    A.AppointmentTime,
    A.Feedback,
    D.FullName,
    D.DepartmentID,
    DE.DepartmentName
FROM
    Appointments A
   JOIN Doctors D ON A.DoctorID = D.DoctorID
   JOIN Departments DE ON D.DepartmentID = DE.DepartmentID;




--Part 6. Create a trigger so that the current state of an appointment can be changed to available when it is cancelled.
CREATE TRIGGER CurrentAppointmentState
ON Appointments
AFTER UPDATE
AS
BEGIN
    IF UPDATE(Status)
    BEGIN
        UPDATE Appointments
        SET Status = 'available'
        WHERE AppointmentID IN (SELECT AppointmentID FROM deleted WHERE Status = 'cancelled');
    END
END;




--Part 7 Write a select query which allows the hospital to identify 
--the number of completed appointments with the specialty of doctors as ‘Gastroenterologists’.

SELECT COUNT(*) AS Completed_Appointments
FROM Appointments A
JOIN Doctors D ON A.DoctorID = D.DoctorID
WHERE D.Speciality = 'Gastroenterologist'
AND A.Status = 'completed';


