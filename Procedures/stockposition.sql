CREATE OR REPLACE PROCEDURE GetStock (
    p_PharmacyName VARCHAR2
) AS
BEGIN
    FOR rec IN (
        SELECT TradeName, CompanyName, Quantity FROM PharmacyDrug
        WHERE PharmacyName = p_PharmacyName
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Drug: ' || rec.TradeName || ' - Company: ' || rec.CompanyName || ' - Quantity: ' || rec.Quantity || '- Price:' || rec.Price);
    END LOOP;
END;


