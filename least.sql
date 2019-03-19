select  club, count(cid) as count
from yrb_member
group by club
order by count(cid)
fetch first 1 rows only;
