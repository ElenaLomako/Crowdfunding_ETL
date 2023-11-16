--DROP table if exist
--DROP TABLE IF EXISTS category;
--DROP TABLE IF EXISTS subcategory;
--DROP TABLE IF EXISTS campaign;
--DROP TABLE IF EXISTS contacts;


--Create all tables

CREATE TABLE category (
	category_id VARCHAR(4) NOT NULL PRIMARY KEY,
	category VARCHAR NOT NULL
);

SELECT * FROM category;

--import category table

CREATE TABLE subcategory (
	subcategory_id VARCHAR(7) NOT NULL PRIMARY KEY,
	subcategory VARCHAR NOT NULL
);

SELECT * FROM subcategory;

--import subcategory table

CREATE TABLE contacts (
	contact_id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL
);

SELECT * FROM contacts;

--import campaign contacts


CREATE TABLE campaign (
	cf_id INT NOT NULL PRIMARY KEY,
	contact_id INT NOT NULL,
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal INT NOT NULL,
	pledged INT NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(4) NOT NULL,
	subcategory_id VARCHAR(7) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
	
);

SELECT * FROM campaign;
--import campaign table
