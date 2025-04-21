CREATE OR REPLACE PROCEDURE Contract_Details (
    CompanyName IN VARCHAR2,
    PharmacyName IN VARCHAR2
) AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Contract Details for Contract between ' || CompanyName || ' and ' || PharmacyName);
    DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------');

    FOR rec IN (
        SELECT pc.Pharmacy_Name, pc.Company_Name, pc.Start_Date, pc.End_Date, pc.Details, pc.Supervisor
        FROM Pharmacy_Contract pc
        WHERE pc.Company_Name = CompanyName
          AND pc.Pharmacy_Name = PharmacyName
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Pharmacy Name: ' || rec.Pharmacy_Name);
        DBMS_OUTPUT.PUT_LINE('Company Name: ' || rec.Company_Name);
        DBMS_OUTPUT.PUT_LINE('Start Date: ' || TO_CHAR(rec.Start_Date, 'YYYY-MM-DD'));
        DBMS_OUTPUT.PUT_LINE('End Date: ' || TO_CHAR(rec.End_Date, 'YYYY-MM-DD'));
        DBMS_OUTPUT.PUT_LINE('Details: ' || rec.Details);
        DBMS_OUTPUT.PUT_LINE('Supervisor: ' || rec.Supervisor);
        DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------');
    END LOOP;
END;
/