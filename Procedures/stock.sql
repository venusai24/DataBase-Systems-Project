CREATE OR REPLACE PROCEDURE GetStock (
    p_PharmacyName VARCHAR2
) AS
BEGIN
    DBMS_OUTPUT.PUT_LINE(RPAD('Drug', 20) || RPAD('Company', 25) || RPAD('Quantity', 10) || RPAD('Price', 10));
    DBMS_OUTPUT.PUT_LINE(RPAD('-', 65, '-'));
    FOR rec IN (
        SELECT Tradename, PharmCompany, Quantity, Price FROM Pharmacy_Drug
        WHERE Pharmacy_Name = p_PharmacyName
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(
            RPAD(rec.Tradename, 20) ||
            RPAD(rec.PharmCompany, 25) ||
            RPAD(TO_CHAR(rec.Quantity), 10) ||
            RPAD(TO_CHAR(rec.Price), 10)
        );
    END LOOP;
END;
/

