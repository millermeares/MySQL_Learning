# once in correct db

# Select titles that contain 'stories'
SELECT title FROM books WHERE title LIKE '%stories%';

# print out the title and page count of the longest book
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

# print a summary containt the title and the year, for the 3 most recent books
SELECT CONCAT(title, ' - ', released_year) AS summary FROM books ORDER BY released_year DESC LIMIT 3;

# find all books with an other_lname that contains a space
SELECT title FROM books WHERE author_lname LIKE "% %";

# find the 3 books with the lowest stock
SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity LIMIT 3;

# Print title and author_lname sorted by author_lname and then by title
SELECT title, author_lname FROM books ORDER BY author_lname, title;
# could also end with: ORDER BY 2, 1;

# 'yell' containg 'MY FAVORITE AUTHOR IS' sorted alphabetically by last name
SELECT 
CONCAT('MY FAVORITE AUTHOR IS ', Upper(author_fname), ' ', Upper(author_lname), '!') AS YELL
FROM books ORDER BY author_lname;