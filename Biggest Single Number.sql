select max(num) as num
from(
  select num,count(num) as cnt
  from MyNumbers
  group by num

)as new
where cnt=1