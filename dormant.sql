select distinct c.cid, c.name
from yrb_customer c, yrb_purchase p, yrb_member m
where c.cid=m.cid and c.cid !=  ALL(select cid from yrb_purchase where yrb_purchase.club=m.club);
