with
cat_tot(cid, name, cat, total) as (
	select c.cid, c.name, b.cat, sum(o.price) as total
	from yrb_customer c, yrb_purchase p, yrb_offer o, yrb_book b
	where p.cid = c.cid and p.title = b.title and p.year = b.year and o.title = b.title and o.year = b.year and p.club = o.club
	group by c.cid, c.name, b.cat
)
select c.name, c.cat, c.total as cost
from cat_tot c 
where c.total >= ALL( select total from cat_tot where cat_tot.name = c.name and cat_tot.cid = c.cid);
