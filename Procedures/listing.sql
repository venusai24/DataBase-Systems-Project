CREATE OR REPLACE PROCEDURE ListPatients (
    p_DoctorID VARCHAR2
) AS
BEGIN
    FOR rec IN (
        SELECT * FROM Patient WHERE Primary_Physician = p_DoctorID
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Patient: ' || rec.Name || ', Aadhar: ' || rec.AadharID);
    END LOOP;
END;
/
