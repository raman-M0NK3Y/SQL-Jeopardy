select distinct c1.name as Customera, c2.name as Customerb
from yrb_customer c1, yrb_customer c2, yrb_purchase p1, yrb_purchase p2
where c1.cid > c2.cid and p1.title = p2.title and p1.year = p2.year and p1.cid = c1.cid and p2.cid = c2.cid;
