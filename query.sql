-- query to see if the movie available for streaming
Select
    Movie.Title,
    Stream.Start_Date,
    Stream.End_Date
From
    Movie
    Join Movie_Stream On Movie.MovieID = Movie_Stream.MovieID
    Join Stream On Movie_Stream.StreamID = Stream.StreamID -- query to see average user rating for all the movies he/she has rated
Select
    Users.Name,
    Avg(Review.Rating)
From
    Users
    Join Review On Users.UserID = Review.UserID
Group By
    Users.Name;

-- query to see the average rating for a particular movie
Select
    Movie.Title,
    Avg(Review.Rating)
From
    Movie
    Join Review On Movie.MovieID = Review.MovieID
Group By
    Movie.Title;

-- query to see the reviews for particular user on movie
Select
    Users.Name,
    Movie.Title,
    Review.Review
From
    Users
    Join Review On Users.UserID = Review.UserID
    Join Movie On Review.MovieID = Movie.MovieID
Group By
    Users.Name,
    Movie.Title;

-- query to see the reviews for a particular movie by all users
Select
    Movie.Title,
    Users.Name,
    Review.Review
From
    Movie
    Join Review On Movie.MovieID = Review.MovieID
    Join Users On Review.UserID = Users.UserID
Group By
    Movie.Title,
    Users.Name;

-- change the isCompleted to true if the user has completed watching the movie if the duration is equal to the watching time
Update
    History
Set
    isCompleted = true
Where
    Duration = Watching_time;