EXEC add_pharmaceutical_company('MediCure Ltd', '022-11223344');
EXEC add_pharmaceutical_company('HealthPlus Pharma', '022-22334455');
EXEC add_pharmaceutical_company('NovaCure Inc', '022-33445566');
EXEC add_pharmaceutical_company('Lifeline Biotech', '022-44556677');
EXEC add_pharmaceutical_company('Wellness Remedies', '022-55667788');


EXEC add_drug('MediCure Ltd', 'PainAway', 'Ibuprofen');
EXEC add_drug('HealthPlus Pharma', 'ColdFree', 'Cetirizine');
EXEC add_drug('NovaCure Inc', 'GastroHeal', 'Omeprazole');
EXEC add_drug('Lifeline Biotech', 'NeuroCalm', 'Gabapentin');
EXEC add_drug('Wellness Remedies', 'CardioGuard', 'Atenolol');
EXEC add_drug('MediCure Ltd', 'Dermaclean', 'Clotrimazole');
EXEC add_drug('HealthPlus Pharma', 'AllerNil', 'Loratadine');
EXEC add_drug('NovaCure Inc', 'BoneBoost', 'Calcium Carbonate');
EXEC add_drug('Lifeline Biotech', 'LivaPlus', 'Silymarin');
EXEC add_drug('Wellness Remedies', 'MoodLite', 'Sertraline');

EXEC add_pharmacy('CityMed Pharmacy', 'B1', 'S1', 'Mumbai', '400001');
EXEC add_pharmacy_phone('CityMed Pharmacy', '022-1001001');

EXEC add_pharmacy('HealthMart', 'B2', 'S2', 'Pune', '411001');
EXEC add_pharmacy_phone('HealthMart', '020-2002002');

EXEC add_pharmacy('WellCare Pharmacy', 'B3', 'S3', 'Nashik', '422001');
EXEC add_pharmacy_phone('WellCare Pharmacy', '0253-3003003');

EXEC add_pharmacy('Lifeline Pharmacy', 'B4', 'S4', 'Nagpur', '440001');
EXEC add_pharmacy_phone('Lifeline Pharmacy', '0712-4004004');

EXEC add_pharmacy_contract('CityMed Pharmacy', 'MediCure Ltd', DATE '2024-01-01', DATE '2026-01-01', 'Pain relievers supply', 'Mr. Suresh');
EXEC add_pharmacy_contract('HealthMart', 'HealthPlus Pharma', DATE '2024-03-01', DATE '2026-03-01', 'Antihistamines supply', 'Ms. Rekha');
EXEC add_pharmacy_contract('WellCare Pharmacy', 'NovaCure Inc', DATE '2024-02-15', DATE '2026-02-15', 'Stomach meds', 'Mr. Amit');
EXEC add_pharmacy_contract('Lifeline Pharmacy', 'Lifeline Biotech', DATE '2024-04-01', DATE '2026-04-01', 'Neuro meds', 'Ms. Leela');


EXEC add_pharmacy_drug('CityMed Pharmacy', 'MediCure Ltd', 'PainAway', 50);
EXEC add_pharmacy_drug('HealthMart', 'HealthPlus Pharma', 'ColdFree', 40);
EXEC add_pharmacy_drug('WellCare Pharmacy', 'NovaCure Inc', 'GastroHeal', 60);
EXEC add_pharmacy_drug('Lifeline Pharmacy', 'Lifeline Biotech', 'NeuroCalm', 80);

-- 60 random patients, evenly distributed among 8 valid doctors

EXEC add_patient('P4001', 'Amit Sharma', 34, '12A', 'S1', 'Mumbai', '400001', '456789123456');
EXEC add_patient('P4002', 'Neha Verma', 28, '14B', 'S2', 'Delhi', '110001', '456789123456');
EXEC add_patient('P4003', 'Rahul Gupta', 45, '16C', 'S3', 'Pune', '411001', '456789123456');
EXEC add_patient('P4004', 'Priya Singh', 31, '18D', 'S4', 'Nashik', '422001', '456789123456');
EXEC add_patient('P4005', 'Suresh Kumar', 52, '20E', 'S5', 'Nagpur', '440001', '456789123456');
EXEC add_patient('P4006', 'Meena Joshi', 39, '22F', 'S6', 'Bangalore', '560001', '456789123456');
EXEC add_patient('P4007', 'Vikas Jain', 27, '24G', 'S7', 'Hyderabad', '500001', '456789123456');
EXEC add_patient('P4008', 'Kiran Desai', 41, '26H', 'S8', 'Chennai', '600001', '456789123456');

EXEC add_patient('P4009', 'Sunil Patil', 36, '28I', 'S9', 'Mumbai', '400001', '987654321098');
EXEC add_patient('P4010', 'Ritu Malhotra', 29, '30J', 'S10', 'Delhi', '110001', '987654321098');
EXEC add_patient('P4011', 'Deepak Chawla', 33, '32K', 'S11', 'Pune', '411001', '987654321098');
EXEC add_patient('P4012', 'Pooja Arora', 38, '34L', 'S12', 'Nashik', '422001', '987654321098');
EXEC add_patient('P4013', 'Aman Sethi', 40, '36A', 'S1', 'Nagpur', '440001', '987654321098');
EXEC add_patient('P4014', 'Sneha Iyer', 26, '38B', 'S2', 'Bangalore', '560001', '987654321098');
EXEC add_patient('P4015', 'Rohit Mehra', 47, '40C', 'S3', 'Hyderabad', '500001', '987654321098');
EXEC add_patient('P4016', 'Shalini Kapoor', 32, '42D', 'S4', 'Chennai', '600001', '987654321098');

EXEC add_patient('P4017', 'Gaurav Bansal', 53, '44E', 'S5', 'Mumbai', '400001', '654321987654');
EXEC add_patient('P4018', 'Anita Rao', 37, '46F', 'S6', 'Delhi', '110001', '654321987654');
EXEC add_patient('P4019', 'Manoj Saini', 29, '48G', 'S7', 'Pune', '411001', '654321987654');
EXEC add_patient('P4020', 'Kavita Nair', 42, '50H', 'S8', 'Nashik', '422001', '654321987654');
EXEC add_patient('P4021', 'Sandeep Singh', 35, '52I', 'S9', 'Nagpur', '440001', '654321987654');
EXEC add_patient('P4022', 'Rashmi Deshmukh', 30, '54J', 'S10', 'Bangalore', '560001', '654321987654');
EXEC add_patient('P4023', 'Ajay Kumar', 39, '56K', 'S11', 'Hyderabad', '500001', '654321987654');
EXEC add_patient('P4024', 'Preeti Shah', 28, '58L', 'S12', 'Chennai', '600001', '654321987654');

EXEC add_patient('P4025', 'Nikhil Reddy', 41, '60A', 'S1', 'Mumbai', '400001', '123456789012');
EXEC add_patient('P4026', 'Divya Menon', 27, '62B', 'S2', 'Delhi', '110001', '123456789012');
EXEC add_patient('P4027', 'Harsh Vyas', 46, '64C', 'S3', 'Pune', '411001', '123456789012');
EXEC add_patient('P4028', 'Simran Kaur', 33, '66D', 'S4', 'Nashik', '422001', '123456789012');
EXEC add_patient('P4029', 'Vivek Pandey', 54, '68E', 'S5', 'Nagpur', '440001', '123456789012');
EXEC add_patient('P4030', 'Aarti Joshi', 38, '70F', 'S6', 'Bangalore', '560001', '123456789012');
EXEC add_patient('P4031', 'Tarun Sharma', 30, '72G', 'S7', 'Hyderabad', '500001', '123456789012');
EXEC add_patient('P4032', 'Bhavna Patel', 43, '74H', 'S8', 'Chennai', '600001', '123456789012');

EXEC add_patient('P4033', 'Sanjay Chauhan', 36, '76I', 'S9', 'Mumbai', '400001', '678901234567');
EXEC add_patient('P4034', 'Megha Jain', 31, '78J', 'S10', 'Delhi', '110001', '678901234567');
EXEC add_patient('P4035', 'Rakesh Yadav', 34, '80K', 'S11', 'Pune', '411001', '678901234567');
EXEC add_patient('P4036', 'Shreya Ghosh', 29, '82L', 'S12', 'Nashik', '422001', '678901234567');
EXEC add_patient('P4037', 'Karan Malhotra', 44, '84A', 'S1', 'Nagpur', '440001', '678901234567');
EXEC add_patient('P4038', 'Isha Agarwal', 25, '86B', 'S2', 'Bangalore', '560001', '678901234567');
EXEC add_patient('P4039', 'Yogesh Pawar', 48, '88C', 'S3', 'Hyderabad', '500001', '678901234567');
EXEC add_patient('P4040', 'Radhika Shetty', 36, '90D', 'S4', 'Chennai', '600001', '678901234567');

EXEC add_patient('P4041', 'Siddharth Rao', 55, '92E', 'S5', 'Mumbai', '400001', '789012345678');
EXEC add_patient('P4042', 'Nisha Pillai', 40, '94F', 'S6', 'Delhi', '110001', '789012345678');
EXEC add_patient('P4043', 'Arjun Mehta', 32, '96G', 'S7', 'Pune', '411001', '789012345678');
EXEC add_patient('P4044', 'Tanvi Desai', 45, '98H', 'S8', 'Nashik', '422001', '789012345678');
EXEC add_patient('P4045', 'Mohit Suri', 37, '100I', 'S9', 'Nagpur', '440001', '789012345678');
EXEC add_patient('P4046', 'Snehal Patil', 29, '102J', 'S10', 'Bangalore', '560001', '789012345678');
EXEC add_patient('P4047', 'Vivek Sharma', 35, '104K', 'S11', 'Hyderabad', '500001', '789012345678');
EXEC add_patient('P4048', 'Riya Sen', 28, '106L', 'Chennai', '600001', '789012345678');

EXEC add_patient('P4049', 'Aakash Jain', 42, '108A', 'S1', 'Mumbai', '400001', '890123456789');
EXEC add_patient('P4050', 'Sonal Gupta', 26, '110B', 'S2', 'Delhi', '110001', '890123456789');
EXEC add_patient('P4051', 'Pranav Desai', 49, '112C', 'S3', 'Pune', '411001', '890123456789');
EXEC add_patient('P4052', 'Mitali Shah', 34, '114D', 'S4', 'Nashik', '422001', '890123456789');
EXEC add_patient('P4053', 'Rajesh Nair', 56, '116E', 'S5', 'Nagpur', '440001', '890123456789');
EXEC add_patient('P4054', 'Anjali Menon', 39, '118F', 'S6', 'Bangalore', '560001', '890123456789');
EXEC add_patient('P4055', 'Sagar Patil', 31, '120G', 'S7', 'Hyderabad', '500001', '890123456789');
EXEC add_patient('P4056', 'Kritika Kapoor', 44, '122H', 'S8', 'Chennai', '600001', '890123456789');
EXEC add_patient('P4057', 'Nitin Joshi', 38, '124I', 'S9', 'Mumbai', '400001', '901234567890');
EXEC add_patient('P4058', 'Shweta Rao', 27, '126J', 'S10', 'Delhi', '110001', '901234567890');
EXEC add_patient('P4059', 'Aman Verma', 36, '128K', 'S11', 'Pune', '411001', '901234567890');
EXEC add_patient('P4060', 'Pallavi Singh', 33, '130L', 'S12', 'Nashik', '422001', '901234567890');

-- Generate prescriptions for each patient with random dates using add_prescription_with_drug
-- Example drugs and companies are used; adjust as needed for your data

-- For demonstration, using 8 drugs and companies, one for each doctor group
-- You can randomize further if needed

-- Patients P4001-P4008 (Doctor: 456789123456)

VARIABLE prescid NUMBER;
EXEC add_prescription_with_drug('P4001', '456789123456', DATE '2024-04-01', 'PainAway', 'MediCure Ltd', 10, :prescid);
EXEC add_prescription_with_drug('P4002', '456789123456', DATE '2024-04-03', 'PainAway', 'MediCure Ltd', 15, :prescid);
EXEC add_prescription_with_drug('P4003', '456789123456', DATE '2024-04-05', 'PainAway', 'MediCure Ltd', 12, :prescid);
EXEC add_prescription_with_drug('P4004', '456789123456', DATE '2024-04-07', 'PainAway', 'MediCure Ltd', 8, :prescid);
EXEC add_prescription_with_drug('P4005', '456789123456', DATE '2024-04-09', 'PainAway', 'MediCure Ltd', 20, :prescid);
EXEC add_prescription_with_drug('P4006', '456789123456', DATE '2024-04-11', 'PainAway', 'MediCure Ltd', 18, :prescid);
EXEC add_prescription_with_drug('P4007', '456789123456', DATE '2024-04-13', 'PainAway', 'MediCure Ltd', 14, :prescid);
EXEC add_prescription_with_drug('P4008', '456789123456', DATE '2024-04-15', 'PainAway', 'MediCure Ltd', 16, :prescid);

-- Patients P4009-P4016 (Doctor: 987654321098)
EXEC add_prescription_with_drug('P4009', '987654321098', DATE '2024-04-02', 'ColdFree', 'HealthPlus Pharma', 10, :prescid);
EXEC add_prescription_with_drug('P4010', '987654321098', DATE '2024-04-04', 'ColdFree', 'HealthPlus Pharma', 15, :prescid);
EXEC add_prescription_with_drug('P4011', '987654321098', DATE '2024-04-06', 'ColdFree', 'HealthPlus Pharma', 12, :prescid);
EXEC add_prescription_with_drug('P4012', '987654321098', DATE '2024-04-08', 'ColdFree', 'HealthPlus Pharma', 8, :prescid);
EXEC add_prescription_with_drug('P4013', '987654321098', DATE '2024-04-10', 'ColdFree', 'HealthPlus Pharma', 20, :prescid);
EXEC add_prescription_with_drug('P4014', '987654321098', DATE '2024-04-12', 'ColdFree', 'HealthPlus Pharma', 18, :prescid);
EXEC add_prescription_with_drug('P4015', '987654321098', DATE '2024-04-14', 'ColdFree', 'HealthPlus Pharma', 14, :prescid);
EXEC add_prescription_with_drug('P4016', '987654321098', DATE '2024-04-16', 'ColdFree', 'HealthPlus Pharma', 16, :prescid);

-- Patients P4017-P4024 (Doctor: 654321987654)
EXEC add_prescription_with_drug('P4017', '654321987654', DATE '2024-04-01', 'GastroHeal', 'NovaCure Inc', 10, :prescid);
EXEC add_prescription_with_drug('P4018', '654321987654', DATE '2024-04-03', 'GastroHeal', 'NovaCure Inc', 15, :prescid);
EXEC add_prescription_with_drug('P4019', '654321987654', DATE '2024-04-05', 'GastroHeal', 'NovaCure Inc', 12, :prescid);
EXEC add_prescription_with_drug('P4020', '654321987654', DATE '2024-04-07', 'GastroHeal', 'NovaCure Inc', 8, :prescid);
EXEC add_prescription_with_drug('P4021', '654321987654', DATE '2024-04-09', 'GastroHeal', 'NovaCure Inc', 20, :prescid);
EXEC add_prescription_with_drug('P4022', '654321987654', DATE '2024-04-11', 'GastroHeal', 'NovaCure Inc', 18, :prescid);
EXEC add_prescription_with_drug('P4023', '654321987654', DATE '2024-04-13', 'GastroHeal', 'NovaCure Inc', 14, :prescid);
EXEC add_prescription_with_drug('P4024', '654321987654', DATE '2024-04-15', 'GastroHeal', 'NovaCure Inc', 16, :prescid);

-- Patients P4025-P4032 (Doctor: 123456789012)
EXEC add_prescription_with_drug('P4025', '123456789012', DATE '2024-04-02', 'NeuroCalm', 'Lifeline Biotech', 10, :prescid);
EXEC add_prescription_with_drug('P4026', '123456789012', DATE '2024-04-04', 'NeuroCalm', 'Lifeline Biotech', 15, :prescid);
EXEC add_prescription_with_drug('P4027', '123456789012', DATE '2024-04-06', 'NeuroCalm', 'Lifeline Biotech', 12, :prescid);
EXEC add_prescription_with_drug('P4028', '123456789012', DATE '2024-04-08', 'NeuroCalm', 'Lifeline Biotech', 8, :prescid);
EXEC add_prescription_with_drug('P4029', '123456789012', DATE '2024-04-10', 'NeuroCalm', 'Lifeline Biotech', 20, :prescid);
EXEC add_prescription_with_drug('P4030', '123456789012', DATE '2024-04-12', 'NeuroCalm', 'Lifeline Biotech', 18, :prescid);
EXEC add_prescription_with_drug('P4031', '123456789012', DATE '2024-04-14', 'NeuroCalm', 'Lifeline Biotech', 14, :prescid);
EXEC add_prescription_with_drug('P4032', '123456789012', DATE '2024-04-16', 'NeuroCalm', 'Lifeline Biotech', 16, :prescid);

-- Patients P4033-P4040 (Doctor: 678901234567)
EXEC add_prescription_with_drug('P4033', '678901234567', DATE '2024-04-01', 'CardioGuard', 'Wellness Remedies', 10, :prescid);
EXEC add_prescription_with_drug('P4034', '678901234567', DATE '2024-04-03', 'CardioGuard', 'Wellness Remedies', 15, :prescid);
EXEC add_prescription_with_drug('P4035', '678901234567', DATE '2024-04-05', 'CardioGuard', 'Wellness Remedies', 12, :prescid);
EXEC add_prescription_with_drug('P4036', '678901234567', DATE '2024-04-07', 'CardioGuard', 'Wellness Remedies', 8, :prescid);
EXEC add_prescription_with_drug('P4037', '678901234567', DATE '2024-04-09', 'CardioGuard', 'Wellness Remedies', 20, :prescid);
EXEC add_prescription_with_drug('P4038', '678901234567', DATE '2024-04-11', 'CardioGuard', 'Wellness Remedies', 18, :prescid);
EXEC add_prescription_with_drug('P4039', '678901234567', DATE '2024-04-13', 'CardioGuard', 'Wellness Remedies', 14, :prescid);
EXEC add_prescription_with_drug('P4040', '678901234567', DATE '2024-04-15', 'CardioGuard', 'Wellness Remedies', 16, :prescid);

-- Patients P4041-P4048 (Doctor: 789012345678)
EXEC add_prescription_with_drug('P4041', '789012345678', DATE '2024-04-02', 'Dermaclean', 'MediCure Ltd', 10, :prescid);
EXEC add_prescription_with_drug('P4042', '789012345678', DATE '2024-04-04', 'Dermaclean', 'MediCure Ltd', 15, :prescid);
EXEC add_prescription_with_drug('P4043', '789012345678', DATE '2024-04-06', 'Dermaclean', 'MediCure Ltd', 12, :prescid);
EXEC add_prescription_with_drug('P4044', '789012345678', DATE '2024-04-08', 'Dermaclean', 'MediCure Ltd', 8, :prescid);
EXEC add_prescription_with_drug('P4045', '789012345678', DATE '2024-04-10', 'Dermaclean', 'MediCure Ltd', 20, :prescid);
EXEC add_prescription_with_drug('P4046', '789012345678', DATE '2024-04-12', 'Dermaclean', 'MediCure Ltd', 18, :prescid);
EXEC add_prescription_with_drug('P4047', '789012345678', DATE '2024-04-14', 'Dermaclean', 'MediCure Ltd', 14, :prescid);
EXEC add_prescription_with_drug('P4048', '789012345678', DATE '2024-04-16', 'Dermaclean', 'MediCure Ltd', 16, :prescid);

-- Patients P4049-P4056 (Doctor: 890123456789)
EXEC add_prescription_with_drug('P4049', '890123456789', DATE '2024-04-01', 'AllerNil', 'HealthPlus Pharma', 10, :prescid);
EXEC add_prescription_with_drug('P4050', '890123456789', DATE '2024-04-03', 'AllerNil', 'HealthPlus Pharma', 15, :prescid);
EXEC add_prescription_with_drug('P4051', '890123456789', DATE '2024-04-05', 'AllerNil', 'HealthPlus Pharma', 12, :prescid);
EXEC add_prescription_with_drug('P4052', '890123456789', DATE '2024-04-07', 'AllerNil', 'HealthPlus Pharma', 8, :prescid);
EXEC add_prescription_with_drug('P4053', '890123456789', DATE '2024-04-09', 'AllerNil', 'HealthPlus Pharma', 20, :prescid);
EXEC add_prescription_with_drug('P4054', '890123456789', DATE '2024-04-11', 'AllerNil', 'HealthPlus Pharma', 18, :prescid);
EXEC add_prescription_with_drug('P4055', '890123456789', DATE '2024-04-13', 'AllerNil', 'HealthPlus Pharma', 14, :prescid);
EXEC add_prescription_with_drug('P4056', '890123456789', DATE '2024-04-15', 'AllerNil', 'HealthPlus Pharma', 16, :prescid);

-- Patients P4057-P4060 (Doctor: 901234567890)
EXEC add_prescription_with_drug('P4057', '901234567890', DATE '2024-04-02', 'BoneBoost', 'NovaCure Inc', 10, :prescid);
EXEC add_prescription_with_drug('P4058', '901234567890', DATE '2024-04-04', 'BoneBoost', 'NovaCure Inc', 15, :prescid);
EXEC add_prescription_with_drug('P4059', '901234567890', DATE '2024-04-06', 'BoneBoost', 'NovaCure Inc', 12, :prescid);
EXEC add_prescription_with_drug('P4060', '901234567890', DATE '2024-04-08', 'BoneBoost', 'NovaCure Inc', 8, :prescid);


