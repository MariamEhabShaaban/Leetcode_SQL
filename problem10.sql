with process as (
    select a.machine_id,a.process_id,a.timestamp as st_time,min(b.timestamp) as endtime
from activity a join activity b
on a.process_id=b.process_id and a.machine_id=b.machine_id  and a.activity_type='start' and b.activity_type='end' and b.timestamp>a.timestamp
group by a.machine_id,a.process_id,a.timestamp
)
select machine_id, avg(endtime-st_time) as processing_time 
from process
group by machine_id