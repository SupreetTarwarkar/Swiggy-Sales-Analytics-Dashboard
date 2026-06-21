--Create schema
create schema schema_swiggy

--Checking All tables
select * from schema_swiggy.date
select * from schema_swiggy.dish
select * from schema_swiggy.fact_orders
select * from schema_swiggy.location
select * from schema_swiggy.restaurant

---------------------------------------------------------------------
select * from schema_swiggy.date  -- Data type of date is not date

--Creating New Column
alter table schema_swiggy.date
add order_date_new date

--Updating new column wth order_date with date as data type
update schema_swiggy.date
set order_date_new = try_convert(date,order_date,5)

--Checking is their any null value
select * from schema_swiggy.date
select * from schema_swiggy.date
where order_date_new is NULL;
---------------------------------------------------------------------

--Add date attributes
alter table schema_swiggy.date
add order_year int;

alter table schema_swiggy.date
add order_month_no int;

alter table schema_swiggy.date
add order_month_name varchar(20);

alter table schema_swiggy.date
add order_day int;

alter table schema_swiggy.date
add weekday_name varchar(20);

alter table schema_swiggy.date
add weekday_no int;

--Populate columns
update schema_swiggy.date
set
order_year = year(order_date_new),
order_month_no = month(order_date_new),
order_month_name = datename(month, order_date_new),
order_day = day(order_date_new),
weekday_name = left(datename(weekday, order_date_new),3),
weekday_no =
case weekday_name
    when 'Mon' then 1
    when 'Tue' then 2
    when 'Wed' then 3
    when 'Thu' then 4
    when 'Fri' then 5
    when 'Sat' then 6
    when 'Sun' then 7
end;
---------------------------------------------------------------------

select * from schema_swiggy.date 

---------------------------------------------------------------------
-- add new column to classify dishes as veg or non-veg
alter table schema_swiggy.dish
add food_type varchar(20);

-- populate food_type based on keywords found in dish_name
update schema_swiggy.dish
set food_type =
case
    when lower(dish_name) like '%chicken%'
      or lower(dish_name) like '%egg%'
      or lower(dish_name) like '%fish%'
      or lower(dish_name) like '%mutton%'
      or lower(dish_name) like '%prawn%'
      or lower(dish_name) like '%kebab%'
      or lower(dish_name) like '%kabab%'
      or lower(dish_name) like '%biryani%'
    then 'Non-Veg'
    else 'Veg'
end;

-- validate results
select * from schema_swiggy.dish;

--Checking is their any null value
select * from schema_swiggy.dish
where food_type is NULL;
---------------------------------------------------------------------
--Restaurant Rating Filter Creation
select * from schema_swiggy.fact_orders;

--Create rating buckets for slicer filtering
alter table schema_swiggy.fact_orders
add rating_filter varchar(20);

update schema_swiggy.fact_orders
set rating_filter =
case
    when rating >= 4.5 then 'rated 4.5+'
    when rating >= 4.0 then 'rated 4.0+'
    when rating >= 3.5 then 'rated 3.5+'
    when rating >= 3.0 then 'rated 3.0+'
    else 'below 3.0'
end;

select distinct rating_filter
from schema_swiggy.fact_orders
order by rating_filter;

select
    rating_filter,
    count(*) as total_rows
from schema_swiggy.fact_orders
group by rating_filter
order by rating_filter;

---------------------------------------------------------------------
-- Price Range Classification
alter table schema_swiggy.fact_orders
add price_range varchar(20);

update schema_swiggy.fact_orders
set price_range =
case
    when price < 150 then 'under ₹150'
    when price < 300 then '₹150 - ₹299'
    when price < 400 then '₹300 - ₹399'
    when price < 500 then '₹400 - ₹499'
    when price < 600 then '₹500 - ₹599'
    when price < 800 then '₹600 - ₹799'
    when price < 1000 then '₹800 - ₹999'
    else '₹1000+'
end;

select
    price_range,
    count(*) as total_orders,
    sum(price) as total_sales
from schema_swiggy.fact_orders
group by price_range
order by
    case
        when price_range = 'under ₹150' then 1
        when price_range = '₹150 - ₹299' then 2
        when price_range = '₹300 - ₹399' then 3
        when price_range = '₹400 - ₹499' then 4
        when price_range = '₹500 - ₹599' then 5
        when price_range = '₹600 - ₹799' then 6
        when price_range = '₹800 - ₹999' then 7
        when price_range = '₹1000+' then 8
    end;
---------------------------------------------------------------------


