Create table if not exists Director(
    DirectorID int,
    Name varchar(255),
    Mobile varchar(255),
    Email varchar(255),
    Primary Key(DirectorID)
);

Create table if not exists Genre(
    GenreName varchar(255),
    Primary Key(GenreName)
);

Create table if not exists Cast_Member(
    CastID int,
    Name varchar(255),
    Mobile varchar(255),
    Email varchar(255),
    Primary Key(CastID)
);

Create table if not exists Stream(
    StreamID int,
    Start_Date date,
    End_Date date,
    Primary Key(StreamID)
);

Create table if not exists Movie(
    MovieID int,
    Title varchar(255),
    Release_Year int,
    Director_ID int,
    Primary Key(MovieID),
    Foreign Key(Director_ID) references Director(DirectorID)
);

Create table if not exists Movie_Genre(
    MovieID int,
    GenreName varchar(255),
    Primary Key(MovieID, GenreName),
    Foreign Key(MovieID) references Movie(MovieID),
    Foreign Key(GenreName) references Genre(GenreName)
);

Create table if not exists Movie_Cast(
    MovieID int,
    CastID int,
    Primary Key(MovieID, CastID),
    Foreign Key(MovieID) references Movie(MovieID),
    Foreign Key(CastID) references Cast_Member(CastID)
);

Create table if not exists Movie_Stream(
    MovieID int,
    StreamID int,
    Primary Key(MovieID, StreamID),
    Foreign Key(MovieID) references Movie(MovieID),
    Foreign Key(StreamID) references Stream(StreamID)
);

Create table if not exists Users(
    UserID int,
    Name varchar(255),
    Address varchar(255),
    Mobile varchar(255),
    Email varchar(255),
    Username varchar(255),
    Password varchar(255),
    Subscribed boolean,
    Primary Key(UserID)
);

Create table if not exists Watch_List(
    Watch_ListID int,
    Watch_List_Name varchar(255),
    UserID int,
    Primary Key(Watch_ListID),
    Foreign Key(UserID) references Users(UserID)
);

Create table if not exists Watch_List_Movie(
    Watch_ListID int,
    MovieID int,
    Primary Key(Watch_ListID, MovieID),
    Foreign Key(Watch_ListID) references Watch_List(Watch_ListID),
    Foreign Key(MovieID) references Movie(MovieID)
);

Create table if not exists Review(
    ReviewID int,
    UserID int,
    MovieID int,
    Rating int not null,
    Review varchar(255),
    check(
        Rating >= 0
        and Rating <= 10
    ),
    Primary Key(ReviewID),
    Foreign Key(UserID) references Users(UserID),
    Foreign Key(MovieID) references Movie(MovieID)
);

Create table if not exists History(
    HistoryID int,
    UserID int,
    MovieID int,
    Watching_time date,
    Duration int,
    isCompleted boolean,
    Primary Key(HistoryID),
    Foreign Key(UserID) references Users(UserID),
    Foreign Key(MovieID) references Movie(MovieID)
);