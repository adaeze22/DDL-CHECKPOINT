create table  PRODUCT (
   Product_id varchar(20) constraint product_pkey Primary key,
	Product_Name varchar(20) constraint product_notnull not null,
	Price int constraint price_check check (price > 0)
);



create table CUSTOMER (
   Customer_id varchar(20) constraint customer_pkey Primary key,
	Customer_name varchar(20) constraint customer_notnull not null,
	Customer_Tel int
);



create table Orders (
	customer_id varchar(20),
	product_id varchar(20),
     Quantity int,
	Total_amount int
	CONSTRAINT orders_fkey1 FOREIGN KEY (Customer_id) REFERENCES CUSTOMER (Customer_id),
	CONSTRAINT orders_fkey2 FOREIGN KEY (Product_id) REFERENCES PRODUCT (Product_id)
);


alter table product add  Category VARCHAR2(20);

alter table ORDERS add  OrderDate DATE default (current_date);
