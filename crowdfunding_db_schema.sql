--Drop tables if they already exist
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;

--Create all the tables
CREATE TABLE category(
	category_id VARCHAR(15) PRIMARY KEY NOT NULL,
	category VARCHAR(50) NOT NULL
);

CREATE TABLE subcategory(
	subcategory_id VARCHAR(15) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(50) NOT NULL
);

CREATE TABLE contacts(
	contact_id INTEGER PRIMARY KEY NOT NULL,
	first_name VARCHAR (20) NOT NULL,
	last_name VARCHAR (20) NOT NULL,
	email VARCHAR (45) NOT NULL
);

CREATE TABLE campaign(
	cf_id INTEGER PRIMARY KEY NOT NULL,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR NOT NULL,
	goal DECIMAL NOT NULL,
	pledged DECIMAL NOT NULL,
	outcome VARCHAR (15) NOT NULL,
	backers_count INTEGER NOT NULL,
	country VARCHAR (5) NOT NULL,
	currency VARCHAR (5) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR (15) NOT NULL,
	subcategory_id VARCHAR (15) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

--Check created tables with the code below
--After importing the data, show the tables with the code below
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;

	