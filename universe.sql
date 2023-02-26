--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(60) NOT NULL,
    galaxy_type character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer
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
-- Name: gas; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.gas (
    gas_id integer NOT NULL,
    name character varying(60) NOT NULL,
    gas_type character varying(60) NOT NULL
);


ALTER TABLE public.gas OWNER TO freecodecamp;

--
-- Name: gas_gas_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.gas_gas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gas_gas_id_seq OWNER TO freecodecamp;

--
-- Name: gas_gas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.gas_gas_id_seq OWNED BY public.gas.gas_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    moon_type character varying(30) NOT NULL,
    distance_from_earth numeric(4,1),
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
    name character varying(60) NOT NULL,
    planet_type character varying(30) NOT NULL,
    distance_from_earth numeric(4,1),
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer,
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
    name character varying(60) NOT NULL,
    star_type character varying(30) NOT NULL,
    age_in_millions_of_years integer,
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
-- Name: gas gas_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gas ALTER COLUMN gas_id SET DEFAULT nextval('public.gas_gas_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'andromeda', 'spiral galaxy', 'andromeda get its name from the area of the sky in which it appears , the constellation of Andromeda', 4);
INSERT INTO public.galaxy VALUES (2, 'milky way', 'spiral galaxy', 'the appearance from earth of the galaxy a band of light', 13);
INSERT INTO public.galaxy VALUES (3, 'sombrero', 'lenticular galaxy', 'it has a prominent dust lane that gives it its distinctive shape and a bright nucleus surrounded by a halo of stars', 12);
INSERT INTO public.galaxy VALUES (4, 'triangulum', 'spiral galaxy', 'it is one of the most distant objects visible to the naked eye and is a member of our local group of galaxies', 10);
INSERT INTO public.galaxy VALUES (5, 'whirlpool', 'spiral galaxy', 'it is ine of the most famous galaxies in astronomy due to its beautiful spiral arms', 11);
INSERT INTO public.galaxy VALUES (6, 'small magellanic cloud', 'spiral galaxy', '', 14);


--
-- Data for Name: gas; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.gas VALUES (1, 'OX', 'more gas');
INSERT INTO public.gas VALUES (3, 'NO', 'more gasing');
INSERT INTO public.gas VALUES (4, 'H2O', 'more gasing h2o');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'lo', 'satellite', 5.9, 5);
INSERT INTO public.moon VALUES (2, 'europa', 'satellite', 414.0, 5);
INSERT INTO public.moon VALUES (3, 'ganymede', 'satellite', 628.0, 5);
INSERT INTO public.moon VALUES (4, 'callisto', 'satellite', 870.0, 5);
INSERT INTO public.moon VALUES (5, 'titan', 'satellite', 886.0, 6);
INSERT INTO public.moon VALUES (6, 'triton', 'satellite', 999.0, 8);
INSERT INTO public.moon VALUES (7, 'deimos', 'satellite', 234.0, 4);
INSERT INTO public.moon VALUES (8, 'phobos', 'satellite', 34.0, 6);
INSERT INTO public.moon VALUES (9, 'enceladus', 'satellite', 839.0, 6);
INSERT INTO public.moon VALUES (10, 'mimas', 'satellite', 746.0, 6);
INSERT INTO public.moon VALUES (11, 'rhea', 'satellite', 795.0, 6);
INSERT INTO public.moon VALUES (12, 'hyperion', 'satellite', 999.0, 6);
INSERT INTO public.moon VALUES (13, 'lapetus', 'satellite', 999.0, 6);
INSERT INTO public.moon VALUES (14, 'charon', 'satellite', 999.0, 9);
INSERT INTO public.moon VALUES (15, 'cron', 'satellite', 999.0, 9);
INSERT INTO public.moon VALUES (16, 'crollllln', 'satellite', 999.0, 9);
INSERT INTO public.moon VALUES (17, 'erion', 'satellite', 999.0, 6);
INSERT INTO public.moon VALUES (18, 'gymede', 'satellite', 628.0, 5);
INSERT INTO public.moon VALUES (19, 'endus', 'satellite', 839.0, 6);
INSERT INTO public.moon VALUES (20, 'titanoo', 'satellite', 886.0, 6);
INSERT INTO public.moon VALUES (21, 'calmnklisto', 'satellite', 870.0, 5);
INSERT INTO public.moon VALUES (22, 'losed', 'satellite', 5.9, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 'terrestrial', 57.9, false, false, 2, NULL);
INSERT INTO public.planet VALUES (2, 'earth', 'terrestrial', 0.0, true, true, 2, NULL);
INSERT INTO public.planet VALUES (3, 'venus', 'terrestrial', 108.2, false, true, 2, NULL);
INSERT INTO public.planet VALUES (4, 'mars', 'terrestrial', 227.9, false, true, 2, NULL);
INSERT INTO public.planet VALUES (5, 'jupiter', 'gas giant', 778.3, false, true, 2, NULL);
INSERT INTO public.planet VALUES (6, 'saturn', 'gas giant', 287.1, false, true, 2, NULL);
INSERT INTO public.planet VALUES (7, 'uranus', 'ice giant', 449.8, false, true, 2, NULL);
INSERT INTO public.planet VALUES (8, 'neptune', 'ice giant', 449.8, false, true, 2, NULL);
INSERT INTO public.planet VALUES (9, 'pluto', 'dwarf giant', 591.8, false, true, 2, NULL);
INSERT INTO public.planet VALUES (10, 'haumea', 'dwarf giant', 674.1, false, true, 2, NULL);
INSERT INTO public.planet VALUES (11, 'makemake', 'dwarf giant', 674.1, false, true, 2, NULL);
INSERT INTO public.planet VALUES (12, 'eris', 'dwarf giant', 981.7, false, true, 2, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sirius A ', 'A1Vm', 225, 2);
INSERT INTO public.star VALUES (2, 'betelgeuse', 'M2lab', 10, 1);
INSERT INTO public.star VALUES (3, 'antares A', 'N5lab', 12, 2);
INSERT INTO public.star VALUES (4, 'procyon', 'F5IV-V', 200, 3);
INSERT INTO public.star VALUES (5, 'rigel', 'blue', 8, 4);
INSERT INTO public.star VALUES (6, 'aldebaran', 'K-TYPE', 900, 5);
INSERT INTO public.star VALUES (7, 'pollux', 'K0lllb', 600, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: gas_gas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.gas_gas_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: gas gas_gas_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gas
    ADD CONSTRAINT gas_gas_type_key UNIQUE (gas_type);


--
-- Name: gas gas_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gas
    ADD CONSTRAINT gas_pkey PRIMARY KEY (gas_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

