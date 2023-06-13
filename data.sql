-- insert 10 users into the database the email is the first letter of the first name followed by the last name @gmail.com and the password is the first letter of the first name followed by the last name and the number 123
insert into
    users (
        id,
        name,
        address,
        mobile,
        email,
        username,
        password,
        subscribed
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
    directors (id, name, mobile, email)
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
    cast_members (id, name, mobile, email)
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
    movies (
        id,
        title,
        release_year,
        director_id,
        duration,
        stream_start_date,
        stream_end_date
    )
values
    (
        1,
        'Star Wars: Episode IV - A New Hope',
        1977,
        1,
        120,
        '2023-01-01',
        '2023-03-01'
    ),
    (
        2,
        'Star Wars: Episode V - The Empire Strikes Back',
        1980,
        1,
        120,
        '2023-06-01',
        '2023-07-01'
    ),
    (
        3,
        'Star Wars: Episode VI - Return of the Jedi',
        1983,
        2,
        230,
        '2023-1-01',
        '2023-05-01'
    ),
    (
        4,
        'Star Wars: Episode I - The Phantom Menace',
        1999,
        3,
        120,
        '2023-03-01',
        '2023-06-01'
    ),
    (
        5,
        'Star Wars: Episode II - Attack of the Clones',
        2002,
        4,
        120,
        '2023-09-01',
        '2023-10-01'
    ),
    (
        6,
        'Star Wars: Episode III - Revenge of the Sith',
        2005,
        1,
        120,
        '2023-02-01',
        '2023-05-01'
    ),
    (
        7,
        'Star Wars: The Force Awakens',
        2015,
        2,
        120,
        '2023-05-01',
        '2023-07-01'
    ),
    (
        8,
        'Star Wars: The Last Jedi',
        2017,
        2,
        120,
        '2023-06-01',
        '2023-07-01'
    ),
    (
        9,
        'Star Wars: The Rise of Skywalker',
        2019,
        4,
        120,
        '2023-07-01',
        '2023-08-01'
    ),
    (
        10,
        'Star Wars: The Clone Wars',
        2008,
        3,
        120,
        '2023-03-01',
        '2023-07-01'
    );

-- insert 10 movie genres into the database
insert into
    genres (name)
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
    movie_genres (movie_id, genre_id)
values
    -- give all the movies all the genres
    (1, 1),
    (1, 7),
    (1, 8),
    (1, 9),
    (1, 10),
    (2, 1),
    (2, 2),
    (2, 3),
    (3, 1),
    (3, 7),
    (3, 8),
    (4, 1),
    (4, 2),
    (5, 1),
    (5, 2),
    (5, 3),
    (5, 4),
    (5, 5),
    (5, 6),
    (5, 10),
    (6, 1),
    (6, 8),
    (6, 9),
    (6, 10),
    (7, 6),
    (7, 7),
    (7, 8),
    (7, 9),
    (7, 10),
    (8, 1),
    (8, 2),
    (9, 9),
    (9, 10),
    (10, 1),
    (10, 10);

-- insert movie cast members into the database
insert into
    movie_casts (movie_id, cast_id)
values
    (1, 1),
    (1, 2),
    (1, 3),
    (1, 8),
    (1, 9),
    (1, 10),
    (2, 1),
    (2, 6),
    (2, 7),
    (2, 8),
    (2, 9),
    (2, 10),
    (3, 4),
    (3, 5),
    (3, 6),
    (3, 7),
    (3, 8),
    (3, 9),
    (3, 10),
    (4, 1),
    (4, 2),
    (4, 3),
    (4, 4),
    (4, 5),
    (5, 1),
    (5, 2),
    (5, 7),
    (5, 8),
    (5, 9),
    (5, 10),
    (6, 1),
    (6, 2),
    (6, 3),
    (6, 4),
    (6, 8),
    (6, 9),
    (6, 10),
    (7, 1),
    (7, 7),
    (7, 8),
    (7, 9),
    (7, 10),
    (8, 1),
    (8, 2),
    (8, 3),
    (8, 9),
    (8, 10),
    (9, 1),
    (9, 2),
    (9, 7),
    (9, 8),
    (9, 9),
    (9, 10),
    (10, 1),
    (10, 2),
    (10, 9),
    (10, 10);

-- insert reviews into the database
insert into
    reviews (id, user_id, movie_id, rating, review)
values
    (1, 1, 1, 3, 'Good movie'),
    (2, 1, 2, 4, 'Great movie'),
    (3, 1, 3, 5, 'Awesome movie'),
    (4, 1, 4, 3, 'Good movie'),
    (5, 1, 5, 4, 'Great movie'),
    (6, 1, 6, 5, 'Awesome movie'),
    (7, 1, 7, 3, 'Good movie'),
    (8, 1, 8, 4, 'Great movie'),
    (9, 1, 9, 5, 'Awesome movie'),
    (10, 1, 10, 3, 'Good movie'),
    (11, 2, 1, 4, 'Great movie'),
    (12, 2, 2, 5, 'Awesome movie'),
    (13, 2, 3, 3, 'Good movie'),
    (14, 2, 4, 4, 'Great movie'),
    (15, 2, 5, 5, 'Awesome movie'),
    (16, 2, 6, 2, 'Normal movie'),
    (17, 2, 7, 3, 'Good movie'),
    (18, 2, 8, 4, 'Great movie'),
    (19, 2, 9, 5, 'Awesome movie'),
    (20, 2, 10, 3, 'Good movie'),
    (21, 3, 1, 4, 'Great movie'),
    (22, 3, 2, 1, 'Bad movie'),
    (23, 3, 3, 2, 'Normal movie'),
    (24, 3, 4, 3, 'Good movie'),
    (25, 3, 5, 4, 'Great movie'),
    (26, 3, 6, 5, 'Awesome movie'),
    (27, 3, 7, 3, 'Good movie'),
    (28, 3, 8, 4, 'Great movie'),
    (29, 3, 9, 5, 'Awesome movie'),
    (30, 3, 10, 1, 'Bad movie');

-- insert histories into the database
insert into
    histories (
        id,
        user_id,
        movie_id,
        watching_time,
        is_completed
    )
values
    (1, 1, 2, 30, false),
    (2, 3, 1, 40, true),
    (3, 2, 3, 50, false),
    (4, 1, 4, 60, true),
    (5, 2, 5, 70, false),
    (6, 3, 6, 80, true),
    (7, 1, 7, 90, false),
    (8, 2, 8, 100, true),
    (9, 3, 9, 110, false),
    (10, 1, 10, 70, true),
    (11, 2, 1, 10, false),
    (12, 3, 2, 50, true),
    (13, 1, 3, 20, false),
    (14, 2, 4, 60, true),
    (15, 3, 5, 80, false),
    (16, 1, 6, 10, true),
    (17, 2, 7, 40, false),
    (18, 3, 8, 10, true),
    (19, 1, 9, 60, false),
    (20, 2, 10, 80, true),
    (21, 3, 1, 60, false),
    (22, 1, 2, 40, true),
    (23, 2, 3, 20, false),
    (24, 3, 4, 100, true),
    (25, 1, 5, 29, false),
    (26, 2, 6, 73, true),
    (27, 3, 7, 76, false),
    (28, 1, 8, 71, true),
    (29, 2, 9, 43, false),
    (30, 3, 10, 40, true);