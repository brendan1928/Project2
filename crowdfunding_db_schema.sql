DROP TABLE campaign;
DROP TABLE contacts;
DROP TABLE subcategory;
DROP TABLE category;
CREATE TABLE category(
    category_id VARCHAR(4) PRIMARY KEY NOT NULL,
    category VARCHAR(20) NOT NULL
);
CREATE TABLE subcategory(
    subcategory_id VARCHAR(7) PRIMARY KEY NOT NULL,
    subcategory VARCHAR(20) NOT NULL
);
CREATE TABLE contacts(
    contact_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR
);
CREATE TABLE campaign(
    cf_id INT PRIMARY KEY NOT NULL,
	contact_id INT NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    company_name VARCHAR,
    description VARCHAR,
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR(15),
    backers_count INT,
    country VARCHAR(2),
    currency VARCHAR(3) NOT NULL,
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR(20),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
    subcategory_id VARCHAR(20),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

--When importing the CSV files, be sure to import CATEGORY, CONTACTS, AND SUBCATEGORY before CAMPAIGN. 
--This is because CAMPAIGN has references to those files.