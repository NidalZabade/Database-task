-- DROP SCHEMA public;
CREATE SCHEMA public AUTHORIZATION pg_database_owner;

COMMENT ON SCHEMA public IS 'standard public schema';

-- DROP SEQUENCE public.genres_id_seq;
CREATE SEQUENCE public.genres_id_seq INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE;

-- public.cast_members definition
-- Drop table
-- DROP TABLE public.cast_members;
CREATE TABLE public.cast_members (
    id int4 NOT NULL,
    "name" varchar(255) NOT NULL,
    mobile varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    CONSTRAINT cast_member_pkey PRIMARY KEY (id),
    CONSTRAINT unique_constraint_cast_member UNIQUE (mobile, email)
);

-- public.directors definition
-- Drop table
-- DROP TABLE public.directors;
CREATE TABLE public.directors (
    id int4 NOT NULL,
    "name" varchar(255) NOT NULL,
    mobile varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    CONSTRAINT director_pkey PRIMARY KEY (id),
    CONSTRAINT unique_constraint UNIQUE (mobile, email)
);

-- public.genres definition
-- Drop table
-- DROP TABLE public.genres;
CREATE TABLE public.genres (
    id serial4 NOT NULL,
    "name" varchar(255) NOT NULL,
    CONSTRAINT genres_pkey PRIMARY KEY (id),
    CONSTRAINT unique_constraint_genre UNIQUE (name)
);

-- public.users definition
-- Drop table
-- DROP TABLE public.users;
CREATE TABLE public.users (
    id int4 NOT NULL,
    "name" varchar(255) NOT NULL,
    address varchar(255) NULL,
    mobile varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    username varchar(255) NULL,
    "password" varchar(255) NULL,
    subscribed bool NULL,
    CONSTRAINT unique_constraint_user UNIQUE (email, mobile),
    CONSTRAINT users_pkey PRIMARY KEY (id)
);

-- public.movies definition
-- Drop table
-- DROP TABLE public.movies;
CREATE TABLE public.movies (
    id int4 NOT NULL,
    title varchar(255) NOT NULL,
    release_year int4 NULL,
    director_id int4 NOT NULL,
    duration int4 NOT NULL,
    stream_start_date date NOT NULL,
    stream_end_date date NOT NULL,
    CONSTRAINT movie_pkey PRIMARY KEY (id),
    CONSTRAINT movie_director_id_fkey FOREIGN KEY (director_id) REFERENCES public.directors(id)
);

-- public.reviews definition
-- Drop table
-- DROP TABLE public.reviews;
CREATE TABLE public.reviews (
    id int4 NOT NULL,
    user_id int4 NULL,
    movie_id int4 NULL,
    rating int4 NOT NULL,
    review varchar(255) NULL,
    CONSTRAINT review_pkey PRIMARY KEY (id),
    CONSTRAINT review_rating_check CHECK (
        (
            (rating >= 0)
            AND (rating <= 10)
        )
    ),
    CONSTRAINT review_movieid_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(id),
    CONSTRAINT review_userid_fkey FOREIGN KEY (user_id) REFERENCES public.users(id)
);

-- public.watch_lists definition
-- Drop table
-- DROP TABLE public.watch_lists;
CREATE TABLE public.watch_lists (
    id int4 NOT NULL,
    "name" varchar(255) NOT NULL,
    userid int4 NULL,
    CONSTRAINT watch_list_pkey PRIMARY KEY (id),
    CONSTRAINT watch_list_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id)
);

-- public.histories definition
-- Drop table
-- DROP TABLE public.histories;
CREATE TABLE public.histories (
    id int4 NOT NULL,
    user_id int4 NULL,
    movie_id int4 NULL,
    watching_time int4 NULL,
    is_completed bool NULL,
    CONSTRAINT history_pkey PRIMARY KEY (id),
    CONSTRAINT history_movieid_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(id),
    CONSTRAINT history_userid_fkey FOREIGN KEY (user_id) REFERENCES public.users(id)
);

-- public.movie_casts definition
-- Drop table
-- DROP TABLE public.movie_casts;
CREATE TABLE public.movie_casts (
    movie_id int4 NOT NULL,
    cast_id int4 NOT NULL,
    CONSTRAINT movie_cast_pkey PRIMARY KEY (movie_id, cast_id),
    CONSTRAINT movie_cast_castid_fkey FOREIGN KEY (cast_id) REFERENCES public.cast_members(id),
    CONSTRAINT movie_cast_movieid_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(id)
);

-- public.movie_genres definition
-- Drop table
-- DROP TABLE public.movie_genres;
CREATE TABLE public.movie_genres (
    movie_id int4 NOT NULL,
    genre_id int4 NOT NULL,
    CONSTRAINT movie_genres_pk PRIMARY KEY (movie_id, genre_id),
    CONSTRAINT movie_genres_genre_id_fk FOREIGN KEY (genre_id) REFERENCES public.genres(id),
    CONSTRAINT movie_genres_movie_id_fk FOREIGN KEY (movie_id) REFERENCES public.movies(id)
);

-- public.watch_list_movies definition
-- Drop table
-- DROP TABLE public.watch_list_movies;
CREATE TABLE public.watch_list_movies (
    watch_list_id int4 NOT NULL,
    movie_id int4 NOT NULL,
    CONSTRAINT watch_list_movie_pkey PRIMARY KEY (watch_list_id, movie_id),
    CONSTRAINT watch_list_movie_movieid_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(id),
    CONSTRAINT watch_list_movie_watch_listid_fkey FOREIGN KEY (watch_list_id) REFERENCES public.watch_lists(id)
);