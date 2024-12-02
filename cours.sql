
	customerID NUMBER CHECK (customerID > 0) PRIMARY KEY,

	name VARCHAR(30) NOT NULL,

	street VARCHAR(30) NOT NULL,

	postcode NUMBER CHECK (postcode > 0),

	city VARCHAR(20)

);