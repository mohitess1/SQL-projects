CREATE DATABASE IF NOT EXISTS cars1;

use cars1;

--- READ DATA ---

select*from car_dekho;

--- TOTAL CARS: TO GET A COUNT OF TOTAL RECORDS---

select count(*)from car_dekho;

--- THE MANAGER ASKED THE EMPLOYEE HOW MANY CARS WILL BE AVAILABLE IN 2023---

select count(*)from car_dekho where year = 2023;

--- THE MANAGER ASKED THE EMPLOYEE HOW MANY CARS WILL BE AVAILABLE IN 2020,2021,2022 ---

select count(*)from car_dekho where year = 2020;              
select count(*)from car_dekho where year = 2021;
select count(*)from car_dekho where year = 2022;

--- GROUP BY ---
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

--- CLIENT ASKED ME TO PRINT THE TOTAL OF ALL CARS BY YEAR,I DO NOT SEE ALL THE DETAILS ---
select year, count(*) from car_dekho group by year;

--- CLIENT ASKED TO CAR DEALER AGENT HOW MANY DIESEL CARS WILL THERE BE IN 2020? ---
select count(*) from car_dekho where year=2020 and fuel = "Diesel";

--- CLIENT ASKED TO CAR DEALER AGENT HOW MANY PETROL CARS WILL THERE BE IN 2020? ---
select count(*) from car_dekho where year=2020 and fuel = "Petrol";   #51

--- THE MANAGER TOLD THE EMPLOYEE TO GIVE A PRINT ALL THE FUEL CARS (PETROL,DIESEL AND CNG) COME BY ALL YEAR ---
select year,count(*) from car_dekho where fuel = "Petrol" group by year;
select year,count(*) from car_dekho where fuel = "Diesel" group by year;
select year,count(*) from car_dekho where fuel = "CNG" group by year;

--- MANAGER SAID THERE WERE MORE THEN 100 CARS IN A GIVEN YEAR , WHICH YEAR HAD MORE THAN 100 CARS? ---
select year,count(*) from car_dekho group by year having count(*)>100;
select year,count(*) from car_dekho group by year having count(*)<50;

--- THE MANAGER SAID TO THE EMPLOYEE ALL CARS COUNT DETAILS BETWEEN 2015 AND 2023 ; WE NEED A COMPLETE LIST ---
select count(*) from car_dekho where year between 2015 and 2023;

--- THE MANAGER SAID TO THE EMPLOYEE ALL CARS DETAILS BETWEEN 2015 AND 2023 ; WE NEED A COMPLETE LIST ---
select *from car_dekho where year between 2015 and 2023;

--- THANK YOU---



