select query_name,round(sum(1.0*rating/position)/count(query_name),2) as quality, round(sum(iif(rating<3,1.0,0.0))/count(query_name)*100.0,2) as poor_query_percentage
from Queries
group by query_name