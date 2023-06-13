-- query to see if the movie available for streaming
Select
    movies.title
From
    movies
Where
    current_date between movies.stream_start_date
    and movies.stream_end_date;

-- query to see average user rating for all the movies he/she has rated
Select
    users.name,
    Avg(reviews.rating)
From
    users
    Join reviews On users.id = reviews.user_id
Group By
    users.name;

-- query to see all movies has been rated by a particular user
Select
    users.name,
    movies.title,
    reviews.rating
From
    users
    Join reviews On users.id = reviews.user_id
    Join movies On reviews.movie_id = movies.id
Group By
    users.name,
    movies.title,
    reviews.rating;

-- query to see list of movies with their average rating
Select
    movies.title,
    Avg(reviews.rating)
From
    movies
    Join reviews On movies.id = reviews.movie_id
Group By
    movies.title;

-- query to see the average rating for a particular movie
Select
    movies.title,
    Avg(reviews.rating)
From
    movies
    Join reviews On movies.id = reviews.movie_id
Group By
    movies.title
Having
    movies.title = 'Harry Potter';

-- query to see the reviews for particular user on movie
Select
    users.name,
    movies.title,
    reviews.rating,
    reviews.review
From
    users
    Join reviews On users.id = reviews.user_id
    Join movies On reviews.movie_id = movies.id
Where
    users.name = 'John';

-- query to see the reviews for a particular movie by all users
Select
    users.name,
    movies.title,
    reviews.rating,
    reviews.review
From
    users
    Join reviews On users.id = reviews.user_id
    Join movies On reviews.movie_id = movies.id
Where
    movies.title = 'Harry Potter';

-- change the isCompleted to true if the user has completed watching the movie if the movie duration is equal to the watching time
Update
    histories
Set
    is_completed = true
From
    histories
    Join movies On histories.movie_id = movies.id
Where
    movies.duration = histories.watching_time;

--create a list of directors with all of their movies, including the reviews and the user information for every review and the entire history of the user (for all movies)
Select
    directors.name,
    movies.title,
    reviews.rating,
    reviews.review,
    users.name,
    users.email,
    users.mobile,
    histories.watching_time,
    histories.is_completed
From
    directors
    Join movies On directors.id = movies.director_id
    Join reviews On movies.id = reviews.movie_id
    Join users On reviews.user_id = users.id
    Join histories On users.id = histories.user_id;