CREATE OR REPLACE PROCEDURE DeletePatient (
    p_AadharID VARCHAR2
) AS
BEGIN
    DELETE FROM Patient WHERE AadharID = p_AadharID;
END;
/

CREATE OR REPLACE PROCEDURE DeleteDoctor (
    p_AadharID VARCHAR2
) AS
BEGIN
    DELETE FROM Doctor WHERE AadharID = p_AadharID;
END;
/

CREATE OR REPLACE PROCEDURE DeletePharmaCompany (
    p_Name VARCHAR2
) AS
BEGIN
    DELETE FROM PharmaCompany WHERE Name = p_Name;
END;
/

CREATE OR REPLACE PROCEDURE DeleteDrug (
    p_TradeName VARCHAR2,
    p_CompanyName VARCHAR2
) AS
BEGIN
    DELETE FROM Drug 
    WHERE TradeName = p_TradeName AND CompanyName = p_CompanyName;
END;
/

CREATE OR REPLACE PROCEDURE DeletePharmacy (
    p_Name VARCHAR2
) AS
BEGIN
    DELETE FROM Pharmacy WHERE Name = p_Name;
END;
/

CREATE OR REPLACE PROCEDURE DeleteContract (
    p_ContractID NUMBER
) AS
BEGIN
    DELETE FROM Contract WHERE ContractID = p_ContractID;
END;
/

CREATE OR REPLACE PROCEDURE DeletePharmacyDrug (
    p_PharmacyName VARCHAR2,
    p_TradeName VARCHAR2,
    p_CompanyName VARCHAR2
) AS
BEGIN
    DELETE FROM PharmacyDrug
    WHERE PharmacyName = p_PharmacyName
      AND TradeName = p_TradeName
      AND CompanyName = p_CompanyName;
END;
/

CREATE OR REPLACE PROCEDURE DeletePrescription (
    p_PrescriptionID NUMBER
) AS
BEGIN
    DELETE FROM Prescription WHERE PrescriptionID = p_PrescriptionID;
END;
/
