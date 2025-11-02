CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  age INT,
  job VARCHAR(50),
  marital VARCHAR(20),
  education VARCHAR(40),
  balance INT,
  contact VARCHAR(40),
  day INT,
  month VARCHAR(5),
  duration INT,
  campaign INT,
  pdays INT,
  previous INT,
  poutcome VARCHAR(20),
  y VARCHAR(5)
);