# section 7 challenge solutions

# 1. reverse and uppercase this sentence 'Why does my cat look at me with such hatred?'
SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));

# 2. What does this print out?
  # SELECT
	#REPLACE
	#(
	#CONCAT('I', ' ', 'like', ' ', 'cats'),
	#' ',
	#'-'
	#);
  
  # this prints out "I-like-cats"
  
  # 3. Replace spaces in titles with -> 
  SELECT 
	REPLACE (
	title, ' ', '->'
    ) AS 'title'
  FROM books;

# print out a table with a forwards column (last names normally) and a backwards column (last names backwards)
SELECT author_lname AS 'forwards', REVERSE(author_lname) AS 'backwards' FROM books;

# full name in caps table
SELECT UPPER(
	CONCAT(
		author_fname,
        ' ',
        author_lname
        )
	) AS 'full name in caps'
    FROM books;

# print simple blurb table with title and year released
SELECT CONCAT(title, ' was released in ', released_year) AS blurb FROM books;

# print book titles and the length of each title
SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;

# short title, author, quantity

SELECT 
	CONCAT(SUBSTR(title, 1, 10), '...') AS 'short title',
    CONCAT(author_lname, ', ', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM books;
    
		
