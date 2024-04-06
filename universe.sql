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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age integer,
    distance integer,
    galaxy_id integer NOT NULL,
    value numeric,
    id integer NOT NULL,
    star_galaxy integer NOT NULL
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
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.id;


--
-- Name: galaxy_star_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_star_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_star_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_star_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_star_galaxy_seq OWNED BY public.galaxy.star_galaxy;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age integer,
    distance integer,
    moon_id integer NOT NULL,
    value numeric,
    moon_planet integer
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age integer,
    distance integer,
    value numeric,
    planet_id integer NOT NULL,
    planet_star integer,
    moon_planet integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_moon_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_moon_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_moon_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_moon_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_moon_planet_seq OWNED BY public.planet.moon_planet;


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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age integer,
    distance integer,
    star_id integer NOT NULL,
    value numeric,
    star_galaxy integer NOT NULL,
    planet_star integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_galaxy (
    star_galaxy_id integer NOT NULL,
    name character varying(30),
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star_galaxy OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star_galaxy.star_galaxy_id;


--
-- Name: star_planet_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_planet_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_planet_star_seq OWNER TO freecodecamp;

--
-- Name: star_planet_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_planet_star_seq OWNED BY public.star.planet_star;


--
-- Name: star_star_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_galaxy_seq OWNER TO freecodecamp;

--
-- Name: star_star_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_galaxy_seq OWNED BY public.star.star_galaxy;


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
-- Name: galaxy id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: galaxy star_galaxy; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN star_galaxy SET DEFAULT nextval('public.galaxy_star_galaxy_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet moon_planet; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN moon_planet SET DEFAULT nextval('public.planet_moon_planet_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star star_galaxy; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_galaxy SET DEFAULT nextval('public.star_star_galaxy_seq'::regclass);


--
-- Name: star planet_star; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN planet_star SET DEFAULT nextval('public.star_planet_star_seq'::regclass);


--
-- Name: star_galaxy star_galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_galaxy ALTER COLUMN star_galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxia_1', 'descripcion de la galaxia 1', true, false, 100, 100, 1, 1, 1, 1);
INSERT INTO public.galaxy VALUES ('galaxia_2', 'descripcion de la galaxia 2', true, false, 200, 200, 2, 2, 2, 2);
INSERT INTO public.galaxy VALUES ('galaxia_3', 'descripcion de la galaxia 3', true, false, 300, 300, 3, 3, 3, 3);
INSERT INTO public.galaxy VALUES ('galaxia_4', 'descripcion de la galaxia 4', true, false, 400, 400, 4, 4, 4, 4);
INSERT INTO public.galaxy VALUES ('galaxia_5', 'descripcion de la galaxia 5', true, false, 500, 500, 5, 5, 5, 5);
INSERT INTO public.galaxy VALUES ('galaxia_6', 'descripcion de la galaxia 6', true, false, 600, 600, 6, 6, 6, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('luna_1', 'descripcion de la luna 1', false, true, 100, 100, 1, 1, 1);
INSERT INTO public.moon VALUES ('luna_2', 'descripcion de la luna 2', false, true, 200, 200, 2, 2, 1);
INSERT INTO public.moon VALUES ('luna_3', 'descripcion de la luna 3', false, true, 300, 300, 3, 3, 2);
INSERT INTO public.moon VALUES ('luna_4', 'descripcion de la luna 4', false, true, 400, 400, 4, 4, 2);
INSERT INTO public.moon VALUES ('luna_5', 'descripcion de la luna 5', false, true, 500, 500, 5, 5, 3);
INSERT INTO public.moon VALUES ('luna_6', 'descripcion de la luna 6', false, true, 600, 600, 6, 6, 3);
INSERT INTO public.moon VALUES ('luna_7', 'descripcion de la luna 7', false, true, 700, 700, 7, 7, 4);
INSERT INTO public.moon VALUES ('luna_8', 'descripcion de la luna 8', false, true, 800, 800, 8, 8, 4);
INSERT INTO public.moon VALUES ('luna_9', 'descripcion de la luna 9', false, true, 900, 900, 9, 9, 5);
INSERT INTO public.moon VALUES ('luna_10', 'descripcion de la luna 10', false, true, 1000, 1000, 10, 10, 5);
INSERT INTO public.moon VALUES ('luna_11', 'descripcion de la luna 11', false, true, 1100, 1100, 11, 11, 6);
INSERT INTO public.moon VALUES ('luna_12', 'descripcion de la luna 12', false, true, 1200, 1200, 12, 12, 6);
INSERT INTO public.moon VALUES ('luna_13', 'descripcion de la luna 13', false, true, 1300, 1300, 13, 13, 7);
INSERT INTO public.moon VALUES ('luna_14', 'descripcion de la luna 14', false, true, 1400, 1400, 14, 14, 7);
INSERT INTO public.moon VALUES ('luna_15', 'descripcion de la luna 15', false, true, 1500, 1500, 15, 15, 8);
INSERT INTO public.moon VALUES ('luna_16', 'descripcion de la luna 16', false, true, 1600, 1600, 16, 16, 8);
INSERT INTO public.moon VALUES ('luna_17', 'descripcion de la luna 17', false, true, 1700, 1700, 17, 17, 9);
INSERT INTO public.moon VALUES ('luna_18', 'descripcion de la luna 18', false, true, 1800, 1800, 18, 18, 9);
INSERT INTO public.moon VALUES ('luna_19', 'descripcion de la luna 19', false, true, 1900, 1900, 19, 19, 10);
INSERT INTO public.moon VALUES ('luna_20', 'descripcion de la luna 20', false, true, 2000, 2000, 20, 20, 10);
INSERT INTO public.moon VALUES ('luna_21', 'descripcion de la luna 21', false, true, 2100, 2100, 21, NULL, 11);
INSERT INTO public.moon VALUES ('luna_22', 'descripcion de la luna 22', false, true, 2200, 2200, 22, NULL, 11);
INSERT INTO public.moon VALUES ('luna_23', 'descripcion de la luna 23', false, true, 2300, 2300, 23, NULL, 12);
INSERT INTO public.moon VALUES ('luna_24', 'descripcion de la luna 24', false, true, 2400, 2400, 24, NULL, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planeta_1', 'descripcion del planeta 1', false, true, 100, 100, 1, 1, 1, 1);
INSERT INTO public.planet VALUES ('planeta_2', 'descripcion del planeta 2', false, true, 200, 200, 2, 2, 1, 2);
INSERT INTO public.planet VALUES ('planeta_3', 'descripcion del planeta 3', false, true, 300, 300, 3, 3, 2, 3);
INSERT INTO public.planet VALUES ('planeta_4', 'descripcion del planeta 4', false, true, 400, 400, 4, 4, 2, 4);
INSERT INTO public.planet VALUES ('planeta_5', 'descripcion del planeta 5', false, true, 500, 500, 5, 5, 3, 5);
INSERT INTO public.planet VALUES ('planeta_6', 'descripcion del planeta 6', false, true, 600, 600, 6, 6, 3, 6);
INSERT INTO public.planet VALUES ('planeta_7', 'descripcion del planeta 7', false, true, 700, 700, 7, 7, 4, 7);
INSERT INTO public.planet VALUES ('planeta_8', 'descripcion del planeta 8', false, true, 800, 800, 8, 8, 4, 8);
INSERT INTO public.planet VALUES ('planeta_9', 'descripcion del planeta 9', false, true, 900, 900, 9, 9, 5, 9);
INSERT INTO public.planet VALUES ('planeta_10', 'descripcion del planeta 10', false, true, 1000, 1000, 10, 10, 5, 10);
INSERT INTO public.planet VALUES ('planeta_11', 'descripcion del planeta 11', false, true, 1100, 1100, 11, 11, 6, 11);
INSERT INTO public.planet VALUES ('planeta_12', 'descripcion del planeta 12', false, true, 1200, 1200, 12, 12, 6, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('estrella_1', 'descripcion de la estrella 1', false, true, 100, 100, 1, 1, 1, 1);
INSERT INTO public.star VALUES ('estrella_2', 'descripcion de la estrella 2', false, true, 200, 200, 2, 2, 2, 2);
INSERT INTO public.star VALUES ('estrella_3', 'descripcion de la estrella 3', false, true, 300, 300, 3, 3, 3, 3);
INSERT INTO public.star VALUES ('estrella_4', 'descripcion de la estrella 4', false, true, 400, 400, 4, 4, 4, 4);
INSERT INTO public.star VALUES ('estrella_5', 'descripcion de la estrella 5', false, true, 500, 500, 5, 5, 5, 5);
INSERT INTO public.star VALUES ('estrella_6', 'descripcion de la estrella 6', false, true, 600, 600, 6, 6, 6, 6);


--
-- Data for Name: star_galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_galaxy VALUES (2, 'star1_galaxy1', 1, 1);
INSERT INTO public.star_galaxy VALUES (3, 'star2_galaxy2', 2, 2);
INSERT INTO public.star_galaxy VALUES (4, 'star3_galaxy3', 3, 3);
INSERT INTO public.star_galaxy VALUES (5, 'star4_galaxy4', 4, 4);
INSERT INTO public.star_galaxy VALUES (6, 'star5_galaxy5', 5, 5);
INSERT INTO public.star_galaxy VALUES (7, 'star6_galaxy6', 6, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: galaxy_star_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_star_galaxy_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_moon_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_moon_planet_seq', 12, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 7, true);


--
-- Name: star_planet_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_planet_star_seq', 6, true);


--
-- Name: star_star_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_galaxy_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_star_galaxy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_galaxy_key UNIQUE (star_galaxy);


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
-- Name: planet planet_moon_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_planet_key UNIQUE (moon_planet);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star_galaxy star_galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_galaxy
    ADD CONSTRAINT star_galaxy_pkey PRIMARY KEY (star_galaxy_id);


--
-- Name: star_galaxy star_galaxy_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_galaxy
    ADD CONSTRAINT star_galaxy_star_id_key UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_planet_star_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_star_key UNIQUE (planet_star);


--
-- Name: moon moon_moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_planet_fkey FOREIGN KEY (moon_planet) REFERENCES public.planet(moon_planet);


--
-- Name: planet planet_planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_star_fkey FOREIGN KEY (planet_star) REFERENCES public.star(planet_star);


--
-- Name: star star_star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_galaxy_fkey FOREIGN KEY (star_galaxy) REFERENCES public.galaxy(star_galaxy);


--
-- PostgreSQL database dump complete
--

