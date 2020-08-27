'''
Challenge1
'''
SELECT  tanda.au_id AS AUTHOR_ID,authors.au_lname AS LAST_NAME, authors.au_fname AS FIRST_NAME, titles.title AS TITLE, pb.pub_name as PUBLISHER, titles.title_id
	FROM titles
		LEFT JOIN titleauthor as tanda
			ON titles.title_id = tanda.title_id
		LEFT JOIN authors 
			ON tanda.au_id = authors.au_id
		LEFT JOIN publishers as pb
			ON pb.pub_id = titles.pub_id
;
'''
Challenge2
'''
SELECT authors.au_id AS AUTHOR_ID,authors.au_lname AS LAST_NAME, authors.au_fname AS FIRST_NAME, pb.pub_name as PUBLISHER, count(pb.pub_name) as TITLE_COUNT
	FROM titles
		LEFT JOIN titleauthor as tanda
			ON titles.title_id = tanda.title_id
		LEFT JOIN authors 
			ON tanda.au_id = authors.au_id
		LEFT JOIN publishers as pb
			ON pb.pub_id = titles.pub_id
GROUP BY concat(pb.pub_name, authors.au_id);
'''
Challenge3
'''
SELECT authors.au_id AS AUTHOR_ID,authors.au_lname AS LAST_NAME, authors.au_fname AS FIRST_NAME, sl.qty AS TOTAL
	FROM titles
		LEFT JOIN titleauthor as tanda
			ON titles.title_id = tanda.title_id
		LEFT JOIN authors 
			ON tanda.au_id = authors.au_id
		LEFT JOIN sales as sl
			ON titles.title_id = sl.title_id
GROUP BY AUTHOR_ID
ORDER BY sl.qty DESC limit 3;
'''
Challenge4
'''
SELECT authors.au_id AS AUTHOR_ID,authors.au_lname AS LAST_NAME, authors.au_fname AS FIRST_NAME, sl.qty AS TOTAL
	FROM titles
		LEFT JOIN titleauthor as tanda
			ON titles.title_id = tanda.title_id
		LEFT JOIN authors 
			ON tanda.au_id = authors.au_id
		LEFT JOIN sales as sl
			ON titles.title_id = sl.title_id
GROUP BY AUTHOR_ID
ORDER BY sl.qty DESC;
'''
Bonus
'''
SELECT authors.au_id AS AUTHOR_ID,authors.au_lname AS LAST_NAME, authors.au_fname AS FIRST_NAME, concat(round((round(titles.price*avg(roysched.royalty) / 100,2)) * sl.qty)+titles.advance) as PROFIT
	FROM titles 
		LEFT JOIN titleauthor as tanda
			ON titles.title_id = tanda.title_id
		LEFT JOIN authors 
			ON tanda.au_id = authors.au_id
		LEFT JOIN roysched 
			ON roysched.title_id=titles.title_id
		LEFT JOIN sales as sl
			ON titles.title_id = sl.title_id
GROUP BY AUTHOR_ID, LAST_NAME, FIRST_NAME
ORDER BY sl.qty DESC limit 3;