--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 46, 12);
INSERT INTO public.games VALUES (2, 576, 12);
INSERT INTO public.games VALUES (3, 231, 13);
INSERT INTO public.games VALUES (4, 485, 13);
INSERT INTO public.games VALUES (5, 579, 12);
INSERT INTO public.games VALUES (6, 219, 12);
INSERT INTO public.games VALUES (7, 451, 12);
INSERT INTO public.games VALUES (8, 11, 11);
INSERT INTO public.games VALUES (9, 697, 14);
INSERT INTO public.games VALUES (10, 15, 14);
INSERT INTO public.games VALUES (11, 299, 15);
INSERT INTO public.games VALUES (12, 665, 15);
INSERT INTO public.games VALUES (13, 580, 14);
INSERT INTO public.games VALUES (14, 40, 14);
INSERT INTO public.games VALUES (15, 924, 14);
INSERT INTO public.games VALUES (16, 252, 16);
INSERT INTO public.games VALUES (17, 712, 16);
INSERT INTO public.games VALUES (18, 243, 17);
INSERT INTO public.games VALUES (19, 477, 17);
INSERT INTO public.games VALUES (20, 136, 16);
INSERT INTO public.games VALUES (21, 324, 16);
INSERT INTO public.games VALUES (22, 706, 16);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1718903198553');
INSERT INTO public.users VALUES (2, 'user_1718903198552');
INSERT INTO public.users VALUES (3, 'user_1718903684862');
INSERT INTO public.users VALUES (4, 'user_1718903684861');
INSERT INTO public.users VALUES (5, 'user_1718903685509');
INSERT INTO public.users VALUES (6, 'user_1718903685508');
INSERT INTO public.users VALUES (7, 'user_1718904021195');
INSERT INTO public.users VALUES (8, 'user_1718904021194');
INSERT INTO public.users VALUES (9, 'user_1718904457193');
INSERT INTO public.users VALUES (10, 'user_1718904457192');
INSERT INTO public.users VALUES (11, 'Bilge');
INSERT INTO public.users VALUES (12, 'user_1718904552991');
INSERT INTO public.users VALUES (13, 'user_1718904552990');
INSERT INTO public.users VALUES (14, 'user_1718904718978');
INSERT INTO public.users VALUES (15, 'user_1718904718977');
INSERT INTO public.users VALUES (16, 'user_1718904735438');
INSERT INTO public.users VALUES (17, 'user_1718904735437');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 22, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 17, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

