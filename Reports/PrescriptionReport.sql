CREATE OR REPLACE PROCEDURE GetPrescriptionReportByPatientAndPeriod (
    p_PatientID IN VARCHAR2,
    p_StartDate IN DATE,
    p_EndDate IN DATE
) AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Prescription Report for Patient ID: ' || p_PatientID);
    DBMS_OUTPUT.PUT_LINE('From: ' || TO_CHAR(p_StartDate, 'YYYY-MM-DD') || ' To: ' || TO_CHAR(p_EndDate, 'YYYY-MM-DD'));
    DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------');

    FOR presc_rec IN (
        SELECT p.PrescriptionID, p.DoctorID, d.Name AS DoctorName, p.PrescDate
        FROM Prescription p
        JOIN Doctor d ON p.DoctorID = d.AadharID
        WHERE p.PatientID = p_PatientID
          AND p.PrescDate BETWEEN p_StartDate AND p_EndDate
        ORDER BY p.PrescDate
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Prescription');
        DBMS_OUTPUT.PUT_LINE('  ' || presc_rec.DoctorID || ' (' || presc_rec.DoctorName || ') ' || TO_CHAR(presc_rec.PrescDate, 'YYYY-MM-DD'));
        DBMS_OUTPUT.PUT_LINE('  ' || RPAD('Company', 30) || RPAD('Drug', 30) || RPAD('Quantity', 10));
        FOR drug_rec IN (
            SELECT CompanyName, TradeName, Quantity
            FROM PrescriptionDrug
            WHERE PrescriptionID = presc_rec.PrescriptionID
        ) LOOP
            DBMS_OUTPUT.PUT_LINE('  ' || RPAD(drug_rec.CompanyName, 30) || RPAD(drug_rec.TradeName, 30) || RPAD(TO_CHAR(drug_rec.Quantity), 10));
        END LOOP;
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
        JOIN PrescriptionDrug pd ON p.PrescriptionID = pd.PrescriptionID
        WHERE p.PatientID = p_AadharID AND p.PrescDate = p_Date
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Drug: ' || rec.TradeName || ', Company: ' || rec.CompanyName || ', Qty: ' || rec.Quantity);
    END LOOP;
END;
/

CREATE OR REPLACE PROCEDURE PrintDrugsByCompany (
    p_CompanyName VARCHAR2
) AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Drugs produced by company: ' || p_CompanyName);
    DBMS_OUTPUT.PUT_LINE('------------------------------------------');

    FOR drug_rec IN (
        SELECT Trade_Name, Formula
        FROM Drug
        WHERE Company_Name = p_CompanyName
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Trade Name: ' || drug_rec.Trade_Name || ' | Formula: ' || drug_rec.Formula);
    END LOOP;
END;
/


