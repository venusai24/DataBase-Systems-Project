-- Update Patient and cascade changes to dependent tables if AadharID or PrimaryDoctorID changes
CREATE OR REPLACE PROCEDURE UpdatePatient (
    p_AadharID VARCHAR2,
    p_Name VARCHAR2,
    p_Age NUMBER,
    p_HouseNr VARCHAR2,
    p_StreetNr VARCHAR2,
    p_City VARCHAR2,
    p_PinCode VARCHAR2,
    p_Primary_Physician VARCHAR2
) AS
BEGIN
    UPDATE Patient
    SET Name = p_Name,
        Age = p_Age,
        HouseNr = p_HouseNr,
        StreetNr = p_StreetNr,
        City = p_City,
        PinCode = p_PinCode,
        Primary_Physician = p_Primary_Physician
    WHERE AadharID = p_AadharID;
END;
/

-- Update Doctor
CREATE OR REPLACE PROCEDURE UpdateDoctor (
    p_AadharID VARCHAR2,
    p_Name VARCHAR2,
    p_Specialty VARCHAR2,
    p_Years_of_Experience NUMBER
) AS
BEGIN
    UPDATE Doctor
    SET Name = p_Name,
        Specialty = p_Specialty,
        Years_of_Experience = p_Years_of_Experience
    WHERE AadharID = p_AadharID;
END;
/

-- Update Drug
CREATE OR REPLACE PROCEDURE UpdateDrug (
    p_CompanyName VARCHAR2,
    p_TradeName VARCHAR2,
    p_Formula VARCHAR2
) AS
BEGIN
    UPDATE Drug
    SET Formula = p_Formula
    WHERE Company_Name = p_CompanyName AND Trade_Name = p_TradeName;
END;
/

-- Update PharmacyDrug
CREATE OR REPLACE PROCEDURE UpdatePharmacyDrug (
    p_Pharmacy_Name VARCHAR2,
    p_CompanyName VARCHAR2,
    p_TradeName VARCHAR2,
    p_Price NUMBER
) AS
BEGIN
    UPDATE Pharmacy_Drug
    SET Price = p_Price
    WHERE Pharmacy_Name = p_Pharmacy_Name AND PharmCompany = p_CompanyName AND Tradename = p_TradeName;
END;
/

-- Update Pharmacy
CREATE OR REPLACE PROCEDURE UpdatePharmacy (
    p_Name VARCHAR2,
    p_Building_Number VARCHAR2,
    p_Street_Number VARCHAR2,
    p_City VARCHAR2,
    p_Pin_Code VARCHAR2
) AS
BEGIN
    UPDATE Pharmacy
    SET Building_Number = p_Building_Number,
        Street_Number = p_Street_Number,
        City = p_City,
        Pin_Code = p_Pin_Code
    WHERE Name = p_Name;
END;
/

-- Update Pharmaceutical Company
CREATE OR REPLACE PROCEDURE UpdatePharmaceuticalCompany (
    p_Company_Name VARCHAR2,
    p_Phone_Number VARCHAR2
) AS
BEGIN
    UPDATE Pharmaceutical_Company
    SET Phone_Number = p_Phone_Number
    WHERE Company_Name = p_Company_Name;
END;
/

-- Update PrescriptionDrug
CREATE OR REPLACE PROCEDURE UpdatePrescriptionDrug (
    p_PrescriptionID NUMBER,
    p_TradeName VARCHAR2,
    p_CompanyName VARCHAR2,
    p_Quantity NUMBER
) AS
BEGIN
    UPDATE PrescriptionDrug
    SET Quantity = p_Quantity
    WHERE PrescriptionID = p_PrescriptionID
      AND TradeName = p_TradeName
      AND CompanyName = p_CompanyName;
END;
/

-- Update Prescription
CREATE OR REPLACE PROCEDURE UpdatePrescription (
    p_PrescriptionID NUMBER,
    p_PatientID VARCHAR2,
    p_DoctorID VARCHAR2,
    p_PrescDate DATE
) AS
BEGIN
    UPDATE Prescription
    SET PatientID = p_PatientID,
        DoctorID = p_DoctorID,
        PrescDate = p_PrescDate
    WHERE PrescriptionID = p_PrescriptionID;
END;
/

-- Update Pharmacy_Contract
CREATE OR REPLACE PROCEDURE UpdatePharmacyContract (
    p_Pharmacy_Name VARCHAR2,
    p_Company_Name VARCHAR2,
    p_Start_Date DATE,
    p_End_Date DATE,
    p_Details VARCHAR2,
    p_Supervisor VARCHAR2
) AS
BEGIN
    UPDATE Pharmacy_Contract
    SET Start_Date = p_Start_Date,
        End_Date = p_End_Date,
        Details = p_Details,
        Supervisor = p_Supervisor
    WHERE Pharmacy_Name = p_Pharmacy_Name AND Company_Name = p_Company_Name;
END;
/
