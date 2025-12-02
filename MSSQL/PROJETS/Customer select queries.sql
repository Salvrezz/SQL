-- Retrieve All Customer Data
use My_Database

select * 
from [dbo].[Customers]


select 
	FirstName,
	Country, 
	Score
from [dbo].[Customers]

select * 
from [dbo].[Customers]
where score <=700 

select * 
from [dbo].[Customers]
where score != 0 

select * 
from [dbo].[Customers]
where FirstName = 'Mark'

-- Filtering for Location 
select * 
from [dbo].[Customers]
where Country = 'usa'

select * 
from [dbo].[Customers]
where Country = 'Germany'

-- Sort scores from highest to lowest
select * 
from [dbo].[Customers]
order by score desc

-- Sort scores from lowest to highest 
select * 
from [dbo].[Customers]
order by score asc

-- Sort result by the country and then by the highest score
select * 
from [dbo].[Customers]
order by Country asc,
		score desc

-- Find the total score for each country
select country,
		sum(Score) as Total_score
from [dbo].[Customers]
group by Country

-- Find the total score and total number of customers for each country
select country,
		sum(Score) as Total_score,
		count(CustomerID) as Total_customers
from [dbo].[Customers]
group by Country

-- Find the average score for each country considering only customers with
-- a score not equal to 0 and return only those countries 
-- with an average score greater than 430

select country,
		avg(Score) as avg_score
from [dbo].[Customers]
where score != 0
group by Country
having avg(Score) > 430

-- Retrieve the top 3 customers with highest scores
select top 3 * 
from [dbo].[Customers]
order by score desc

-- Retrieve the lowest 2 customers based on the score 
select top 2 * 
from [dbo].[Customers]
order by score asc

