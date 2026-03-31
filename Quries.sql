CREATE DATABASE ZOMATODB;
USE ZOMATODB;
select * from resturents;
#Total Resturents
select count(*) as Total_resturents
from resturents;
# Total resturent are 296

select name,avg(rate) as Avg_rating
from resturents
group by name;
#avg rating is 3.1...

select SUM(votes) as total_votes
from resturents;
# total votes are 78384
ALTER TABLE resturents
CHANGE `approx_cost(for two people)` cost FLOAT;
select count(*) as total,
case
when cost<300 then 'low cost'
when cost<500 then 'medium cost'
else 'high cost'
end as cost_category,
avg(rate) as avg_rating
from resturents
group by cost_category;

select online_order,avg(rate) as avg_rating
from resturents
group by online_order;

select book_table,avg(rate) as avg_rating
from resturents
group by book_table;

select name,avg(votes) as top_voting,
avg(rate) as top_rating
from resturents
group by name
 limit 10;