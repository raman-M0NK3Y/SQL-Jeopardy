select c.name, b.cat, sum(o.price) as cost
from yrb_customer c, yrb_book b, yrb_offer o, yrb_purchase p
where c.cid = p.cid and p.title = b.title and p.year = b.year and o.club = p.club and p.year = o.year and o.title = p.title
group by c.cid, c.name, b.cat;
