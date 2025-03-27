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
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    number_of_stars integer,
    has_life boolean
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
-- Name: human; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.human (
    population integer NOT NULL,
    civilization character varying(30),
    amount_of_ducks integer,
    name character varying(30),
    human_id integer NOT NULL
);


ALTER TABLE public.human OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    is_spherical boolean,
    description text,
    distance_from_earth numeric(10,2),
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
    name character varying(20) NOT NULL,
    has_life boolean,
    distance_from_earth integer,
    description text,
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
    name character varying(20) NOT NULL,
    dying boolean,
    age_in_years integer,
    distance_from_earth integer,
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

INSERT INTO public.galaxy VALUES (1, 'North Star', 100000, 3232, true);
INSERT INTO public.galaxy VALUES (2, 'South Star', 100200, 12421, false);
INSERT INTO public.galaxy VALUES (3, 'Polor', 112200, 121, false);
INSERT INTO public.galaxy VALUES (4, 'Noras', 2200, 4241, true);
INSERT INTO public.galaxy VALUES (5, 'Starry', 40200, 2421, false);
INSERT INTO public.galaxy VALUES (6, 'Morse', 30200, 24241, false);


--
-- Data for Name: human; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.human VALUES (200, NULL, NULL, NULL, 1);
INSERT INTO public.human VALUES (250, NULL, NULL, NULL, 2);
INSERT INTO public.human VALUES (400, NULL, NULL, NULL, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (41, 'moon_1', NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES (42, 'moon_2', NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES (43, 'moon_3', NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES (44, 'moon_4', NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES (45, 'moon_5', NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES (46, 'moon_6', NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES (47, 'moon_7', NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES (48, 'moon_8', NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES (49, 'moon_9', NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES (50, 'moon_10', NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES (51, 'moon_11', NULL, NULL, NULL, 18);
INSERT INTO public.moon VALUES (52, 'moon_12', NULL, NULL, NULL, 18);
INSERT INTO public.moon VALUES (53, 'moon_13', NULL, NULL, NULL, 19);
INSERT INTO public.moon VALUES (54, 'moon_14', NULL, NULL, NULL, 19);
INSERT INTO public.moon VALUES (55, 'moon_15', NULL, NULL, NULL, 20);
INSERT INTO public.moon VALUES (56, 'moon_16', NULL, NULL, NULL, 20);
INSERT INTO public.moon VALUES (57, 'moon_17', NULL, NULL, NULL, 21);
INSERT INTO public.moon VALUES (58, 'moon_18', NULL, NULL, NULL, 21);
INSERT INTO public.moon VALUES (59, 'moon_19', NULL, NULL, NULL, 22);
INSERT INTO public.moon VALUES (60, 'moon_20', NULL, NULL, NULL, 22);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'yo', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (14, 'q', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (15, 'w', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (16, 'e', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (17, 'r', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (18, 'y', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (19, 't', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (20, 'u', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (21, 'i', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (22, 'o', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (23, 'p', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (24, 'real star', NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Little', true, 2134, 3412, 1);
INSERT INTO public.star VALUES (2, 'Big', true, 234, 1412, 1);
INSERT INTO public.star VALUES (3, 'Glowing', true, 4234, 412, 1);
INSERT INTO public.star VALUES (4, 'Rush', true, 434, 5412, 2);
INSERT INTO public.star VALUES (5, 'Pulse', false, 344, 512, 2);
INSERT INTO public.star VALUES (6, 'Anti', false, 534, 1212, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 60, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: human human_civilization_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human
    ADD CONSTRAINT human_civilization_key UNIQUE (civilization);


--
-- Name: human human_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human
    ADD CONSTRAINT human_pkey PRIMARY KEY (human_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

