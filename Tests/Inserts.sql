-- Insert Doctors (3 doctors)
INSERT INTO Doctor (AadharID, Name, Specialty, Years_of_Experience) VALUES ('D1001', 'Dr. Asha Mehra', 'Cardiology', 15);
INSERT INTO Doctor (AadharID, Name, Specialty, Years_of_Experience) VALUES ('D1002', 'Dr. Ravi Kumar', 'Neurology', 10);
INSERT INTO Doctor (AadharID, Name, Specialty, Years_of_Experience) VALUES ('D1003', 'Dr. Priya Singh', 'Pediatrics', 8);

-- Insert Patients (18 patients, 6 per doctor)
INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician) VALUES ('P2001', 'Anil Sharma', 45, '12A', 'MG Road', 'Delhi', '110001', 'D1001');
INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician) VALUES ('P2002', 'Sunita Verma', 38, '34B', 'Park Street', 'Delhi', '110002', 'D1001');
INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician) VALUES ('P2003', 'Rohit Gupta', 29, '56C', 'Ring Road', 'Delhi', '110003', 'D1001');
INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician) VALUES ('P2004', 'Meena Joshi', 52, '78D', 'Lajpat Nagar', 'Delhi', '110024', 'D1001');
INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician) VALUES ('P2005', 'Vikas Jain', 33, '90E', 'Saket', 'Delhi', '110017', 'D1001');
INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician) VALUES ('P2006', 'Kiran Desai', 41, '11F', 'Defence Colony', 'Delhi', '110024', 'D1001');

INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician) VALUES ('P2007', 'Amit Patel', 50, '22A', 'Ashram Road', 'Ahmedabad', '380013', 'D1002');
INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician) VALUES ('P2008', 'Neha Shah', 27, '44B', 'Navrangpura', 'Ahmedabad', '380009', 'D1002');
INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician) VALUES ('P2009', 'Suresh Reddy', 36, '66C', 'Bopal', 'Ahmedabad', '380058', 'D1002');
INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician) VALUES ('P2010', 'Priya Nair', 31, '88D', 'Satellite', 'Ahmedabad', '380015', 'D1002');
INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician) VALUES ('P2011', 'Rahul Mehta', 43, '100E', 'Vastrapur', 'Ahmedabad', '380015', 'D1002');
INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician) VALUES ('P2012', 'Sneha Iyer', 39, '12F', 'Maninagar', 'Ahmedabad', '380008', 'D1002');

INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician) VALUES ('P2013', 'Deepak Chawla', 28, '13A', 'Sector 17', 'Chandigarh', '160017', 'D1003');
INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician) VALUES ('P2014', 'Ritu Malhotra', 34, '35B', 'Sector 22', 'Chandigarh', '160022', 'D1003');
INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician) VALUES ('P2015', 'Manoj Saini', 40, '57C', 'Sector 44', 'Chandigarh', '160047', 'D1003');
INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician) VALUES ('P2016', 'Shalini Kapoor', 25, '79D', 'Sector 15', 'Chandigarh', '160015', 'D1003');
INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician) VALUES ('P2017', 'Gaurav Bansal', 37, '91E', 'Sector 10', 'Chandigarh', '160010', 'D1003');
INSERT INTO Patient (AadharID, Name, Age, HouseNr, StreetNr, City, PinCode, Primary_Physician) VALUES ('P2018', 'Pooja Arora', 32, '14F', 'Sector 8', 'Chandigarh', '160008', 'D1003');

-- Insert Pharmaceutical Companies
INSERT INTO Pharmaceutical_Company (Company_Name, Phone_Number) VALUES ('MediLife Ltd', '011-23456789');
INSERT INTO Pharmaceutical_Company (Company_Name, Phone_Number) VALUES ('CureWell Pharma', '022-98765432');
INSERT INTO Pharmaceutical_Company (Company_Name, Phone_Number) VALUES ('Healix Biotech', '080-5551234');
INSERT INTO Pharmaceutical_Company (Company_Name, Phone_Number) VALUES ('Sunrise Remedies', '040-8884321');

-- Insert Drugs
INSERT INTO Drug (Company_Name, Trade_Name, Formula) VALUES ('MediLife Ltd', 'CardioPlus', 'Aspirin 75mg');
INSERT INTO Drug (Company_Name, Trade_Name, Formula) VALUES ('MediLife Ltd', 'NeuroMax', 'Gabapentin 300mg');
INSERT INTO Drug (Company_Name, Trade_Name, Formula) VALUES ('CureWell Pharma', 'PediaCare', 'Paracetamol 250mg');
INSERT INTO Drug (Company_Name, Trade_Name, Formula) VALUES ('CureWell Pharma', 'PainAway', 'Ibuprofen 400mg');
INSERT INTO Drug (Company_Name, Trade_Name, Formula) VALUES ('Healix Biotech', 'HealFast', 'Amoxicillin 500mg');
INSERT INTO Drug (Company_Name, Trade_Name, Formula) VALUES ('Healix Biotech', 'AllerFree', 'Cetirizine 10mg');
INSERT INTO Drug (Company_Name, Trade_Name, Formula) VALUES ('Sunrise Remedies', 'SunPain', 'Diclofenac 50mg');
INSERT INTO Drug (Company_Name, Trade_Name, Formula) VALUES ('Sunrise Remedies', 'SunCough', 'Dextromethorphan 15mg');

-- Insert Pharmacies
INSERT INTO Pharmacy (Name, Building_Number, Street_Number, City, Pin_Code) VALUES ('HealthFirst Pharmacy', '101', 'Main Street', 'Delhi', '110001');
INSERT INTO Pharmacy (Name, Building_Number, Street_Number, City, Pin_Code) VALUES ('CityMed Pharmacy', '202', 'Park Avenue', 'Ahmedabad', '380009');
INSERT INTO Pharmacy (Name, Building_Number, Street_Number, City, Pin_Code) VALUES ('Wellness Pharmacy', '303', 'Lake Road', 'Bangalore', '560001');
INSERT INTO Pharmacy (Name, Building_Number, Street_Number, City, Pin_Code) VALUES ('CarePlus Pharmacy', '404', 'Hill Street', 'Hyderabad', '500001');

-- Insert Pharmacy Phones
INSERT INTO Pharmacy_Phone (Name, Phone) VALUES ('HealthFirst Pharmacy', '011-12345678');
INSERT INTO Pharmacy_Phone (Name, Phone) VALUES ('HealthFirst Pharmacy', '011-87654321');
INSERT INTO Pharmacy_Phone (Name, Phone) VALUES ('CityMed Pharmacy', '079-23456789');
INSERT INTO Pharmacy_Phone (Name, Phone) VALUES ('Wellness Pharmacy', '080-22223333');
INSERT INTO Pharmacy_Phone (Name, Phone) VALUES ('CarePlus Pharmacy', '040-33334444');

-- Insert Prescriptions (one per patient for simplicity)
INSERT INTO Prescription (PatientID, DoctorID, PrescDate) VALUES ('P2001', 'D1001', DATE '2024-04-01');
INSERT INTO Prescription (PatientID, DoctorID, PrescDate) VALUES ('P2002', 'D1001', DATE '2024-04-02');
INSERT INTO Prescription (PatientID, DoctorID, PrescDate) VALUES ('P2003', 'D1001', DATE '2024-04-03');
INSERT INTO Prescription (PatientID, DoctorID, PrescDate) VALUES ('P2004', 'D1001', DATE '2024-04-04');
INSERT INTO Prescription (PatientID, DoctorID, PrescDate) VALUES ('P2005', 'D1001', DATE '2024-04-05');
INSERT INTO Prescription (PatientID, DoctorID, PrescDate) VALUES ('P2006', 'D1001', DATE '2024-04-06');
INSERT INTO Prescription (PatientID, DoctorID, PrescDate) VALUES ('P2007', 'D1002', DATE '2024-04-01');
INSERT INTO Prescription (PatientID, DoctorID, PrescDate) VALUES ('P2008', 'D1002', DATE '2024-04-02');
INSERT INTO Prescription (PatientID, DoctorID, PrescDate) VALUES ('P2009', 'D1002', DATE '2024-04-03');
INSERT INTO Prescription (PatientID, DoctorID, PrescDate) VALUES ('P2010', 'D1002', DATE '2024-04-04');
INSERT INTO Prescription (PatientID, DoctorID, PrescDate) VALUES ('P2011', 'D1002', DATE '2024-04-05');
INSERT INTO Prescription (PatientID, DoctorID, PrescDate) VALUES ('P2012', 'D1002', DATE '2024-04-06');
INSERT INTO Prescription (PatientID, DoctorID, PrescDate) VALUES ('P2013', 'D1003', DATE '2024-04-01');
INSERT INTO Prescription (PatientID, DoctorID, PrescDate) VALUES ('P2014', 'D1003', DATE '2024-04-02');
INSERT INTO Prescription (PatientID, DoctorID, PrescDate) VALUES ('P2015', 'D1003', DATE '2024-04-03');
INSERT INTO Prescription (PatientID, DoctorID, PrescDate) VALUES ('P2016', 'D1003', DATE '2024-04-04');
INSERT INTO Prescription (PatientID, DoctorID, PrescDate) VALUES ('P2017', 'D1003', DATE '2024-04-05');
INSERT INTO Prescription (PatientID, DoctorID, PrescDate) VALUES ('P2018', 'D1003', DATE '2024-04-06');

-- Insert PrescriptionDrug using actual PrescriptionID

INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
SELECT PrescriptionID, 'CardioPlus', 'MediLife Ltd', 30
FROM Prescription WHERE PatientID = 'P2001' AND DoctorID = 'D1001' AND PrescDate = DATE '2024-04-01';

INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
SELECT PrescriptionID, 'CardioPlus', 'MediLife Ltd', 30
FROM Prescription WHERE PatientID = 'P2002' AND DoctorID = 'D1001' AND PrescDate = DATE '2024-04-02';

INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
SELECT PrescriptionID, 'CardioPlus', 'MediLife Ltd', 30
FROM Prescription WHERE PatientID = 'P2003' AND DoctorID = 'D1001' AND PrescDate = DATE '2024-04-03';

INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
SELECT PrescriptionID, 'CardioPlus', 'MediLife Ltd', 30
FROM Prescription WHERE PatientID = 'P2004' AND DoctorID = 'D1001' AND PrescDate = DATE '2024-04-04';

INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
SELECT PrescriptionID, 'CardioPlus', 'MediLife Ltd', 30
FROM Prescription WHERE PatientID = 'P2005' AND DoctorID = 'D1001' AND PrescDate = DATE '2024-04-05';

INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
SELECT PrescriptionID, 'CardioPlus', 'MediLife Ltd', 30
FROM Prescription WHERE PatientID = 'P2006' AND DoctorID = 'D1001' AND PrescDate = DATE '2024-04-06';

INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
SELECT PrescriptionID, 'NeuroMax', 'MediLife Ltd', 20
FROM Prescription WHERE PatientID = 'P2007' AND DoctorID = 'D1002' AND PrescDate = DATE '2024-04-01';

INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
SELECT PrescriptionID, 'NeuroMax', 'MediLife Ltd', 20
FROM Prescription WHERE PatientID = 'P2008' AND DoctorID = 'D1002' AND PrescDate = DATE '2024-04-02';

INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
SELECT PrescriptionID, 'NeuroMax', 'MediLife Ltd', 20
FROM Prescription WHERE PatientID = 'P2009' AND DoctorID = 'D1002' AND PrescDate = DATE '2024-04-03';

INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
SELECT PrescriptionID, 'NeuroMax', 'MediLife Ltd', 20
FROM Prescription WHERE PatientID = 'P2010' AND DoctorID = 'D1002' AND PrescDate = DATE '2024-04-04';

INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
SELECT PrescriptionID, 'NeuroMax', 'MediLife Ltd', 20
FROM Prescription WHERE PatientID = 'P2011' AND DoctorID = 'D1002' AND PrescDate = DATE '2024-04-05';

INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
SELECT PrescriptionID, 'NeuroMax', 'MediLife Ltd', 20
FROM Prescription WHERE PatientID = 'P2012' AND DoctorID = 'D1002' AND PrescDate = DATE '2024-04-06';

INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
SELECT PrescriptionID, 'PediaCare', 'CureWell Pharma', 15
FROM Prescription WHERE PatientID = 'P2013' AND DoctorID = 'D1003' AND PrescDate = DATE '2024-04-01';

INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
SELECT PrescriptionID, 'PediaCare', 'CureWell Pharma', 15
FROM Prescription WHERE PatientID = 'P2014' AND DoctorID = 'D1003' AND PrescDate = DATE '2024-04-02';

INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
SELECT PrescriptionID, 'PediaCare', 'CureWell Pharma', 15
FROM Prescription WHERE PatientID = 'P2015' AND DoctorID = 'D1003' AND PrescDate = DATE '2024-04-03';

INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
SELECT PrescriptionID, 'PediaCare', 'CureWell Pharma', 15
FROM Prescription WHERE PatientID = 'P2016' AND DoctorID = 'D1003' AND PrescDate = DATE '2024-04-04';

INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
SELECT PrescriptionID, 'PediaCare', 'CureWell Pharma', 15
FROM Prescription WHERE PatientID = 'P2017' AND DoctorID = 'D1003' AND PrescDate = DATE '2024-04-05';

INSERT INTO PrescriptionDrug (PrescriptionID, TradeName, CompanyName, Quantity)
SELECT PrescriptionID, 'PediaCare', 'CureWell Pharma', 15
FROM Prescription WHERE PatientID = 'P2018' AND DoctorID = 'D1003' AND PrescDate = DATE '2024-04-06';

-- Insert Pharmacy_Drug (pharmacies selling drugs)
INSERT INTO Pharmacy_Drug (Pharmacy_Name, PharmCompany, Tradename, Price) VALUES ('HealthFirst Pharmacy', 'MediLife Ltd', 'CardioPlus', 50);
INSERT INTO Pharmacy_Drug (Pharmacy_Name, PharmCompany, Tradename, Price) VALUES ('HealthFirst Pharmacy', 'MediLife Ltd', 'NeuroMax', 80);
INSERT INTO Pharmacy_Drug (Pharmacy_Name, PharmCompany, Tradename, Price) VALUES ('CityMed Pharmacy', 'CureWell Pharma', 'PediaCare', 40);
INSERT INTO Pharmacy_Drug (Pharmacy_Name, PharmCompany, Tradename, Price) VALUES ('CityMed Pharmacy', 'CureWell Pharma', 'PainAway', 60);
INSERT INTO Pharmacy_Drug (Pharmacy_Name, PharmCompany, Tradename, Price) VALUES ('Wellness Pharmacy', 'Healix Biotech', 'HealFast', 55);
INSERT INTO Pharmacy_Drug (Pharmacy_Name, PharmCompany, Tradename, Price) VALUES ('Wellness Pharmacy', 'Healix Biotech', 'AllerFree', 25);
INSERT INTO Pharmacy_Drug (Pharmacy_Name, PharmCompany, Tradename, Price) VALUES ('CarePlus Pharmacy', 'Sunrise Remedies', 'SunPain', 35);
INSERT INTO Pharmacy_Drug (Pharmacy_Name, PharmCompany, Tradename, Price) VALUES ('CarePlus Pharmacy', 'SunCough', 20);

-- Insert Pharmacy_Contract
INSERT INTO Pharmacy_Contract (Pharmacy_Name, Company_Name, Start_Date, End_Date, Details, Supervisor) VALUES ('HealthFirst Pharmacy', 'MediLife Ltd', DATE '2024-01-01', DATE '2025-01-01', 'Annual supply contract', 'Mr. Sharma');
INSERT INTO Pharmacy_Contract (Pharmacy_Name, Company_Name, Start_Date, End_Date, Details, Supervisor) VALUES ('CityMed Pharmacy', 'CureWell Pharma', DATE '2024-02-01', DATE '2025-02-01', 'Exclusive supply contract', 'Ms. Patel');
INSERT INTO Pharmacy_Contract (Pharmacy_Name, Company_Name, Start_Date, End_Date, Details, Supervisor) VALUES ('Wellness Pharmacy', 'Healix Biotech', DATE '2024-03-01', DATE '2025-03-01', 'General supply contract', 'Dr. Rao');
INSERT INTO Pharmacy_Contract (Pharmacy_Name, Company_Name, Start_Date, End_Date, Details, Supervisor) VALUES ('CarePlus Pharmacy', 'Sunrise Remedies', DATE '2024-04-01', DATE '2025-04-01', 'Pain relief supply', 'Ms. Reddy');