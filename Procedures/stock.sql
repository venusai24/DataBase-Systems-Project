CREATE OR REPLACE PROCEDURE GetStock (
    p_PharmacyName VARCHAR2
) AS
BEGIN
    FOR rec IN (
        SELECT Tradename, PharmCompany, Quantity, Price FROM Pharmacy_Drug
        WHERE Pharmacy_Name = p_PharmacyName
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Drug: ' || rec.Tradename || ' - Company: ' || rec.PharmCompany || ' - Quantity: ' || rec.Quantity || '- Price: ' || rec.Price);
    END LOOP;
END;
/

