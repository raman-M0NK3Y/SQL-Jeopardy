with
expensive (price) as (
	select o.price
	from yrb_offer o, yrb_book b
	where b.title = o.title and b.year = o.year and b.language = 'English' and o.price
	>= ALL(select o2.price from yrb_offer o2 where o2.club = o.club
	))

	select o3.title, o3.year, o3.price
	from yrb_offer o3
	where o3.price >= ALL (select avg(price) from expensive);
