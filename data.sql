-- insert 10 users into the database the email is the first letter of the first name followed by the last name @gmail.com and the password is the first letter of the first name followed by the last name and the number 123
insert into
    Users (
        UserID,
        Name,
        Address,
        Mobile,
        Email,
        Username,
        Password,
        Subscribed
    )
values
    (
        1,
        'John Smith',
        '123 Fake Street',
        '0412345678',
        'JSmith@gmail.com',
        'JSmith',
        'JSmith123',
        true
    ),
    (
        2,
        'Jane Doe',
        '456 Fake Street',
        '0498765432',
        'JDoe@gmail.com',
        'JDoe',
        'JDoe123',
        true
    ),
    (
        3,
        'Bob Smith',
        '789 Fake Street',
        '0422345678',
        'BSmith@gmail.com',
        'BSmith',
        'BSmith123',
        false
    ),
    (
        4,
        'Mary Doe',
        '101 Fake Street',
        '0498765431',
        'MDoe@gmail.com',
        'MDoe',
        'MDoe123',
        true
    ),
    (
        5,
        'John Ali',
        '112 Fake Street',
        '0412345679',
        'JAli@gmail.com',
        'JAli',
        'JAli123',
        false
    ),
    (
        6,
        'Mary Ali',
        '131 Fake Street',
        '0498765433',
        'MAli@gamil.com',
        'MAli',
        'MAli123',
        true
    ),
    (
        7,
        'Bob Ali',
        '141 Fake Street',
        '0412345670',
        'BAli@gmail.com',
        'BAli',
        'BAli123',
        false
    ),
    (
        8,
        'Jane Rose',
        '151 Fake Street',
        '0498765434',
        'JRose@gmail.com',
        'JRose',
        'JRose123',
        true
    ),
    (
        9,
        'Mary Rose',
        '161 Fake Street',
        '0412345378',
        'MRose@gamil.com',
        'MRose',
        'MRose123',
        true
    ),
    (
        10,
        'Bob Rose',
        '171 Fake Street',
        '0498765435',
        'BRose@gamil.com',
        'BRose',
        'BRose123',
        false
    );

-- insert 4 directors into the database the email is the first letter of the first name followed by the last name @gmail.com
insert into
    Director (DirectorID, Name, Mobile, Email)
values
    (
        1,
        'George Lucas',
        '0412245678',
        'GLucas@gmail.com'
    ),
    (
        2,
        'Irvin Kershner',
        '0495565432',
        'IKershner@gmail.com'
    ),
    (
        3,
        'Dave Filoni',
        '0412366678',
        'DFiloni@gmail.com'
    ),
    (
        4,
        'J. J. Abrams',
        '0498767772',
        'JAbrams@gmail.com'
    );

-- insert 10 cast members into the database the email is the first letter of the first name followed by the last name @gmail.com
insert into
    Cast_Member (CastID, Name, Mobile, Email)
values
    (
        1,
        'Mark Hamill',
        '0422345678',
        'MHamill@gamil.com'
    ),
    (
        2,
        'Harrison Ford',
        '0418765432',
        'HFord@gmail.com'
    ),
    (
        3,
        'Carrie Fisher',
        '0432445678',
        'CFisher@gmail.com'
    ),
    (
        4,
        'Natalie Portman',
        '0428765432',
        'NPortman@gmail.com'
    ),
    (
        5,
        'Ewan McGregor',
        '0432345678',
        'EMcGregor@gmail.com'
    ),
    (
        6,
        'Hayden Christensen',
        '0468765432',
        'HChristensen@gmail.com'
    ),
    (
        7,
        'Daisy Ridley',
        '0447345678',
        'DRidley@gmail.com'
    ),
    (
        8,
        'John Boyega',
        '0498865432',
        'JBoyega@gmail.com'
    ),
    (
        9,
        'Oscar Isaac',
        '0452345678',
        'OIsaac@gmail.com'
    ),
    (
        10,
        'Adam Driver',
        '0498065432',
        'ADriver@gmail.com'
    );


-- insert 10 movies into the database
insert into
    Movie (MovieID, Title, Release_Year, Director_ID)
values
    (1, 'Star Wars: Episode IV - A New Hope', 1977, 1),
    (
        2,
        'Star Wars: Episode V - The Empire Strikes Back',
        1980,
        1
    ),
    (
        3,
        'Star Wars: Episode VI - Return of the Jedi',
        1983,
        2
    ),
    (
        4,
        'Star Wars: Episode I - The Phantom Menace',
        1999,
        3
    ),
    (
        5,
        'Star Wars: Episode II - Attack of the Clones',
        2002,
        4
    ),
    (
        6,
        'Star Wars: Episode III - Revenge of the Sith',
        2005,
        1
    ),
    (7, 'Star Wars: The Force Awakens', 2015, 2),
    (8, 'Star Wars: The Last Jedi', 2017, 2),
    (9, 'Star Wars: The Rise of Skywalker', 2019, 4),
    (10, 'Star Wars: The Clone Wars', 2008, 3);


-- insert 10 movie genres into the database
insert into
    Genre (GenreName)
values
    ('Action'),
    ('Adventure'),
    ('Fantasy'),
    ('Sci-Fi'),
    ('Animation'),
    ('Drama'),
    ('Romance'),
    ('Comedy'),
    ('Family'),
    ('Musical');

-- insert 10 movie genres into the database
insert into
    Movie_Genre (MovieID, GenreName)
values
    (1, 'Action'),
    (1, 'Adventure'),
    (1, 'Fantasy'),
    (1, 'Sci-Fi'),
    (2, 'Drama'),
    (2, 'Romance'),
    (2, 'Action'),
    (3, 'Comedy'),
    (3, 'Family'),
    (3, 'Musical'),
    (4, 'Action'),
    (4, 'Family'),
    (5, 'Action'),
    (6, 'Drama'),
    (7, 'Romance'),
    (8, 'Comedy'),
    (9, 'Family'),
    (10, 'Musical');