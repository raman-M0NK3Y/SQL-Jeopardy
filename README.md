# SQL-Jeopardy


In this project, I worked with an existing database, the York River Bookseller's Database (YRB DB). For SQL Jeopardy, I implemented a number of SQL queries over the YRB DB. 

The script yrb-create creates the YRB DB schema. It also populates the tables with mock data.

York River Booksellers is an online bookstore. Customers belong to various clubs. Everybody belongs to at least the club basic. Books are available via different offers per club. Thus the price of a book is determined by which offer (thus club) it was bought under.

An 'order' is considered to be all the books a customer bought at the same time (when in purchase). These will be shipped together.

1. substring
List each book whose category is part of its title; i.e., its category is a substring of the title. This should be case insensitive; e.g., “humor” is a substring of “Humorous Tales”.

Show book's title, year, and category.

2. clubs
Show in a single tuple the number of members in clubs Basic and AAA

Show the two numbers in a table with attributes #basic and #AAA.

3. pairs
Which pairs of customers purchased at least one book in common?

List distinct pairs of customers (by name). For each pair of customers, show fist the one with the larger CID; name the two columns customera and customerb.

4. least
Which club or clubs have the least members?

Show the club(s) and the number.

5. categories
For each customer, find the total cost he or she has paid for books in each category. You don't need to consider qnty for this query, just can assume that qnty for every purchase is 1

Show the customers's name, the category and the cost.

6. dormant
Select distinct customers (by cid) who didn't purchase books from all the club(s) he or she belongs to.

Show the CID and name of the customer(s). Do not count customers who did not belong to any clubs.

7. most
For each customer, show the category he or she spent more on the books of that category than on books of any other category. You do not need to consider qnty for this query, that is, you can assume that qnty for every purchase is 1.

Show customer name, the category and the cost.

8. eightclubs
Find the books which are only offered by eight clubs.

Show the title and the year.

9. expensive
Select the books, which are more expensive than the average price (across all clubs) of the most expensive books (for each club) written in English. If a club doesn't have books written in English, do not count.

Show the title, the year and the price of the book.

10. cost
Suppose all books shipped to the customer in purchases made on the same time (when) are shipped as one package. Remember, that customers are billed for the books and the postage.

For each customer, how much do they spend on each package? If the weight of one package is X grams, the entry just higher than (or equal to) X is found in the shipping table and the associated shipping price is the postage for this package.
Show the customer's cid, the day of the package and the cost.


