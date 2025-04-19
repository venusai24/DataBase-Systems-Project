CREATE OR REPLACE PROCEDURE UpdatePatient (
    p_AadharID VARCHAR2,
    p_Name VARCHAR2,
    p_Address VARCHAR2,
    p_Age NUMBER,
    p_PrimaryDoctorID VARCHAR2
) AS
BEGIN
    UPDATE Patient
    SET Name = p_Name,
        Address = p_Address,
        Age = p_Age,
        PrimaryDoctorID = p_PrimaryDoctorID
    WHERE AadharID = p_AadharID;
END;
/

CREATE OR REPLACE PROCEDURE UpdateDoctor (
    p_AadharID VARCHAR2,
    p_Name VARCHAR2,
    p_Specialty VARCHAR2,
    p_YearsExperience NUMBER
) AS
BEGIN
    UPDATE Doctor
    SET Name = p_Name,
        Specialty = p_Specialty,
        YearsExperience = p_YearsExperience
    WHERE AadharID = p_AadharID;
END;
/

CREATE OR REPLACE PROCEDURE UpdateDrug (
    p_TradeName VARCHAR2,
    p_CompanyName VARCHAR2,
    p_Formula VARCHAR2
) AS
BEGIN
    UPDATE Drug
    SET Formula = p_Formula
    WHERE TradeName = p_TradeName AND CompanyName = p_CompanyName;
END;
/

CREATE OR REPLACE PROCEDURE UpdatePharmacyDrug (
    p_PharmacyName VARCHAR2,
    p_TradeName VARCHAR2,
    p_CompanyName VARCHAR2,
    p_NewPrice NUMBER,
    p_NewStock NUMBER
) AS
BEGIN
    UPDATE PharmacyDrug
    SET Price = p_NewPrice,
        Stock = p_NewStock
    WHERE PharmacyName = p_PharmacyName AND TradeName = p_TradeName AND CompanyName = p_CompanyName;
END;
/

CREATE OR REPLACE PROCEDURE UpdateContract (
    p_ContractID NUMBER,
    p_StartDate DATE,
    p_EndDate DATE,
    p_Content VARCHAR2,
    p_SupervisorID VARCHAR2
) AS
BEGIN
    UPDATE Contract
    SET StartDate = p_StartDate,
        EndDate = p_EndDate,
        Content = p_Content,
        SupervisorID = p_SupervisorID
    WHERE ContractID = p_ContractID;
END;
/

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


CREATE OR REPLACE PROCEDURE UpdatePharmacyDrug (
    p_PharmacyName VARCHAR2,
    p_TradeName VARCHAR2,
    p_CompanyName VARCHAR2,
    p_Price NUMBER,
    p_Stock NUMBER
) AS
BEGIN
    UPDATE PharmacyDrug
    SET Price = p_Price,
        Stock = p_Stock
    WHERE PharmacyName = p_PharmacyName
      AND TradeName = p_TradeName
      AND CompanyName = p_CompanyName;
END;
/
