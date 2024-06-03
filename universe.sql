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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text NOT NULL,
    size integer NOT NULL,
    distance numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_star (
    galaxy_star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer
);


ALTER TABLE public.galaxy_star OWNER TO freecodecamp;

--
-- Name: galaxy_star_galaxy_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_star_galaxy_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_star_galaxy_star_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_star_galaxy_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_star_galaxy_star_id_seq OWNED BY public.galaxy_star.galaxy_star_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    gravity numeric,
    mass integer NOT NULL,
    distance numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    gravity numeric,
    mass integer NOT NULL,
    distance numeric,
    rings boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text,
    size integer NOT NULL,
    distance numeric,
    rings boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_star galaxy_star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_star ALTER COLUMN galaxy_star_id SET DEFAULT nextval('public.galaxy_star_galaxy_star_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'AA', 'ABC', 1234, 12345);
INSERT INTO public.galaxy VALUES (2, 'BB', 'ABC', 1234, 12345);
INSERT INTO public.galaxy VALUES (3, 'CC', 'ABC', 1234, 12345);
INSERT INTO public.galaxy VALUES (4, 'DD', 'ABC', 1234, 12345);
INSERT INTO public.galaxy VALUES (5, 'EE', 'ABC', 1234, 12345);
INSERT INTO public.galaxy VALUES (6, 'FF', 'ABC', 1234, 12345);
INSERT INTO public.galaxy VALUES (7, 'GG', 'ABC', 1234, 12345);
INSERT INTO public.galaxy VALUES (8, 'KK', 'ABC', 1234, 12345);
INSERT INTO public.galaxy VALUES (9, 'LL', 'ABC', 1234, 12345);


--
-- Data for Name: galaxy_star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_star VALUES (1, 'AA', 5, 5);
INSERT INTO public.galaxy_star VALUES (2, 'BB', 4, 4);
INSERT INTO public.galaxy_star VALUES (3, 'ee', 6, 6);
INSERT INTO public.galaxy_star VALUES (4, 'ss', 7, 7);
INSERT INTO public.galaxy_star VALUES (5, 'QQ', 5, 5);
INSERT INTO public.galaxy_star VALUES (6, 'WW', 4, 4);
INSERT INTO public.galaxy_star VALUES (7, 'LL', 6, 6);
INSERT INTO public.galaxy_star VALUES (8, 'MM', 7, 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'KL', 9.8, 12345, 123, 1);
INSERT INTO public.moon VALUES (2, 'KHL', 9.8, 12345, 123, 4);
INSERT INTO public.moon VALUES (3, 'HL', 9.8, 12345, 123, 6);
INSERT INTO public.moon VALUES (4, 'HML', 9.8, 12345, 123, 6);
INSERT INTO public.moon VALUES (5, 'HQML', 9.8, 12345, 123, 6);
INSERT INTO public.moon VALUES (6, 'HweL', 9.8, 12345, 123, 7);
INSERT INTO public.moon VALUES (7, 'HeL', 9.8, 12345, 123, 10);
INSERT INTO public.moon VALUES (8, 'HeeL', 9.8, 12345, 123, 10);
INSERT INTO public.moon VALUES (10, 'free Palestine gaza', 9.8, 12345, 123, 12);
INSERT INTO public.moon VALUES (11, 'Palestine', 9.8, 12345, 123, 12);
INSERT INTO public.moon VALUES (12, 'free Palestine', 9.8, 12345, 123, 10);
INSERT INTO public.moon VALUES (14, 'free gaza', 9.8, 12345, 123, 13);
INSERT INTO public.moon VALUES (15, 'free', 9.8, 12345, 123, 15);
INSERT INTO public.moon VALUES (17, 'free Paleeeeestine gaza', 9.8, 12345, 123, 12);
INSERT INTO public.moon VALUES (18, 'fyte', 9.8, 12345, 123, 16);
INSERT INTO public.moon VALUES (21, 'BC', 9.8, 12345, 123, 12);
INSERT INTO public.moon VALUES (23, 'BDC', 9.8, 12345, 123, 10);
INSERT INTO public.moon VALUES (24, 'BDCFF', 9.8, 12345, 123, 10);
INSERT INTO public.moon VALUES (25, 'BDCddFF', 9.8, 12345, 123, 10);
INSERT INTO public.moon VALUES (26, 'BCddFF', 9.8, 12345, 123, 10);
INSERT INTO public.moon VALUES (27, 'BCddF', 9.8, 12345, 123, 10);
INSERT INTO public.moon VALUES (28, 'BCdF', 9.8, 12345, 123, 10);
INSERT INTO public.moon VALUES (29, 'BdF', 9.8, 12345, 123, 10);
INSERT INTO public.moon VALUES (30, 'FGWDH', 9.8, 12345, 123, 14);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'BB', 9.8, 12345, 123, true, 3);
INSERT INTO public.planet VALUES (2, 'CC', 9.8, 12345, 123, true, 4);
INSERT INTO public.planet VALUES (3, 'DD', 9.8, 12345, 123, true, 5);
INSERT INTO public.planet VALUES (4, 'EE', 9.8, 12345, 123, true, 5);
INSERT INTO public.planet VALUES (5, 'EW', 9.8, 12345, 123, true, 1);
INSERT INTO public.planet VALUES (6, 'QA', 9.8, 12345, 123, true, 6);
INSERT INTO public.planet VALUES (7, 'QQ', 9.8, 12345, 123, true, 7);
INSERT INTO public.planet VALUES (8, 'ER', 9.8, 12345, 123, true, 8);
INSERT INTO public.planet VALUES (9, 'WR', 9.8, 12345, 123, true, 8);
INSERT INTO public.planet VALUES (10, 'RR', 9.8, 12345, 123, true, 9);
INSERT INTO public.planet VALUES (12, 'QQAS', 9.8, 12345, 123, true, 4);
INSERT INTO public.planet VALUES (13, 'QM', 9.8, 12345, 123, true, 1);
INSERT INTO public.planet VALUES (14, 'QWEM', 9.8, 12345, 123, true, 3);
INSERT INTO public.planet VALUES (15, 'QMAS', 9.8, 12345, 123, true, 6);
INSERT INTO public.planet VALUES (16, 'QWE', 9.8, 12345, 123, true, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'AA', 'ABC', 1234, 12345, true, 1);
INSERT INTO public.star VALUES (2, 'BB', 'ABC', 1234, 12345, true, 2);
INSERT INTO public.star VALUES (3, 'CC', 'ABC', 1234, 12345, true, 3);
INSERT INTO public.star VALUES (4, 'EE', 'ABC', 1234, 12345, true, 4);
INSERT INTO public.star VALUES (5, 'EF', 'ABC', 1234, 12345, true, 5);
INSERT INTO public.star VALUES (6, 'FF', 'ABC', 1234, 12345, true, 6);
INSERT INTO public.star VALUES (7, 'RR', 'ABC', 1234, 12345, true, 7);
INSERT INTO public.star VALUES (8, 'TT', 'ABC', 1234, 12345, true, 7);
INSERT INTO public.star VALUES (9, 'WQ', 'ABC', 1234, 12345, true, 9);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: galaxy_star_galaxy_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_star_galaxy_star_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 30, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_star galaxy_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_star
    ADD CONSTRAINT galaxy_star_name_key UNIQUE (name);


--
-- Name: galaxy_star galaxy_star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_star
    ADD CONSTRAINT galaxy_star_pkey PRIMARY KEY (galaxy_star_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy_star galaxy_star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_star
    ADD CONSTRAINT galaxy_star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy_star galaxy_star_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_star
    ADD CONSTRAINT galaxy_star_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

