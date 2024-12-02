-- Create PRODUCT table
CREATE TABLE PRODUCT (
  Product_id VARCHAR2(20) PRIMARY KEY,
  product_Name VARCHAR2(200) NOT NULL,
  Price NUMBER CONSTRAINT Price_Positive CHECK (Price > 0),
  Category VARCHAR2(20)
);

-- Create CUSTOMER table  
CREATE TABLE CUSTOMER (
  Customer_id VARCHAR2(20) PRIMARY KEY,
  Customer_Name VARCHAR2(200) NOT NULL, 
  Customer_Tel NUMBER CONSTRAINT Customer_Tel_NOT_NULL NOT NULL
);

-- Create ORDERS table
CREATE TABLE ORDERS (
  Customer_id VARCHAR2(20) CONSTRAINT Customer_id_FK REFERENCES CUSTOMER(Customer_id),
  Product_id VARCHAR2(20) CONSTRAINT Product_id_FK REFERENCES PRODUCT(Product_id),
  Quantity NUMBER CONSTRAINT Quantity_Positive CHECK (Quantity > 0),
  Total_amount NUMBER CONSTRAINT Total_amount_Positive CHECK (Total_amount > 0),
  OrderDate DATE DEFAULT SYSDATE
);

-- Add Category column to PRODUCT table
ALTER TABLE PRODUCT ADD Category VARCHAR2(20);

-- Add OrderDate column to ORDERS table
ALTER TABLE ORDERS ADD OrderDate DATE DEFAULT SYSDATE;