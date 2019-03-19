select count(*) as #Basic,
(select count(*) as #AAA
	from yrb_member
	where club = 'AAA')
from yrb_member
where club = 'Basic';
