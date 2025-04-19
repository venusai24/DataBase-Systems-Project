CREATE OR REPLACE PROCEDURE GetPrescriptionReportByPatientAndPeriod (
    p_PatientID IN VARCHAR2,
    p_StartDate IN DATE,
    p_EndDate IN DATE
) AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Prescription Report for Patient ID: ' || p_PatientID);
    DBMS_OUTPUT.PUT_LINE('From: ' || TO_CHAR(p_StartDate, 'YYYY-MM-DD') || ' To: ' || TO_CHAR(p_EndDate, 'YYYY-MM-DD'));
    DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------');

    FOR rec IN (
        SELECT p.PrescriptionID, p.PrescDate, p.DoctorID, 
               d.TradeName, d.CompanyName, d.Quantity
        FROM Prescription p
        JOIN PrescriptionDrug d ON p.PrescriptionID = d.PrescriptionID
        WHERE p.PatientID = p_PatientID
          AND p.PrescDate BETWEEN p_StartDate AND p_EndDate
        ORDER BY p.PrescDate
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Date: ' || TO_CHAR(rec.PrescDate, 'YYYY-MM-DD'));
        DBMS_OUTPUT.PUT_LINE('Doctor ID: ' || rec.DoctorID);
        DBMS_OUTPUT.PUT_LINE('Drug: ' || rec.TradeName || ' | Company: ' || rec.CompanyName || ' | Qty: ' || rec.Quantity);
        DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------');
    END LOOP;
END;
/


CREATE OR REPLACE PROCEDURE GetPrescriptionDetails (
    p_AadharID VARCHAR2,
    p_Date DATE
) AS
BEGIN
    FOR rec IN (
        SELECT pd.TradeName, pd.CompanyName, pd.Quantity
        FROM Prescription p
        JOIN PrescriptionDrug pd ON p.PatientID = pd.PatientID
        WHERE p.PatientID = p_AadharID AND p.PrescDate = p_Date
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Drug: ' || rec.TradeName || ', Company: ' || rec.CompanyName || ', Qty: ' || rec.Quantity);
    END LOOP;
END;

CREATE OR REPLACE FUNCTION GetDrugsByCompany (
    p_CompanyName VARCHAR2
) RETURN SYS_REFCURSOR IS
    c_drugs SYS_REFCURSOR;
BEGIN
    OPEN c_drugs FOR
    SELECT * FROM Drug WHERE CompanyName = p_CompanyName;
    RETURN c_drugs;
END;

