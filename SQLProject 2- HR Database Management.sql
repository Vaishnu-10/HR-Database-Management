Create Database HRDatabase

Use HRDatabase

Create Table regions(
region_id int primary key,
region_name varchar(25) default null);

Create Table countries(
country_id char(2) Primary Key,
country_name varchar(40) Default Null,
region_id int not null,
Foreign Key(region_id) References regions(region_id) on Delete Cascade on Update Cascade);

Create Table locations(
location_id int primary key,
street_address varchar(40) Default null,
postal_code varchar(12) Default null,
city varchar(30) not null,
state_province varchar(25) default null,
country_id char(2) not null,
foreign key(country_id) references countries(country_id) on Delete Cascade on Update Cascade);

Create Table jobs(
job_id int primary key,
job_title varchar(35) not null,
min_salary decimal(8,2) default null,
max_salary decimal(8,2) default null);

Create Table departments(
department_id int primary key,
department_name varchar(30) not null,
location_id int default null,
foreign key(location_id) references locations(location_id) on Delete Cascade on Update Cascade);

Create Table employees(
employee_id int primary key,
first_name varchar(20) default null,
last_name varchar(20) default null,
email varchar(100) not null,
phone_number varchar(20) default null,
hire_date Date Not Null,
job_id int not null,
Salary Decimal (8,2) not null,
manager_id int default null,
department_id int default null,
Foreign key(job_id) References jobs(job_id) on Delete Cascade on Update Cascade,
Foreign Key(department_id) References departments (department_id) On Delete Cascade On Update Cascade,
Foreign key(manager_id) references employees(employee_id));

Create Table dependents(
dependent_id int primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
relationship varchar(25) not null,
employee_id int not null,
foreign key (employee_id) references employees(employee_id) on Delete Cascade on Update Cascade);

/*Data for the table regions */
INSERT INTO regions(region_id,region_name) 
VALUES (1,'Europe');
INSERT INTO regions(region_id,region_name) 
VALUES (2,'Americas');
INSERT INTO regions(region_id,region_name) 
VALUES (3,'Asia');
INSERT INTO regions(region_id,region_name) 
VALUES (4,'Middle East and Africa');

/*Data for the table countries */
INSERT INTO countries(country_id,country_name,region_id) 
VALUES ('AR','Argentina',2);
INSERT INTO countries(country_id,country_name,region_id) 
VALUES ('AU','Australia',3);
INSERT INTO countries(country_id,country_name,region_id) 
VALUES ('BE','Belgium',1);
INSERT INTO countries(country_id,country_name,region_id)
 VALUES ('BR','Brazil',2);
INSERT INTO countries(country_id,country_name,region_id) 
VALUES ('CA','Canada',2);
INSERT INTO countries(country_id,country_name,region_id) 
VALUES ('CH','Switzerland',1);
INSERT INTO countries(country_id,country_name,region_id) 
VALUES ('CN','China',3);
INSERT INTO countries(country_id,country_name,region_id) 
VALUES ('DE','Germany',1);
INSERT INTO countries(country_id,country_name,region_id) 
VALUES ('DK','Denmark',1);
INSERT INTO countries(country_id,country_name,region_id) 
VALUES ('EG','Egypt',4);
INSERT INTO countries(country_id,country_name,region_id)
 VALUES ('FR','France',1);
INSERT INTO countries(country_id,country_name,region_id)
 VALUES ('HK','HongKong',3);
INSERT INTO countries(country_id,country_name,region_id)
 VALUES ('IL','Israel',4);
INSERT INTO countries(country_id,country_name,region_id) 
VALUES ('IN','India',3);
INSERT INTO countries(country_id,country_name,region_id)
 VALUES ('IT','Italy',1);
INSERT INTO countries(country_id,country_name,region_id) 
VALUES ('JP','Japan',3);
INSERT INTO countries(country_id,country_name,region_id)
 VALUES ('KW','Kuwait',4);
INSERT INTO countries(country_id,country_name,region_id)
 VALUES ('MX','Mexico',2);
INSERT INTO countries(country_id,country_name,region_id)
 VALUES ('NG','Nigeria',4);
INSERT INTO countries(country_id,country_name,region_id)
 VALUES ('NL','Netherlands',1);
INSERT INTO countries(country_id,country_name,region_id)
 VALUES ('SG','Singapore',3);
INSERT INTO countries(country_id,country_name,region_id) 
VALUES ('UK','United Kingdom',1);
INSERT INTO countries(country_id,country_name,region_id)
 VALUES ('US','United States of America',2);
INSERT INTO countries(country_id,country_name,region_id)
 VALUES ('ZM','Zambia',4);
INSERT INTO countries(country_id,country_name,region_id) 
VALUES ('ZW','Zimbabwe',4);


/*Data for the table locations */
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
 VALUES (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
 VALUES (1500,'2011 Interiors Blvd','99236','South San Francisco','California','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
 VALUES (1700,'2004 Charade Rd','98199','Seattle','Washington','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) 
VALUES (1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) 
VALUES (2400,'8204 Arthur St',NULL,'London',NULL,'UK');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) 
VALUES (2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
 VALUES (2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');

 /*Data for the table jobs */
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
 VALUES (1,'Public Accountant',4200.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) 
VALUES (2,'Accounting Manager',8200.00,16000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) 
VALUES (3,'Administration Assistant',3000.00,6000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
 VALUES (4,'President',20000.00,40000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) 
VALUES (5,'Administration Vice President',15000.00,30000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) 
VALUES (6,'Accountant',4200.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) 
VALUES (7,'Finance Manager',8200.00,16000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) 
VALUES (8,'Human Resources Representative',4000.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) 
VALUES (9,'Programmer',4000.00,10000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) 
VALUES (10,'Marketing Manager',9000.00,15000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) 
VALUES (11,'Marketing Representative',4000.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) 
VALUES (12,'Public Relations Representative',4500.00,10500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
 VALUES (13,'Purchasing Clerk',2500.00,5500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) 
VALUES (14,'Purchasing Manager',8000.00,15000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
 VALUES (15,'Sales Manager',10000.00,20000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
 VALUES (16,'Sales Representative',6000.00,12000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
 VALUES (17,'Shipping Clerk',2500.00,5500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
 VALUES (18,'Stock Clerk',2000.00,5000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) 
VALUES (19,'Stock Manager',5500.00,8500.00);


/*Data for the table departments */
INSERT INTO departments(department_id,department_name,location_id)
 VALUES (1,'Administration',1700);
INSERT INTO departments(department_id,department_name,location_id)
 VALUES (2,'Marketing',1800);
INSERT INTO departments(department_id,department_name,location_id)
 VALUES (3,'Purchasing',1700);
INSERT INTO departments(department_id,department_name,location_id)
 VALUES (4,'Human Resources',2400);
INSERT INTO departments(department_id,department_name,location_id) 
VALUES (5,'Shipping',1500);
INSERT INTO departments(department_id,department_name,location_id)
 VALUES (6,'IT',1400);
INSERT INTO departments(department_id,department_name,location_id) 
VALUES (7,'Public Relations',2700);
INSERT INTO departments(department_id,department_name,location_id) 
VALUES (8,'Sales',2500);
INSERT INTO departments(department_id,department_name,location_id)
 VALUES (9,'Executive',1700);
INSERT INTO departments(department_id,department_name,location_id) 
VALUES (10,'Finance',1700);
INSERT INTO departments(department_id,department_name,location_id) 
VALUES (11,'Accounting',1700);


/*Data for the table employees */
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) 
 VALUES (100,'Steven','King','steven.king@sqltutorial.org','515.123.4567','1987-06-17',4,24000.00,NULL,9);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (101,'Neena','Kochhar','neena.kochhar@sqltutorial.org','515.123.4568','1989-09-21',5,17000.00,100,9);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (102,'Lex','De Haan','lex.de haan@sqltutorial.org','515.123.4569','1993-01-13',5,17000.00,100,9);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (103,'Alexander','Hunold','alexander.hunold@sqltutorial.org','590.423.4567','1990-01-03',9,9000.00,102,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (104,'Bruce','Ernst','bruce.ernst@sqltutorial.org','590.423.4568','1991-05-21',9,6000.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (105,'David','Austin','david.austin@sqltutorial.org','590.423.4569','1997-06-25',9,4800.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (106,'Valli','Pataballa','valli.pataballa@sqltutorial.org','590.423.4560','1998-02-05',9,4800.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (107,'Diana','Lorentz','diana.lorentz@sqltutorial.org','590.423.5567','1999-02-07',9,4200.00,103,6);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (108,'Nancy','Greenberg','nancy.greenberg@sqltutorial.org','515.124.4569','1994-08-17',7,12000.00,101,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (109,'Daniel','Faviet','daniel.faviet@sqltutorial.org','515.124.4169','1994-08-16',6,9000.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (110,'John','Chen','john.chen@sqltutorial.org','515.124.4269','1997-09-28',6,8200.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (111,'Ismael','Sciarra','ismael.sciarra@sqltutorial.org','515.124.4369','1997-09-30',6,7700.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (112,'Jose Manuel','Urman','jose manuel.urman@sqltutorial.org','515.124.4469','1998-03-07',6,7800.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (113,'Luis','Popp','luis.popp@sqltutorial.org','515.124.4567','1999-12-07',6,6900.00,108,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (114,'Den','Raphaely','den.raphaely@sqltutorial.org','515.127.4561','1994-12-07',14,11000.00,100,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (115,'Alexander','Khoo','alexander.khoo@sqltutorial.org','515.127.4562','1995-05-18',13,3100.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (116,'Shelli','Baida','shelli.baida@sqltutorial.org','515.127.4563','1997-12-24',13,2900.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (117,'Sigal','Tobias','sigal.tobias@sqltutorial.org','515.127.4564','1997-07-24',13,2800.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (118,'Guy','Himuro','guy.himuro@sqltutorial.org','515.127.4565','1998-11-15',13,2600.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (119,'Karen','Colmenares','karen.colmenares@sqltutorial.org','515.127.4566','1999-08-10',13,2500.00,114,3);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (120,'Matthew','Weiss','matthew.weiss@sqltutorial.org','650.123.1234','1996-07-18',19,8000.00,100,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (121,'Adam','Fripp','adam.fripp@sqltutorial.org','650.123.2234','1997-04-10',19,8200.00,100,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (122,'Payam','Kaufling','payam.kaufling@sqltutorial.org','650.123.3234','1995-05-01',19,7900.00,100,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (123,'Shanta','Vollman','shanta.vollman@sqltutorial.org','650.123.4234','1997-10-10',19,6500.00,100,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (126,'Irene','Mikkilineni','irene.mikkilineni@sqltutorial.org','650.124.1224','1998-09-28',18,2700.00,120,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (145,'John','Russell','john.russell@sqltutorial.org',NULL,'1996-10-01',15,14000.00,100,8);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (146,'Karen','Partners','karen.partners@sqltutorial.org',NULL,'1997-01-05',15,13500.00,100,8);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (176,'Jonathon','Taylor','jonathon.taylor@sqltutorial.org',NULL,'1998-03-24',16,8600.00,100,8);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (177,'Jack','Livingston','jack.livingston@sqltutorial.org',NULL,'1998-04-23',16,8400.00,100,8);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (178,'Kimberely','Grant','kimberely.grant@sqltutorial.org',NULL,'1999-05-24',16,7000.00,100,8);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (179,'Charles','Johnson','charles.johnson@sqltutorial.org',NULL,'2000-01-04',16,6200.00,100,8);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (192,'Sarah','Bell','sarah.bell@sqltutorial.org','650.501.1876','1996-02-04',17,4000.00,123,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (193,'Britney','Everett','britney.everett@sqltutorial.org','650.501.2876','1997-03-03',17,3900.00,123,5);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (200,'Jennifer','Whalen','jennifer.whalen@sqltutorial.org','515.123.4444','1987-09-17',3,4400.00,101,1);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (201,'Michael','Hartstein','michael.hartstein@sqltutorial.org','515.123.5555','1996-02-17',10,13000.00,100,2);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (202,'Pat','Fay','pat.fay@sqltutorial.org','603.123.6666','1997-08-17',11,6000.00,201,2);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (203,'Susan','Mavris','susan.mavris@sqltutorial.org','515.123.7777','1994-06-07',8,6500.00,101,4);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (204,'Hermann','Baer','hermann.baer@sqltutorial.org','515.123.8888','1994-06-07',12,10000.00,101,7);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (205,'Shelley','Higgins','shelley.higgins@sqltutorial.org','515.123.8080','1994-06-07',2,12000.00,101,11);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
 VALUES (206,'William','Gietz','william.gietz@sqltutorial.org','515.123.8181','1994-06-07',1,8300.00,205,11);


 /*Data for the table dependents */
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (1,'Penelope','Gietz','Child',206);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (2,'Nick','Higgins','Child',205);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (3,'Ed','Whalen','Child',200);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (4,'Jennifer','King','Child',100);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (5,'Johnny','Kochhar','Child',101);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (6,'Bette','De Haan','Child',102);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (7,'Grace','Faviet','Child',109);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (8,'Matthew','Chen','Child',110);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (9,'Joe','Sciarra','Child',111);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (10,'Christian','Urman','Child',112);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (11,'Zero','Popp','Child',113);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (12,'Karl','Greenberg','Child',108);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (13,'Uma','Mavris','Child',203);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (14,'Vivien','Hunold','Child',103);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (15,'Cuba','Ernst','Child',104);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
 VALUES (16,'Fred','Austin','Child',105);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (17,'Helen','Pataballa','Child',106);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
 VALUES (18,'Dan','Lorentz','Child',107);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (19,'Bob','Hartstein','Child',201);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (20,'Lucille','Fay','Child',202);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
 VALUES (21,'Kirsten','Baer','Child',204);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (22,'Elvis','Khoo','Child',115);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (23,'Sandra','Baida','Child',116);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
 VALUES (24,'Cameron','Tobias','Child',117);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (25,'Kevin','Himuro','Child',118);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (26,'Rip','Colmenares','Child',119);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (27,'Julia','Raphaely','Child',114);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (28,'Woody','Russell','Child',145);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (29,'Alec','Partners','Child',146);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id) 
VALUES (30,'Sandra','Taylor','Child',176);


Select * from employees
Select * from jobs
Select * from countries
Select * from departments
Select * from dependents
Select * from locations
Select * from regions

Select employee_id, first_name, last_name, hire_date from employees

Select first_name,last_name, salary, salary*2 as New_Salary from employees

Select employee_id, first_name, last_name, hire_date, Salary from employees
order by First_name Asc, last_name desc, salary desc,hire_date desc

SELECT salary
FROM employees
ORDER BY salary DESC;

SELECT DISTINCT salary
FROM employees;

SELECT job_id, salary
FROM employees;

SELECT DISTINCT phone_number
FROM employees;

SELECT *
FROM employees
ORDER BY first_name;

Select Top 5 * from employees

Select * from (
Select *, ROW_NUMBER() Over(Order by(Select Null)) As row_num from employees)
As numbered_rows 
Where row_num between 4 and 8;

Select Top 5* from employees
order by Salary desc

Select * from ( 
Select *, ROW_NUMBER() Over(Order by Salary Desc) as row_num
from employees) as ranked_employees
Where row_num=2;

SELECT *
FROM employees
WHERE salary > 14000
ORDER BY salary DESC;

SELECT *
FROM employees
WHERE department_id = 5;

SELECT *
FROM employees
WHERE last_name = 'Chen';

SELECT *
FROM employees
WHERE hire_date > '1999-01-01';

SELECT *
FROM employees
WHERE YEAR(hire_date) = 1999;

SELECT *
FROM employees
WHERE last_name = 'Himuro';

SELECT *
FROM employees
WHERE last_name LIKE '%Himuro%';

SELECT *
FROM employees
WHERE phone_number IS NULL;

SELECT *
FROM employees
WHERE department_id <> 8;

SELECT *
FROM employees
WHERE department_id NOT IN (8, 10);

SELECT *
FROM employees
WHERE salary > 10000;

SELECT *
FROM employees
WHERE department_id = 8 AND salary > 10000;

SELECT *
FROM employees
WHERE salary < 10000;

SELECT *
FROM employees
WHERE salary >= 9000;

SELECT *
FROM employees
WHERE salary <= 9000;

Create Table Courses(
course_id int primary key,
course_name varchar(20));

Alter Table Courses
add Credit_hours int;

Alter table courses
add fee decimal(10,2),

Alter table courses
add max_limit int;

ALTER TABLE Courses
ALTER COLUMN fee decimal(10, 2) NOT NULL;

Alter table courses
Drop column fee

Alter table courses
Drop column max_limit;

Alter table courses
Drop column credit_hours


CREATE  TABLE  projects (
    project_id  INT  PRIMARY KEY,
    project_name  VARCHAR(255),
    start_date  DATE  NOT NULL,
    end_date  DATE  NOT NULL
);

CREATE  TABLE  project_milestones(
    milestone_id  INT  PRIMARY KEY,
    project_id   INT,
    milestone_name VARCHAR(100)
);

ALTER TABLE project_milestones
ADD CONSTRAINT fk_project
FOREIGN KEY (project_id)
REFERENCES projects(project_id);

SELECT * FROM employees
WHERE salary > 5000 AND salary < 7000;

SELECT * FROM employees
WHERE salary = 7000 OR salary = 8000;

SELECT * FROM employees
WHERE salary BETWEEN 9000 AND 12000;

SELECT * FROM employees
WHERE phone_number IS NULL;

SELECT * FROM employees
WHERE department_id IN (8, 9);

SELECT * FROM employees
WHERE first_name LIKE 'jo%';

SELECT * FROM employees
WHERE first_name LIKE '_h%';

SELECT * FROM employees
WHERE salary > ALL (
    SELECT salary FROM employees WHERE department_id = 8
);

SELECT * FROM employees
WHERE salary > ALL (
    SELECT avg(salary) FROM employees group by department_id
);

Select * from employees
where employee_id in (Select employee_id from dependents);

SELECT * 
FROM employees 
WHERE salary BETWEEN 2500 AND 2900;

SELECT * 
FROM employees 
WHERE salary NOT BETWEEN 2500 AND 2900;

SELECT * 
FROM employees 
WHERE hire_date BETWEEN '1999-01-01' AND '2000-12-31';

SELECT * 
FROM employees 
WHERE hire_date NOT BETWEEN '1989-01-01' AND '1999-12-31';

SELECT * 
FROM employees 
WHERE hire_date BETWEEN '1990-01-01' AND '1993-12-31';

SELECT * 
FROM employees 
WHERE first_name LIKE 'Da%';

SELECT * 
FROM employees 
WHERE first_name LIKE '%er';

SELECT * 
FROM employees 
WHERE last_name LIKE '%an%';

SELECT * 
FROM employees 
WHERE first_name LIKE 'Jo_'
   OR first_name LIKE 'Jo__';

SELECT * 
FROM employees 
WHERE first_name LIKE '%_';

SELECT * 
FROM employees 
WHERE first_name LIKE 'S%' 
  AND first_name NOT LIKE 'Sh%';

SELECT * 
FROM employees 
WHERE department_id = 5;

SELECT * 
FROM employees 
WHERE department_id = 5 
  AND salary <= 5000;

 SELECT * 
FROM employees 
WHERE department_id NOT IN (1, 2, 3);

SELECT * 
FROM employees 
WHERE first_name NOT LIKE 'D%';

SELECT * 
FROM employees 
WHERE salary NOT BETWEEN 5000 AND 10000;

Select e.* from employees e
Left join dependents d on e.employee_id=d.employee_id
where d.employee_id is null

SELECT *
FROM employees
WHERE phone_number IS NULL;


SELECT *
FROM departments
WHERE department_id IN (1, 2, 3);

SELECT *
from employees e
Left join dependents d on e.employee_id=d.employee_id
WHERE department_id IN (1, 2, 3);

SELECT e.first_name, e.last_name, j.job_title, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN jobs j ON e.job_id = j.job_id
WHERE e.department_id IN (1, 2, 3);

SELECT country_name
FROM countries
WHERE country_name IN ('US', 'UK', 'China');

SELECT *
FROM locations
WHERE country_id IN ('US', 'UK', 'CN');

SELECT c.country_name, l.location_id, l.city
FROM countries c
JOIN locations l ON c.country_id = l.country_id;

SELECT country_name
FROM countries
WHERE country_id NOT IN (SELECT DISTINCT country_id FROM locations);

SELECT r.region_id, r.region_name, c.country_id, c.country_name, l.location_id, l.city
FROM regions r
JOIN countries c ON r.region_id = c.region_id
JOIN locations l ON c.country_id = l.country_id;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee,
       CONCAT(m.first_name, ' ', m.last_name) AS Manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id;


CREATE  TABLE  fruits (
	fruit_id  INT PRIMARY KEY,
	fruit_name  VARCHAR (255) NOT NULL,
	basket_id  INTEGER
);
CREATE TABLE baskets (
	basket_id  INT PRIMARY KEY,
	basket_name  VARCHAR (255) NOT NULL
);

INSERT  INTO  baskets  (basket_id, basket_name)
VALUES
	(1, 'A'),
	(2, 'B'),
	(3, 'C');

INSERT  INTO  fruits (
	fruit_id,
	fruit_name,
	basket_id
)
VALUES
	(1, 'Apple', 1),
	(2, 'Orange', 1),
	(3, 'Banana', 2),
	(4, 'Strawberry', NULL);

Select * from fruits
Select * from baskets

Select f.fruit_name, b.basket_name
From fruits f
Full Outer Join baskets b on f.basket_id=b.basket_id


SELECT basket_name
FROM baskets
WHERE basket_id NOT IN (SELECT DISTINCT basket_id FROM fruits);


SELECT fruit_name
FROM fruits
WHERE basket_id IS NULL;


CREATE  TABLE  sales_organization (
	sales_org_id  INT PRIMARY KEY,
	sales_org  VARCHAR (255)
);

 CREATE  TABLE  sales_channel (
	channel_id  INT PRIMARY KEY,
	channel  VARCHAR (255)
);

INSERT INTO sales_organization (sales_org_id, sales_org)
VALUES
	(1, 'Domestic'),
	(2, 'Export');

INSERT INTO sales_channel (channel_id, channel)
VALUES
	(1, 'Wholesale'),
	(2, 'Retail'),
	(3, 'eCommerce'),
	(4, 'TV Shopping');

 SELECT so.sales_org, sc.channel
FROM sales_organization so
CROSS JOIN sales_channel sc;


SELECT department_id FROM employees GROUP BY department_id;

Select department_id, count(*) as employee_count from employees group by department_id

SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
ORDER BY employee_count DESC;

SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;

SELECT department_id, MIN(salary) AS min_salary, MAX(salary) AS max_salary, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;

SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id;

SELECT department_id, job_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id, job_id;

SELECT manager_id
FROM employees
GROUP BY manager_id
HAVING COUNT(*) >= 5;

SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
HAVING SUM(salary) BETWEEN 20000 AND 30000;

SELECT department_id
FROM employees
GROUP BY department_id
HAVING MIN(salary) > 10000;

SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) BETWEEN 5000 AND 7000;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
UNION
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM dependents;

SELECT id FROM A
INTERSECT 
SELECT id FROM B
ORDER BY id DESC;

SELECT *
FROM employees
WHERE employee_id IN (SELECT DISTINCT employee_id FROM dependents);

SELECT *
FROM employees
WHERE employee_id NOT IN (SELECT DISTINCT employee_id FROM dependents);

SELECT
    employee_id,
    first_name,
    last_name,
    hire_date,
    CASE
        WHEN MONTH(hire_date) = MONTH(GETDATE()) AND DAY(hire_date) = DAY(GETDATE()) THEN 'Today'
        ELSE CAST(DATEDIFF(YEAR, hire_date, GETDATE()) AS VARCHAR) + ' years'
    END AS work_anniversary
FROM employees;

UPDATE employees
SET last_name = 'Lopez'
WHERE employee_id = 192;


CREATE TRIGGER MatchLastNameTrigger
ON dependents
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN employees e ON i.parent_id = e.employee_id
        WHERE i.last_name <> e.last_name
    )
    BEGIN
        RAISERROR ('Last name of dependent must match the last name of the parent.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END
END;

SELECT * FROM employees
WHERE department_id IN (
    SELECT department_id FROM departments
    WHERE location_id = 1700
);

SELECT * FROM employees
WHERE department_id NOT IN (
    SELECT department_id FROM departments
    WHERE location_id = 1700
);

SELECT * FROM employees
WHERE salary = (
    SELECT MAX(salary) FROM employees
);

SELECT * FROM employees
WHERE salary > (
    SELECT AVG(salary) FROM employees
);

SELECT * FROM departments
WHERE department_id IN (
    SELECT department_id FROM employees
    WHERE salary > 10000
);

SELECT * FROM departments
WHERE department_id NOT IN (
    SELECT department_id FROM employees
    WHERE salary > 10000
);

SELECT department_id, MIN(salary) AS lowest_salary
FROM employees
GROUP BY department_id;


SELECT * FROM employees e
WHERE salary > (
    SELECT MIN(salary) FROM employees
    WHERE department_id = e.department_id
);


SELECT * FROM employees e
WHERE salary >= (
    SELECT MAX(salary) FROM employees
    WHERE department_id = e.department_id
);

SELECT department_id, AVG(salary) AS average_salary
FROM employees
GROUP BY department_id;

SELECT AVG(average_salary) AS average_of_averages FROM (
    SELECT AVG(salary) AS average_salary FROM employees
    GROUP BY department_id
) AS department_averages;

SELECT e.employee_id, e.salary, AVG(e.salary) OVER() AS average_salary,
       e.salary - AVG(e.salary) OVER() AS salary_difference
FROM employees e;
