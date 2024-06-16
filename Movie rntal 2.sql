SELECT * FROM categories
SELECT * FROM members
SELECT * FROM movierentals
SELECT * FROM movies
SELECT * FROM payments


--- 1) List all movie titles and their directors.
SELECT Title Movie_Titles,director Movie_Directors
FROM movies
order by Movie_Directors;

--- 2) Find the full names of all members who have rented a movie.
SELECT DISTINCT Full_names
FROM members m
JOIN movierentals mr 
on m.membership_number = mr.membership_number


--- 3) List all payment descriptions and the amount paid.
   SELECT description Payment_description,amount_paid Amount_paid
   FROM payments

    SELECT  M.full_names,P.description Payment_description,P.amount_paid Amount_paid
   FROM payments P
   JOIN members M 
   ON P.membership_number = M.membership_number


--- 4) Find the details of movies that have never been rented.
SELECT * 
FROM movies M
JOIN movierentals MR
ON M.movie_id = MR.movie_id
WHERE transaction_date = NULL

--- 5) Get the total amount paid by each member.
SELECT DISTINCT P.membership_number Membership_number,M.full_names Names, sum(amount_paid) Total_amount_paid
FROM payments P
JOIN members M
ON P.membership_number = M.membership_number
GROUP BY P.membership_number, M.full_names
ORDER BY Total_amount_paid ASC

--- 6) List all members who have rented 'Pirates of the Caribean 4'.
    SELECT M.full_names Name,MO.title Movie_Title
    FROM members M
    JOIN movierentals MS
    ON M.membership_number = MS.membership_number
    JOIN movies MO
    ON MS.movie_id = MO.movie_id
    WHERE MO.title = 'Pirates of the Caribean 4'


--- 7) Find the most popular movie category by the number of rentals.
     SELECT DISTINCT MO.title Movie_Title, C.category_name Movie_Category
     FROM Categories C
     JOIN movies MO
     ON C.category_id = MO.category_id
     JOIN movierentals MS
     ON MO.movie_id = MS.movie_id
     GROUP BY  MO.title ,C.category_name
     HAVING COUNT(MS.movie_id ) > 1



--- 8) List the members who have overdue movies (where the return date is null and today’s date is past the due date.
    SELECT DISTINCT M.full_names Names, MR.return_date
    FROM members M 
    JOIN movierentals MR 
    ON M.membership_number = MR.membership_number
    WHERE   MR.return_date  IS NULL
    AND GETDATE() > return_date
   


--- 9) Identify the director(s) whose movies have been rented the most.
    SELECT DISTINCT M.director Director, M.title Movie_title
    FROM movies M
    JOIN movierentals MR
    ON M.movie_id = MR.movie_id
    GROUP BY M.director, M.title
     HAVING COUNT(MR.movie_id ) > 1

--- 10) Find the average age of members who have made a payment in 2012.

SELECT AVG(DATEDIFF(YEAR,date_of_birth,GETDATE())) Average_Age
FROM members M 
JOIN payments P
ON M.membership_number = P.membership_number
WHERE YEAR(P.payment_date) = '2012'




