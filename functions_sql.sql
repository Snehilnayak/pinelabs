select * from city;
select concat(city_id,"-",city) from city;
select concat("Snehil"," ","p");

select city,length(city) from city;
select length("mysql");

select city,instr(city,'o') from city;
// gives 0 if the letter o is not present in the string

select city,left(city,3) from city; 
// extract only that number of characters as specified

select city,left(city,3),right(city,3) from city;

select city,mid(city,2,3) from city;
// from which postion to start and upto what length
select mid('ibridge360',8,3);
select mid("ibridge360",8,3);

select city,lower(city) from city;
select city,upper(city) from city; 

select length("       mysql"); 
select length(ltrim("      mysql"));
// to remove unwanted spaces from beginning;

select length(rtrim("mysql  ")); 

select insert("sql.com",1,3,"mysql");
// from first position to 3 length we want to replace
// sql.com with mysql , output - mysql.com as sql got replaced
// with mysql

select replace("malayalam","a","z");
// a is replaced with z

select * from customer;
select replace(first_name,first_name,last_name) from customer;

select substr("mysql tutorial",7,3);
// which position to start and length 

shobhahdp@gmail.com
// dispaly only name
select left("shobhahdp@gmail.com",9);
select instr("shobhahdp@gmail.com",'@');
select left("shobhahdp@gmail.com",instr("shobhahdp@gmail.com","@") -1);
select substr("shobhahdp@gmail.com", instr("shobhahdp@gmail.com",'@') +1);

select substring_index("www.mysql.com",'.',1);
// output www 
// first . is used as delimiter
select substring_index("www.mysql.com",'.',2);
// www.mysql is output

select trim("      mysql    ");
// unwanted spaces removed from both the ends 

select trim(leading 'z' from 'zzzmysql.com');
// output - mysql.com

select trim(trailing 'z' from 'mysql.comzzz');

select reverse('mysql.com');

select locate('o','helloworld',6);
// starts to locate o after 6th position only


// questions 
select Customer_name from customer
where length(Customer_name) > 5;

// dob > 1990
select Customer_name from customer 
where year(customer_dob) > 1990;

select Customer_name from customer 
where left(customer_dob,4) > 1990;

// prefix country code to customer phone
use concat

// stationary how manny t are there 
select length("stationary") - length(replace("stationary",'t',''));



............Numeric function

select abs(-15);
select power(2,3);
select sqrt(25);
select pi(); // no arguments
select round(230.23); // 230
select round(230.23324,2) // 230.23
select ceil(23432.342) // 23433
select ceil(-23432.342) // -23432
select floor(23.342) // 23
select floor(-23.23) // -24
select square(4)

----- Date and time functions 
select sysdate()
select current_timestamp()
select now()
// all the above functions are same 

select adddate(sysdate(),interval -90 day)
// adds 7 days to current date 
select adddate(sysdate(),interval -3 month)
select adddate(sysdate(),interval 2 year)

select sysdate(),addtime(sysdate(),'1:10:00')
// hours - mins - secs 

select curdate()
// without the time it gives the date sysdate() gives time as well
select date(sysdate())
select datediff('2023-09-19',sysdate())
// 62 days

select date_format(sysdate(),'%m') 
// displays numerical value of month 
select date_format(sysdate(),'%M')
// displays July instead of 7 
select date_format('2023-01-01','%b')
// Jan dispalyed instead of January

-- Year 
select date_format(sysdate(),'%y')
// 23
select date_format(sysdate(),'%Y')
// 2023 

-- day 
select date_format(sysdate(),'%d')
// 19
select date_format(sysdate(),'%W')
// wednesday
select date_format(sysdate(),'%a')
// wed 

select date_format(sysdate(),'%y,%M,%W')
// 23, July, Wednesday

// customer with same month as todays month
select Customer from customer 
where date_format(customer_dob,'%m') == date_format(sysdate(),'%m')

// how to display customer age
select current_date() - customer_dob
from customer

-----Aggregate function 
select * from product

select max(price) from product

select min(price) from product

select sum(price) from product

select avg(price) from product

select count(product_name) from product

select distinct(product_name) from product



