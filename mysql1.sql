USE ddl_dml;
/*1.Write a SQL statement to create a simple table countries including columns country_id,country_name and region_id. 
*/
CREATE TABLE counteries(
	county_id INT NOT NULL UNIQUE ,
	county_name VARCHAR(20) ,
    region_id INT NOT NULl
);
DROP TABLE counteries;

/*  Write a SQL statement to create a simple table countries including columns country_id,country_name and region_id which is already exists.
*/
CREATE TABLE IF NOT EXISTS counteries(
	country_id INT NOT NULL UNIQUE ,
    country_name VARCHAR(20) ,
    region_id INT NOT NULL
);

/* Write a SQL statement to create the structure of a table dup_countries similar to countries. 
*/
CREATE TABLE dup_counteries(Like counteries);

/* Write a SQL statement to create a table named jobs including columns job_id, job_title, min_salary, max_salary and check whether the max_salary amount exceeding the upper limit 25000
*/
CREATE TABLE jobs(
	job_id INT UNIQUE ,
    job_title varchar(20),
    min_salary int ,
    max_salary int ,
    CHECK(max_salary <=25000)
);
/*Write a SQL statement to create a table named countries including columns country_id, country_name and region_id and make sure that no countries except Italy, India and China will be entered in the table
 */ 
 CREATE TABLE counteries_(
	county_id INT NOT NULL UNIQUE ,
    country_name VARCHAR(20),
	region_id INT NOT NULL,
    CHECK ( country_name IN('ITLY','INDIA' ,'CHINA'))
 );
 /*. Write a SQL statement to create a table named job_histry including columns employee_id, start_date, end_date, job_id and department_id and make sure that the value against column end_date will be entered at the time of insertion to the format like '--/--/----  
 */
 CREATE TABLE job_(
	job_id INT UNIQUE ,
    job_title varchar(20),
    min_salary int DEFAULT 300000,
    max_salary int 
    CHECK(max_salary <=25000),
	start_date date NOT NULL,
    end_date date NOT NULL
);

/* Deparments Table */
CREATE TABLE departments(
	department_id DECIMAL(4,0) NOT NULL DEFAULT 0 ,
    department_name VARCHAR(30) NOT NULL DEFAULT 'null',
    manager_id decimal(6,0) NOT NULL DEFAULT 0
);

-- creating data
CREATE TABLE locations(
	location_id DECIMAL(4,0) DEFAULT 0 ,
    street_address VARCHAR(40) DEFAULT 'NULL' ,
    postal_code VARCHAR(20) DEFAULT 'NULL' ,
    city VARCHAR(30) DEFAULT 'NULL',
    sate_provience VARCHAR(25) ,
    country_id VARCHAR(2)
);
DROP TABLE locations;
INSERT INTO locations(location_id,street_address,postal_code,city,sate_provience,country_id)
	VALUES
	(1000, 'Via Cola di Rie', 989, 'Roma', '', 'IT'),
	(1100,'93091 Calle della Te',10934,'Venice',' ','IT'),
    (1200,'2017 Shinjuku-ku',689,'Tokyo','Tokyo Prefectu','JP'),
    (1300,'9450 Kamiya-cho',6823,'Hiroshima', ' ','JP'),
    (1400,'2014 Jabberwocky Rd',26192,'Southlake','Texas','US');
SELECT * FROM locations;

    
    



