select title, year, cat
from yrb_book
where lower(title) like '%'||lower(cat) || '%';



TITLE                     YEAR   CAT
------------------------- ------ ----------
Yum, Yum, English Cooking   1993 cooking
Humor in SQL                2000 humor

  2 record(s) selected.
