CREATE OR REPLACE PROCEDURE GetStock (
    p_PharmacyName VARCHAR2
) AS
BEGIN
    FOR rec IN (
        SELECT TradeName, CompanyName, Stock FROM PharmacyDrug
        WHERE PharmacyName = p_PharmacyName
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Drug: ' || rec.TradeName || ' - Company: ' || rec.CompanyName || ' - Stock: ' || rec.Stock);
    END LOOP;
END;

CREATE OR REPLACE PROCEDURE GetContactDetails (
    p_PharmacyName VARCHAR2
) AS
BEGIN
    FOR rec IN (
        SELECT c.PharmaName, p.PhoneNumber
        FROM Contract c
        JOIN PharmaCompany p ON c.PharmaName = p.Name
        WHERE c.PharmacyName = p_PharmacyName
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Company: ' || rec.PharmaName || ', Phone: ' || rec.PhoneNumber);
    END LOOP;
END;
