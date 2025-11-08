select 
it.investor_id,
s.sector_name,
round((cast(it.no_of_share as float) / ( select sum(it2.no_of_share)
from investor_transactions it2
where it2investor_id = it.investor_id )) * 100, 2 )
as share_percentage 
from investor_transactions it 
join sector s on it.sector_id = s.sector_id order by it.inventor_id, s.sector_name; 
