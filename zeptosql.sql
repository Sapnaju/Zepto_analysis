drop table if exists zepto;


create table zepto (
sku_id serial primary key,
category varchar(120),
name varchar(150) not null,
mrp numeric(8,2),
discountpercent numeric(5,2),
availablequantity int,
discountedsellingprice numeric(8,2),
weightingms int,
outofstock boolean,
quantity int
);
--COUNT ROWS
select count(*) from zepto;

--sample data
select * from zepto
limit 10;

--null values
select * from zepto 
where name IS NULL
OR
category IS NULL
OR
mrp IS NULL
OR
discountpercent IS NULL
OR
availablequantity IS NULL
OR
outofstock IS NULL
OR
quantity IS NULL;
--product categorie
SELECT DISTINCT category 
FROM zepto
ORDER BY category;
--PRODUCT in stock or not
select outofstock , count(sku_id)
from zepto
group by outofstock;

--product names present more
select name, count(sku_id) as "number of sku"
from zepto
group by name
having count(sku_id) > 1
order by count(sku_id) desc;

--DATA CLEANING
--product price =0
select * from zepto
where mrp=0 or discountedsellingprice = 0;

delete from zepto 
where mrp=0;

--convert paise to rs
update zepto
set mrp = mrp/100.0,
discountedsellingprice = discountedsellingprice/100.0;

select mrp, discountedsellingprice from zepto

--business questions
--1.top 10 products have a highest discount percentage

 select distinct name , mrp , discountpercent
 from zepto
 order by discountpercent desc
 limit 10; 

 --2.high mrp and outofstock
 select distinct name, mrp
 from zepto
 where outofstock = TRUE and mrp >300
 order by mrp desc;

 --3. calculate estimated revenue for each category
 select category,
 sum(discountedsellingprice * availablequantity) as total_revenue
 from zepto
 group by category
 order by total_revenue;

 --4. mrp more than 500 and discount less than 10%
 select distinct name, mrp,discountpercent
 from zepto
 where mrp> 500 and discountpercent<10
 order by mrp desc,discountpercent desc;
 
 --5.top 5 categories   highest average discount percentage
 select  category, 
 round (avg(discountpercent),2) as average_discountpercent
 from zepto
 group by category
 order by average_discountpercent desc
 limit 5;

 --6.price per gram for products above 100g and sort by best value

 select distinct name,weightingms,discountedsellingprice,
 round(discountedsellingprice/weightingms,2) as price_per_gram
 from zepto
 where weightingms >= 100
 order by price_per_gram;
 --7. group products into categories low, medium ,bulk
 select distinct name,weightingms,
 case when weightingms < 1000 then 'LOW'
 	when weightingms < 5000 then 'MEDIUM'
 	else 'BULK'
 	end as weight_category
 from zepto;
 --8. total inventory weight per category
 select category,
 sum(weightingms * availablequantity) as total_weight
 from zepto
 group by category
 order by total_weight;
 