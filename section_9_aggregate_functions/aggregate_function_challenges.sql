# print number of books in the database
SELECT COUNT(title) FROM books;

# print how many books were released in each year
SELECT released_year, COUNT(title) FROM books GROUP BY released_year;

# print out total number of books in stock
SELECT SUM(stock_quantity) FROM books;

# find the average released_year for each author
SELECT AVG(released_year) FROM books GROUP BY author_lname, author_fname;

# find the full name of the author who wrote the longest book
SELECT CONCAT(author_fname, ' ', author_lname) AS 'full name' FROM books ORDER BY pages DESC LIMIT 1;

# output year, # books, avg pages
SELECT released_year AS 'year', COUNT(title) AS '# books', AVG(pages) AS 'avg pages' 
FROM books GROUP BY released_year;