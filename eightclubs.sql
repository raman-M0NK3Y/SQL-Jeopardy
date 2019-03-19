select o.title, o.year
from yrb_offer o
group by o.title, o.year
having count(*) = 8;
