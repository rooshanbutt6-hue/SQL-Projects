use sql_project;

SHOW TABLES;

#select 10 rows
select * from retail_sales_wizard_ready limit 10;

#count total number of data

select count(*) from retail_sales_wizard_ready;

# target null values

select * from retail_sales_wizard_ready where gender is null;

select * from retail_sales_wizard_ready where total_sale is null;

#Select all rows to check null values

SELECT * FROM retail_sales_wizard_ready
WHERE 
    sale_date IS NULL OR sale_time IS NULL OR customer_id IS NULL OR 
    gender IS NULL OR age IS NULL OR category IS NULL OR 
    quantity IS NULL OR price_per_unit IS NULL OR cogs IS NULL;
    
DELETE FROM retail_sales
WHERE 
    sale_date IS NULL OR sale_time IS NULL OR customer_id IS NULL OR 
    gender IS NULL OR age IS NULL OR category IS NULL OR 
    quantity IS NULL OR price_per_unit IS NULL OR cogs IS NULL;
    
    
# Select distinct category of customers

SELECT DISTINCT category FROM retail_sales_wizard_ready;
    
# Write a SQL query to retrieve all columns for sales made on '2022-11-05:

select * from retail_sales_wizard_ready where sale_data = '2022-11-05';

#Write a SQL query to retrieve all transactions 
#where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:


Select * from retail_sales_wizard_ready where category = 'Clothing' and quantity > 4 and 
TO_CHAR(sale_date, 'YYYY-MM') = '2022-11';

#Write a SQL query to calculate the total sales (total_sale) for each category.

SELECT 
    category, 
    SUM(total_sale) AS total_sales
FROM 
    retail_sales_wizard_ready
GROUP BY 
    category;
    
# Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

select category, avg(age) AS Average_age_of_customer from retail_sales_wizard_ready where category = 'Beauty' 
group by category;


# Write a SQL query to find all transactions where the total_sale is greater than 1000.

Select transactions_id from retail_sales_wizard_ready where total_sale < 10000;


# Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

Select * from retail_sales_wizard_ready;

Select gender,category,count(transactions_id) from retail_sales_wizard_ready group by gender,category order by 1;

#Write a SQL query to calculate the average sale for each day . Find out best selling month in each year

Select sale_date, avg(total_sale) AS Average_sale_for_each_day from retail_sales_wizard_ready group by sale_date
order by 1;

# Write a SQL query to find the top 5 customers based on the highest total sales :

SELECT
    customer_id,
    SUM(total_sale) AS total_sales
FROM
    retail_sales_wizard_ready
GROUP BY
    customer_id
ORDER BY
    total_sales DESC
LIMIT 5;

#Write a SQL query to find the number of unique customers who purchased items from each category.


Select category, count(Distinct customer_id) from retail_sales_wizard_ready group by category;

#Write a SQL query to create each shift 
#and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17):



SELECT 
    CASE
        WHEN sale_time < 12 THEN 'Morning'
        WHEN sale_time BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS shift,
    COUNT(*) AS number_of_orders
FROM 
    retail_sales_wizard_ready
GROUP BY 
    shift;
