select title, year, cat
from yrb_book
where lower(title) like '%'||lower(cat) || '%';




