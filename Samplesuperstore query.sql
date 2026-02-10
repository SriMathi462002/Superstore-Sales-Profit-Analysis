use mathi;
select * from samplesuperstore;
#Total sales and profit-------------------------
select 
round(sum(Sales)) as Total_Sales,
round(sum(Profit)) as Total_Profit
from samplesuperstore;
#Sales and profit by region---------------------
select Region,
round(sum(Sales)) as Total_Sales,
round(sum(Profit)) as Total_Profit from samplesuperstore 
group by Region
order by Total_Sales desc;
#Sales and Profit by Category-------------------------------------
select Category,
round(sum(Sales))as Tota_Sales,
round(sum(Profit))as Total_Profit from samplesuperstore
group by Category;
#Sub-category causing loss----------------------------------------
SELECT `Sub-Category` AS SubCategory,
round(sum(Profit)) as Loss
from samplesuperstore
group by SubCategory
having sum(Profit)<0 ;
#Discount vs Proft impact------------------------
select Discount,round(Avg(Profit)) as Profit from samplesuperstore
group by Discount
order by Profit desc;
#Customer segment performance
SELECT 
    Segment,
    ROUND(SUM(Sales)) AS sales,
    ROUND(SUM(Profit)) AS profit
FROM samplesuperstore
GROUP BY Segment;




