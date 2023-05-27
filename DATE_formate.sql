USE ddl_dml ;
SELECT NOW() ;
SELECT DATE(NOW()) ;
SELECT CURDATE() ;
SELECT DATE_FORMAT(CURDATE() ,'%m/%d/%Y') TODAY;

--- create table
CREATE TABLE sales_orders(
	id INTEGER ,
	customer_id INTEGER ,
	order_date DATE ,
	financialcode CHAR(2) ,
	region CHAR(7) ,
	sales_representative INTEGER
);

DROP TABLE sales_orders ;
--- insert table values 
INSERT INTO sales_orders(id ,customer_id ,order_date,financialcode,region,sales_representative)
	VALUES
	(2001,101,'2000-03-16' ,'r1','eastern',299) ,
	(2002,102,'2000-03-17' ,'r2' ,'western',399) ,
        (2003,103,'2000-03-18' , 'r3', 'western',499),
        (2004,104,'2000-03-19' ,'r4' ,'eastern',599),
        (2005,105,'2000-03-20' , 'r5' ,'eastern',699)
;

SELECT * FROM sales_orders ;

SELECT * FROM sales_orders 
	WHERE order_date 
        BETWEEN '2000-03-15' AND '2000-03-20' ;
    
SELECT
	EXTRACT(YEAR FROM order_date) AS order_year ,
        EXTRACT(MONTH FROM order_date) AS order_month ,
        EXTRACT(DAY FROM order_date) AS order_date,
        customer_id
        FROM sales_orders
        WHERE customer_id BETWEEN 102 AND 105
    ;
    
SELECT * FROM sales_orders 
         WHERE YEAR(order_date) =2000 
         AND customer_id = 102 ;

SELECT DATE_FORMAT
	(STR_TO_DATE(order_date ,'%Y-%m-%d'),'%d-%m-%Y') 
         AS date_format FROM sales_orders ;
	
    


