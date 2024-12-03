select w.id
from weather w ,weather wth
where  DATEADD(day,-1,w.recorddate) = wth.recorddate and w.temperature>wth.temperature