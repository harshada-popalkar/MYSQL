USE ddl_dml ;
SELECT * FROM movie_metadata;
SELECT * FROM  movie_metadata
	WHERE duration = 169 ;
SELECT * FROM movie_metadata
	WHERE language = 'English' ;
SELECT language FROM movie_metadata ;
SELECT *FROM movie_metadata
	WHERE country !='USA' ;
SELECT country FROM movie_metadata
	WHERE country='USA';
SELECT * FROM movie_metadata
	WHERE duration BETWEEN 169 AND 178 ;
SELECT *FROM movie_metadata
	WHERE duration IN(169,178) ;
SELECT * FROM movie_metadata
	WHERE num_voted_users IS NUll ;
SELECT * FROM movie_metadata
	WHERE duration LIKE 178 ;
SELECT * FROM movie_metadata
	WHERE country LIKE 'Ge%' ;
SELECT * FROM movie_metadata
	WHERE num_user_for_reviews BETWEEN (178 AND 200) AND country='US_';




