ALTER TABLE Drug
DROP CONSTRAINT fk_drug_company;
ALTER TABLE Drug
ADD CONSTRAINT fk_drug_company
FOREIGN KEY (Company_Name)
REFERENCES Pharmaceutical_Company(Company_Name)
ON DELETE CASCADE;

ALTER TABLE Pharmacy_Drug
DROP CONSTRAINT fk_pharma_company_sale;
ALTER TABLE Pharmacy_Drug
ADD CONSTRAINT fk_pharmacy_drug_company
FOREIGN KEY (PharmCompany)
REFERENCES Pharmaceutical_Company(Company_Name)
ON DELETE CASCADE;

ALTER TABLE Pharmacy_Contract
DROP CONSTRAINT fk_company_contract;
ALTER TABLE Pharmacy_Contract
ADD CONSTRAINT fk_pharmacy_contract_company
FOREIGN KEY (Company_Name)
REFERENCES Pharmaceutical_Company(Company_Name)
ON DELETE CASCADE;