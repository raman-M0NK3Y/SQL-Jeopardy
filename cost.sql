with
ship_time (cid, when, weight, cost ) as ( 
	select p.cid, p.when, (sum(b.weight * p.qnty)), (sum(o.price * p.qnty))
	from yrb_purchase p, yrb_book b, yrb_offer o
	where o.title = b.title and o.year = b.year and o.club = p.club and p.year = o.year and p.title = o.title 
	group by p.cid, p.when)

select s.cid, cast (s.when as date) as day, (min(s.cost + shi.cost)) as cost
from ship_time s, yrb_shipping shi
where s.weight <= shi.weight
group by s.cid, s.when
order by s.cid;
