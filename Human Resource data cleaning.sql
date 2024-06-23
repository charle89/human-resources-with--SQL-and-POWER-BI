select* from `human resource`;
describe  `human resource`;

--- change the name of the first column to be descriptive 
alter table `human resource`
rename column `ï»¿id` to emp_id;
 alter table `human resource`
 modify birthdate date;
 
 ----- str_ to_date(): is used to convert string / text to date
 update `human resource`
 set birthdate = case when birthdate like "%/%/%"
 then date_format(str_to_date(birthdate, "%m/%d/%Y"), "%Y-%m-%d")
 else date_format( str_to_date(birthdate, "%m-%d-%Y"), "%Y-%m-%d") end;
 
alter table`human resource`
modify birthdate date;

update `human resource`
 set hire_date = case when hire_date like "%/%/%"
 then date_format(str_to_date(hire_date, "%m/%d/%Y"), "%Y-%m-%d")
 else date_format( str_to_date(hire_date, "%m-%d-%Y"), "%Y-%m-%d") end;
 alter table`human resource`
modify hire_date date;

drop view location;
create view location  as 
select location, count(emp_id)  `total employees`
from `human resource`
group by location;

----- show the age distributionof the employee


