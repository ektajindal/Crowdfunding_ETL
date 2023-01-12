
-- creating 'Category' table in crowdfunding_db
CREATE TABLE Category (
  category_id VARCHAR(300) NOT NULL PRIMARY KEY,
  category VARCHAR(300) NOT NULL
);

-- creating 'Subcategory' table in crowdfunding_db
CREATE TABLE Subcategory (
  subcategory_id VARCHAR(300) NOT NULL PRIMARY KEY,
  subcategory VARCHAR(300) NOT NULL
);

-- creating 'Contacts' table in crowdfunding_db
CREATE TABLE Contacts (
  contact_id INTEGER NOT NULL PRIMARY KEY,
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  email VARCHAR(300) NOT NULL
);

-- creating 'Campaign' table in crowdfunding_db
CREATE TABLE Campaign (
  cf_id INTEGER NOT NULL PRIMARY KEY,
  contact_id INTEGER NOT NULL,
  company_name VARCHAR(300) NOT NULL,
  description VARCHAR(300) NOT NULL,
  goal FLOAT NOT NULL,
  pledged FLOAT NOT NULL,
  outcome VARCHAR(300) NOT NULL,
  backers_count INTEGER NOT NULL,
  country VARCHAR(300) NOT NULL,
  currency VARCHAR(300) NOT NULL,
  launched_date DATETIME NOT NULL,
  end_date DATETIME NOT NULL,
  category_id VARCHAR(300) NOT NULL,
  subcategory_id VARCHAR(300) NOT NULL,
  FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
  FOREIGN KEY (category_id) REFERENCES Category(category_id),
  FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);

-- Viewing the tables 
SELECT * FROM Campaign;
SELECT * FROM Category;	
SELECT * FROM Subcategory;
SELECT * FROM Contacts;

-- Data from csv files are imported to corresponding postgresql tables by using import/export function 






