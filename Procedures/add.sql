-- Procedure to add a new Doctor
CREATE OR REPLACE PROCEDURE add_doctor(
    p_aadharid IN VARCHAR2,
    p_name IN VARCHAR2,
    p_specialty IN VARCHAR2,
    p_years_of_experience IN NUMBER
) AS
BEGIN
    INSERT INTO Doctor (AadharID, Name, Specialty, Years_of_Experience)
    VALUES (p_aadharid, p_name, p_specialty, p_years_of_experience);
END;
/

-- Procedure to add a new Patient
CREATE OR REPLACE PROCEDURE add_patient(
    p_aadharid IN VARCHAR2,
    p_name IN VARCHAR2,
    p_age IN NUMBER,
    p_housenr IN VARCHAR2,
    p_streetnr IN VARCHAR2,
    p_city IN VARCHAR2,
    p_pincode IN VARCHAR2,
    p_primary_physician IN VARCHAR2
) AS
BEGIN
    INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician)
    VALUES (p_aadharid, p_name, p_age, p_housenr, p_streetnr, p_city, p_pincode, p_primary_physician);
END;
/

-- Procedure to add a new Pharmaceutical Company
CREATE OR REPLACE PROCEDURE add_pharmaceutical_company(
    p_company_name IN VARCHAR2,
    p_phone_number IN VARCHAR2
) AS
BEGIN
    INSERT INTO Pharmaceutical_Company (Company_Name, Phone_Number)
    VALUES (p_company_name, p_phone_number);
END;
/

-- Procedure to add a new Drug
CREATE OR REPLACE PROCEDURE add_drug(
    p_company_name IN VARCHAR2,
    p_trade_name IN VARCHAR2,
    p_formula IN VARCHAR2
) AS
BEGIN
    INSERT INTO Drug (Company_Name, Trade_Name, Formula)
    VALUES (p_company_name, p_trade_name, p_formula);
END;
/

-- Procedure to add a new Pharmacy
CREATE OR REPLACE PROCEDURE add_pharmacy(
    p_name IN VARCHAR2,
    p_building_number IN VARCHAR2,
    p_street_number IN VARCHAR2,
    p_city IN VARCHAR2,
    p_pin_code IN VARCHAR2
) AS
BEGIN
    INSERT INTO Pharmacy (Name, Building_Number, Street_Number, City, Pin_Code)
    VALUES (p_name, p_building_number, p_street_number, p_city, p_pin_code);
END;
/

-- Procedure to add a new Pharmacy Phone
CREATE OR REPLACE PROCEDURE add_pharmacy_phone(
    p_name IN VARCHAR2,
    p_phone IN VARCHAR2
) AS
BEGIN
    INSERT INTO Pharmacy_Phone (Name, Phone)
    VALUES (p_name, p_phone);
END;
/

-- Procedure to add a new Prescription
CREATE OR REPLACE PROCEDURE add_prescription(
    p_patientid IN VARCHAR2,
    p_doctorid IN VARCHAR2,
    p_prescdate IN DATE,
    p_prescriptionid OUT NUMBER
) AS
BEGIN
    INSERT INTO Prescription (PatientID, DoctorID, PrescDate)
    VALUES (p_patientid, p_doctorid, p_prescdate)
    RETURNING PrescriptionID INTO p_prescriptionid;
END;
/

-- Procedure to add a new PrescriptionDrug
CREATE OR REPLACE PROCEDURE add_prescription_drug(
    p_prescriptionid IN NUMBER,
    p_tradename IN VARCHAR2,
    p_companyname IN VARCHAR2,
    p_quantity IN NUMBER
) AS
BEGIN
    INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
    VALUES (p_prescriptionid, p_tradename, p_companyname, p_quantity);
END;
/

-- Procedure to add a new Pharmacy_Drug
CREATE OR REPLACE PROCEDURE add_pharmacy_drug(
    p_pharmacy_name IN VARCHAR2,
    p_pharmcompany IN VARCHAR2,
    p_tradename IN VARCHAR2,
    p_price IN NUMBER
) AS
BEGIN
    INSERT INTO Pharmacy_Drug (Pharmacy_Name, PharmCompany, Tradename, Price)
    VALUES (p_pharmacy_name, p_pharmcompany, p_tradename, p_price);
END;
/

-- Procedure to add a new Pharmacy_Contract
CREATE OR REPLACE PROCEDURE add_pharmacy_contract(
    p_pharmacy_name IN VARCHAR2,
    p_company_name IN VARCHAR2,
    p_start_date IN DATE,
    p_end_date IN DATE,
    p_details IN VARCHAR2,
    p_supervisor IN VARCHAR2
) AS
BEGIN
    INSERT INTO Pharmacy_Contract (Pharmacy_Name, Company_Name, Start_Date, End_Date, Details, Supervisor)
    VALUES (p_pharmacy_name, p_company_name, p_start_date, p_end_date, p_details, p_supervisor);
END;
/