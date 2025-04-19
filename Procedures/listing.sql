CREATE OR REPLACE PROCEDURE ListPatients (
    p_DoctorID VARCHAR2
) AS
BEGIN
    FOR rec IN (
        SELECT * FROM Patient WHERE PrimaryDoctorID = p_DoctorID
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Patient: ' || rec.Name || ', Aadhar: ' || rec.AadharID);
    END LOOP;
END;
