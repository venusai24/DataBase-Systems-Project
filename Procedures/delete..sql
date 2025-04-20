-- Procedure to delete a Doctor and cascade dependent records
CREATE OR REPLACE PROCEDURE delete_doctor(
    p_aadharid IN VARCHAR2
) AS
BEGIN
    DELETE FROM PrescriptionDrug WHERE PrescriptionID IN (
        SELECT PrescriptionID FROM Prescription WHERE DoctorID = p_aadharid
    );
    DELETE FROM Prescription WHERE DoctorID = p_aadharid;
    DELETE FROM Patient WHERE Primary_Physician = p_aadharid;
    DELETE FROM Doctor WHERE AadharID = p_aadharid;
END;
/

-- Procedure to delete a Patient and cascade dependent records
CREATE OR REPLACE PROCEDURE delete_patient(
    p_aadharid IN VARCHAR2
) AS
BEGIN
    DELETE FROM PrescriptionDrug WHERE PrescriptionID IN (
        SELECT PrescriptionID FROM Prescription WHERE PatientID = p_aadharid
    );
    DELETE FROM Prescription WHERE PatientID = p_aadharid;
    DELETE FROM Patient WHERE AadharID = p_aadharid;
END;
/

-- Procedure to delete a Pharmaceutical Company and cascade dependent records
CREATE OR REPLACE PROCEDURE delete_pharmaceutical_company(
    p_company_name IN VARCHAR2
) AS
BEGIN
    DELETE FROM Pharmacy_Contract WHERE Company_Name = p_company_name;
    DELETE FROM Pharmacy_Drug WHERE PharmCompany = p_company_name;
    DELETE FROM Drug WHERE Company_Name = p_company_name;
    DELETE FROM Pharmaceutical_Company WHERE Company_Name = p_company_name;
END;
/

-- Procedure to delete a Drug and cascade dependent records
CREATE OR REPLACE PROCEDURE delete_drug(
    p_company_name IN VARCHAR2,
    p_trade_name IN VARCHAR2
) AS
BEGIN
    DELETE FROM PrescriptionDrug WHERE TradeName = p_trade_name AND CompanyName = p_company_name;
    DELETE FROM Pharmacy_Drug WHERE PharmCompany = p_company_name AND Tradename = p_trade_name;
    DELETE FROM Drug WHERE Company_Name = p_company_name AND Trade_Name = p_trade_name;
END;
/

-- Procedure to delete a Pharmacy and cascade dependent records
CREATE OR REPLACE PROCEDURE delete_pharmacy(
    p_name IN VARCHAR2
) AS
BEGIN
    DELETE FROM Pharmacy_Contract WHERE Pharmacy_Name = p_name;
    DELETE FROM Pharmacy_Drug WHERE Pharmacy_Name = p_name;
    DELETE FROM Pharmacy_Phone WHERE Name = p_name;
    DELETE FROM Pharmacy WHERE Name = p_name;
END;
/

-- Procedure to delete a Pharmacy Phone
CREATE OR REPLACE PROCEDURE delete_pharmacy_phone(
    p_name IN VARCHAR2,
    p_phone IN VARCHAR2
) AS
BEGIN
    DELETE FROM Pharmacy_Phone WHERE Name = p_name AND Phone = p_phone;
END;
/

-- Procedure to delete a Prescription and cascade dependent records
CREATE OR REPLACE PROCEDURE delete_prescription(
    p_prescriptionid IN NUMBER
) AS
BEGIN
    DELETE FROM PrescriptionDrug WHERE PrescriptionID = p_prescriptionid;
    DELETE FROM Prescription WHERE PrescriptionID = p_prescriptionid;
END;
/

-- Procedure to delete a PrescriptionDrug
CREATE OR REPLACE PROCEDURE delete_prescription_drug(
    p_prescriptionid IN NUMBER,
    p_tradename IN VARCHAR2,
    p_companyname IN VARCHAR2
) AS
BEGIN
    DELETE FROM PrescriptionDrug WHERE PrescriptionID = p_prescriptionid AND TradeName = p_tradename AND CompanyName = p_companyname;
END;
/

-- Procedure to delete a Pharmacy_Drug
CREATE OR REPLACE PROCEDURE delete_pharmacy_drug(
    p_pharmacy_name IN VARCHAR2,
    p_pharmcompany IN VARCHAR2,
    p_tradename IN VARCHAR2
) AS
BEGIN
    DELETE FROM Pharmacy_Drug WHERE Pharmacy_Name = p_pharmacy_name AND PharmCompany = p_pharmcompany AND Tradename = p_tradename;
END;
/

-- Procedure to delete a Pharmacy_Contract
CREATE OR REPLACE PROCEDURE delete_pharmacy_contract(
    p_pharmacy_name IN VARCHAR2,
    p_company_name IN VARCHAR2
) AS
BEGIN
    DELETE FROM Pharmacy_Contract WHERE Pharmacy_Name = p_pharmacy_name AND Company_Name = p_company_name;
END;
/