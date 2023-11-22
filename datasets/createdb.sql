DROP TABLE repayment;
CREATE TABLE repayment(
  repayment_id INT PRIMARY KEY,
  loan_id INT,
  repayment_date DATE,
  repayment_amount DECIMAL,
  repayment_channel VARCHAR(50)
);
DROP TABLE loan;
CREATE TABLE loan (
  loan_id INT PRIMARY KEY,
  client_id INT,
  contract_id INT,
  principal_amount DECIMAL,
  interest_rate DECIMAL,
  loan_type VARCHAR(30)
);
DROP TABLE client;
CREATE TABLE client (
  client_id INT PRIMARY KEY, 
  date_of_birth VARCHAR(30),
  employment_status VARCHAR(30),
  country VARCHAR(50)
);
DROP TABLE contract;
CREATE TABLE contract (
  contract_id INT PRIMARY KEY, 
  contract_date DATE
);

\copy repayment FROM 'repayment.csv' DELIMITER ',' CSV HEADER;
\copy loan FROM 'loan.csv' DELIMITER ',' CSV HEADER;
\copy client FROM 'client.csv' DELIMITER ',' CSV HEADER;
\copy contract FROM 'contract.csv' DELIMITER ',' CSV HEADER;
