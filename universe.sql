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
-- Name: dwarf; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf (
    dwarf_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.dwarf OWNER TO freecodecamp;

--
-- Name: dwarf_dwarf_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dwarf_dwarf_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dwarf_dwarf_id_seq OWNER TO freecodecamp;

--
-- Name: dwarf_dwarf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dwarf_dwarf_id_seq OWNED BY public.dwarf.dwarf_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    planets integer,
    stars integer
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    moon_id integer NOT NULL,
    diameter_km integer,
    day_hours numeric(6,2),
    ring_system boolean,
    planet_id integer NOT NULL
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
    name character varying(30),
    planet_id integer NOT NULL,
    day_hours numeric(6,2),
    diameter_km integer,
    ring_system boolean,
    star_id integer NOT NULL
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
    name character varying(30),
    star_id integer NOT NULL,
    description text,
    galaxy_id integer NOT NULL,
    radius_km numeric(9,2)
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
-- Name: dwarf dwarf_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf ALTER COLUMN dwarf_id SET DEFAULT nextval('public.dwarf_dwarf_id_seq'::regclass);


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
-- Data for Name: dwarf; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarf VALUES (1, 'Eris', NULL);
INSERT INTO public.dwarf VALUES (2, 'Sedna', NULL);
INSERT INTO public.dwarf VALUES (3, 'Orcus', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Antennae', 3, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Black Eye', 4, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Butterfly', 5, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Cartwheel', 6, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, 3475, 708.70, false, 3);
INSERT INTO public.moon VALUES ('Cordelia', 2, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Opheelia', 3, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Bianca', 4, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Cressida', 5, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Desdemona', 6, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Juliet', 7, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Portia', 8, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Rosalind', 9, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Cupid', 10, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Belinda', 11, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Perdita', 12, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Puck', 13, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Mab', 14, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Miranda', 15, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Ariel', 16, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Umbriel', 17, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Titania', 18, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Oberon', 19, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Francisco', 20, NULL, NULL, NULL, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, 4222.60, 4879, false, 1);
INSERT INTO public.planet VALUES ('Venus', 2, 2802.00, 12104, false, 1);
INSERT INTO public.planet VALUES ('Earth', 3, 24.00, 12756, false, 1);
INSERT INTO public.planet VALUES ('Mars', 4, 24.70, 6792, false, 1);
INSERT INTO public.planet VALUES ('Jupiter', 5, 9.90, 142984, true, 1);
INSERT INTO public.planet VALUES ('Saturn', 6, 10.70, 120536, true, 1);
INSERT INTO public.planet VALUES ('Uranus', 7, 17.20, 51118, true, 1);
INSERT INTO public.planet VALUES ('Neptune', 8, 16.10, 49528, true, 1);
INSERT INTO public.planet VALUES ('Pluto', 9, 153.30, 2376, false, 1);
INSERT INTO public.planet VALUES ('Ceres', 10, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Makemake', 11, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Haumea', 12, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 'The star at the center of the Solar System.', 1, 695700.00);
INSERT INTO public.star VALUES ('Polaris', 2, NULL, 1, NULL);
INSERT INTO public.star VALUES ('Sirius', 3, NULL, 1, NULL);
INSERT INTO public.star VALUES ('Alpha Centauri System', 4, NULL, 1, NULL);
INSERT INTO public.star VALUES ('Betelgeuse', 5, NULL, 1, NULL);
INSERT INTO public.star VALUES ('Rigel', 6, NULL, 1, NULL);


--
-- Name: dwarf_dwarf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dwarf_dwarf_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 10, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dwarf dwarf_dwarf_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf
    ADD CONSTRAINT dwarf_dwarf_id_key UNIQUE (dwarf_id);


--
-- Name: dwarf dwarf_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf
    ADD CONSTRAINT dwarf_name_key UNIQUE (name);


--
-- Name: dwarf dwarf_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf
    ADD CONSTRAINT dwarf_pkey PRIMARY KEY (dwarf_id);


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
-- PostgreSQL database dump complete
--

