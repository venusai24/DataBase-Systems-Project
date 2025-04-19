CREATE OR REPLACE PROCEDURE AddPatient (
    p_AadharID VARCHAR2,
    p_Name VARCHAR2,
    p_Address VARCHAR2,
    p_Age NUMBER,
    p_PrimaryDoctorID VARCHAR2
) AS
BEGIN
    INSERT INTO Patient (AadharID, Name, Address, Age, PrimaryDoctorID)
    VALUES (p_AadharID, p_Name, p_Address, p_Age, p_PrimaryDoctorID);
END;
/

CREATE OR REPLACE PROCEDURE AddDoctor (
    p_AadharID VARCHAR2,
    p_Name VARCHAR2,
    p_Specialty VARCHAR2,
    p_YearsExperience NUMBER
) AS
BEGIN
    INSERT INTO Doctor (AadharID, Name, Specialty, YearsExperience)
    VALUES (p_AadharID, p_Name, p_Specialty, p_YearsExperience);
END;
/
CREATE OR REPLACE PROCEDURE AddPharmaCompany (
    p_Name VARCHAR2,
    p_PhoneNumber VARCHAR2
) AS
BEGIN
    INSERT INTO PharmaCompany (Name, PhoneNumber)
    VALUES (p_Name, p_PhoneNumber);
END;
/
CREATE OR REPLACE PROCEDURE AddDrug (
    p_TradeName VARCHAR2,
    p_Formula VARCHAR2,
    p_CompanyName VARCHAR2
) AS
BEGIN
    INSERT INTO Drug (TradeName, Formula, CompanyName)
    VALUES (p_TradeName, p_Formula, p_CompanyName);
END;
/

CREATE OR REPLACE PROCEDURE AddPharmacy (
    p_Name VARCHAR2,
    p_Address VARCHAR2,
    p_Phone VARCHAR2
) AS
BEGIN
    INSERT INTO Pharmacy (Name, Address, Phone)
    VALUES (p_Name, p_Address, p_Phone);
END;
/
CREATE OR REPLACE PROCEDURE AddPharmacyDrug (
    p_PharmacyName VARCHAR2,
    p_TradeName VARCHAR2,
    p_CompanyName VARCHAR2,
    p_Price NUMBER,
    p_Stock NUMBER
) AS
BEGIN
    INSERT INTO PharmacyDrug (PharmacyName, TradeName, CompanyName, Price, Stock)
    VALUES (p_PharmacyName, p_TradeName, p_CompanyName, p_Price, p_Stock);
END;
/
CREATE OR REPLACE PROCEDURE AddPrescription (
    p_PatientID VARCHAR2,
    p_DoctorID VARCHAR2,
    p_PrescDate DATE,
    p_PrescriptionID OUT NUMBER
) AS
BEGIN
    INSERT INTO Prescription (PatientID, DoctorID, PrescDate)
    VALUES (p_PatientID, p_DoctorID, p_PrescDate)
    RETURNING PrescriptionID INTO p_PrescriptionID;
END;
/

CREATE OR REPLACE PROCEDURE AddPrescriptionDrug (
    p_PrescriptionID NUMBER,
    p_TradeName VARCHAR2,
    p_CompanyName VARCHAR2,
    p_Quantity NUMBER
) AS
BEGIN
    INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
    VALUES (p_PrescriptionID, p_TradeName, p_CompanyName, p_Quantity);
END;
/

CREATE OR REPLACE PROCEDURE AddContract (
    p_PharmaName VARCHAR2,
    p_PharmacyName VARCHAR2,
    p_StartDate DATE,
    p_EndDate DATE,
    p_Content VARCHAR2,
    p_SupervisorID VARCHAR2
) AS
BEGIN
    INSERT INTO Contract (PharmaName, PharmacyName, StartDate, EndDate, Content, SupervisorID)
    VALUES (p_PharmaName, p_PharmacyName, p_StartDate, p_EndDate, p_Content, p_SupervisorID);
END;
/
