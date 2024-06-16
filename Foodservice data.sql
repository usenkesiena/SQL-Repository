--- Part1:
--For this task, imagine you work as a database consultant for a food service company. 
---The first stage of your task is to create a database and import the four tables from the csv file. 
---You should also add the necessary primary and foreign key constraints to the tables and provide a database diagram 
--- in your report which shows the three tables and their relationships. 
--- You should create the database with the name FoodserviceDB and the tables with the following names:
--- a. Restaurant
--- b. Consumers
--- c. Ratings
-- d. Restaurant_Cuisines
--- You should also leave the column names as they appear in the csv file. This is so we can re-run your code.

-- I CREATED A DATABASE USING THE COMMAND ON AZURE AND I IMPORTED ALL FOUR TABLES USING THE IMPORT WIZARD COMMAND
-- CREATING PRIMARY KEY FOR RESTAURANT CUISINE TABLE AND FOREIGN KEYS FOR RATINGS TABLE
--RESTAURANT CUISINE PK
ALTER TABLE Restaurant_Cuisines 
ADD Cuisine_id INT  PRIMARY KEY IDENTITY(1,1);

select * FROM ratings;
select * FROM consumers;
select * FROM restaurants;
select * FROM restaurant_cuisines;



-- RESTAURANT CUISINE FK
ALTER TABLE Restaurant_Cuisine
ADD CONSTRAINT fk_restaurant
FOREIGN KEY (Restaurant_id) 
REFERENCES restaurants(restaurant_id);


-- RATINGS FK
ALTER TABLE Ratings
ADD CONSTRAINT fk_restaurant
FOREIGN KEY (Restaurant_id) 
REFERENCES Restaurants(restaurant_id);

ALTER TABLE Ratings
ADD CONSTRAINT FK_Consumers
FOREIGN KEY (Consumer_ID) 
REFERENCES CONSUMERS(Consumer_ID);



--- Part 2a. Write a query that lists all restaurants with a Medium range price with open area, serving Mexican food.
SELECT  R.Name,R.City,R.State, R.Price, R.Area, RC.Cuisine 
FROM Restaurants R
JOIN Restaurant_cuisines RC
ON R.Restaurant_ID = RC.Restaurant_ID
WHERE R.Price = 'Medium'
AND R.Area = 'Open'
AND RC.Cuisine = 'Mexican';


-- Part 2b.Write a query that returns the total number of restaurants 
-- who have the overall rating as 1 and are serving Mexican food. 
-- Compare the results with the total number of restaurants who have the overall rating as 1 serving Italian food
-- (please give explanations on their comparison).

SELECT 
    COUNT(DISTINCT CASE WHEN RC.Cuisine = 'Mexican' AND RS.Overall_Rating = 1 THEN R.Restaurant_id END) AS Total_Mexican_Restaurants,
    COUNT(DISTINCT CASE WHEN RC.Cuisine = 'Italian' AND RS.Overall_Rating = 1 THEN R.Restaurant_id END) AS Total_Italian_Restaurants
FROM Restaurants R
JOIN Ratings RS 
ON R.Restaurant_id = RS.Restaurant_id
JOIN Restaurant_Cuisines RC 
ON R.Restaurant_id = RC.Restaurant_id
WHERE RS.Overall_Rating = 1 
AND (RC.Cuisine = 'Mexican' 
OR RC.Cuisine = 'Italian');







--Part 3. Calculate the average age of consumers who have given a 0 rating to the 'Service_rating' column. 
-- (NB: round off the value if it is a decimal)
SELECT ROUND(AVG(C.Age),0) AVG_AGE_CONSUMERS
FROM Consumers C
JOIN Ratings RS 
ON C.Consumer_ID = RS.Consumer_ID
WHERE RS.Service_Rating = '0';




-- Part4.Write a query that returns the restaurants ranked by the youngest consumer. 
-- You should include the restaurant name and food rating that is given by that customer to the restaurant in your result.
 -- Sort the results based on food rating from high to low.

 SELECT 
    R.Name AS Restaurant_Name,
    R.City,
   RS.Food_Rating,
    C.Age AS Consumer_Age
FROM
    Restaurants R
JOIN Ratings Rs ON R.Restaurant_id = Rs.Restaurant_id
JOIN Consumers C ON Rs.Consumer_id = C.Consumer_id
WHERE
    C.Age = (
        SELECT MIN(C.Age) MIN_AGE
        FROM Ratings Rs
        JOIN Consumers C ON 
        Rs.Consumer_id = C.Consumer_id
         WHERE RS.Restaurant_ID = R.Restaurant_ID
       ) 
       GROUP BY R.Name,R.City,C.Age,RS.Food_Rating
ORDER BY
    Rs.Food_Rating DESC;

WITH YoungestConsumers AS (
    SELECT Ra.Restaurant_id,
           MIN(C.Age) AS YoungestAge
    FROM Ratings Ra
    JOIN Consumers C ON Ra.Consumer_id = C.Consumer_id
    GROUP BY Ra.Restaurant_id
),
YoungestConsumerRatings AS (
    SELECT R.Restaurant_id,
           R.Name AS RestaurantName,
           Y.YoungestAge,
           MAX(Ra.Food_Rating) AS FoodRating
    FROM Ratings Ra
    JOIN Consumers C ON Ra.Consumer_id = C.Consumer_id
    JOIN YoungestConsumers Y ON Ra.Restaurant_id = Y.Restaurant_id AND C.Age = Y.YoungestAge
    JOIN Restaurants R ON R.Restaurant_id = Ra.Restaurant_id
    GROUP BY R.Restaurant_id, R.Name, Y.YoungestAge
)
SELECT RestaurantName, Restaurant_id, YoungestAge, FoodRating
FROM YoungestConsumerRatings
ORDER BY FoodRating DESC;

SELECT R.Name AS NamesOfRestaurant,
C.Age,
Food_Rating AS FoodRating
FROM restaurants R
JOIN Ratings RT ON R.Restaurant_ID = RT.Restaurant_ID
JOIN consumers C ON RT.Consumer_ID = C.Consumer_ID
GROUP BY r.Name,c.Age,RT.Food_Rating
HAVING C.Age = MIN(C.Age)
ORDER BY FoodRating DESC, Age DESC;


 --- Part 5. Write a stored procedure for the query given as:
--- Update the Service_rating of all restaurants to '2' if they have parking available, either as 'yes' or 'public'.

CREATE PROCEDURE UPDATE_SERVICE_RATING2
AS
BEGIN
UPDATE Ratings    
SET Service_Rating = 2
FROM Ratings RS
JOIN Restaurants R
ON RS.Restaurant_ID = R.Restaurant_ID
WHERE R.Parking = 'Yes'
OR R.Parking = 'Public'
END;




-- Part 6.You should also write four queries of your own and provide a brief explanation of the results which each query returns. 
-- You should make use of all of the following at least once:
--- Nested queries-EXISTS
-- Nested queries-IN
-- System functions
--- Use of GROUP BY, HAVING and ORDER BY clauses

--NESTED QUERIES EXISTS 

SELECT R.Restaurant_ID,R.NAME,R.City
FROM Restaurants R
WHERE EXISTS(
SELECT Cuisine 
FROM Restaurant_cuisines Rc
WHERE CuisineID LIKE '%0');


-- Nested queries-IN

SELECT R.Name AS Restaurant_Name, R.City
FROM Restaurants R
WHERE R.Restaurant_id IN (
    SELECT RC.Restaurant_id
    FROM Restaurant_Cuisines RC
    WHERE RC.Cuisine IN ('Italian', 'Mexican'));



-- System functions
SELECT R.Name AS Restaurant_Name, ROUND(AVG(RA.Overall_Rating), 2) AS Average_Rating
FROM Restaurants R
JOIN Ratings RA ON R.Restaurant_id = RA.Restaurant_id
GROUP BY R.Name
ORDER BY Average_Rating DESC;


--- Use of GROUP BY, HAVING and ORDER BY clauses
SELECT State, COUNT(R.Name) AS Number_of_Restaurants
FROM Restaurants R
GROUP BY State
HAVING COUNT(Restaurant_id) > 1
ORDER BY Number_of_Restaurants;

