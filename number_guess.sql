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
-- Name: game_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_info (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    secret_number numeric(4,0),
    number_of_guesses integer
);


ALTER TABLE public.game_info OWNER TO freecodecamp;

--
-- Name: game_info_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_info_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_info_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_info_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_info_game_id_seq OWNED BY public.game_info.game_id;


--
-- Name: user_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_info (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.user_info OWNER TO freecodecamp;

--
-- Name: game_info game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_info ALTER COLUMN game_id SET DEFAULT nextval('public.game_info_game_id_seq'::regclass);


--
-- Data for Name: game_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_info VALUES (1, 1, 566, 567);
INSERT INTO public.game_info VALUES (2, 1, 40, 41);
INSERT INTO public.game_info VALUES (3, 2, 387, 388);
INSERT INTO public.game_info VALUES (4, 2, 603, 604);
INSERT INTO public.game_info VALUES (5, 1, 405, 408);
INSERT INTO public.game_info VALUES (6, 1, 496, 498);
INSERT INTO public.game_info VALUES (7, 1, 185, 186);
INSERT INTO public.game_info VALUES (8, 3, 31, 32);
INSERT INTO public.game_info VALUES (9, 3, 182, 183);
INSERT INTO public.game_info VALUES (10, 4, 871, 872);
INSERT INTO public.game_info VALUES (11, 4, 752, 753);
INSERT INTO public.game_info VALUES (12, 3, 8, 11);
INSERT INTO public.game_info VALUES (13, 3, 989, 991);
INSERT INTO public.game_info VALUES (14, 3, 184, 185);
INSERT INTO public.game_info VALUES (15, 5, 831, 832);
INSERT INTO public.game_info VALUES (16, 5, 360, 361);
INSERT INTO public.game_info VALUES (17, 6, 580, 581);
INSERT INTO public.game_info VALUES (18, 6, 172, 173);
INSERT INTO public.game_info VALUES (19, 5, 292, 295);
INSERT INTO public.game_info VALUES (20, 5, 339, 341);
INSERT INTO public.game_info VALUES (21, 5, 614, 615);
INSERT INTO public.game_info VALUES (22, 7, 22, 23);
INSERT INTO public.game_info VALUES (23, 7, 497, 498);
INSERT INTO public.game_info VALUES (24, 8, 631, 632);
INSERT INTO public.game_info VALUES (25, 8, 120, 121);
INSERT INTO public.game_info VALUES (26, 7, 324, 327);
INSERT INTO public.game_info VALUES (27, 7, 154, 156);
INSERT INTO public.game_info VALUES (28, 7, 631, 632);
INSERT INTO public.game_info VALUES (29, 9, 161, 162);
INSERT INTO public.game_info VALUES (30, 9, 838, 839);
INSERT INTO public.game_info VALUES (31, 10, 748, 749);
INSERT INTO public.game_info VALUES (32, 10, 658, 659);
INSERT INTO public.game_info VALUES (33, 9, 341, 344);
INSERT INTO public.game_info VALUES (34, 9, 41, 43);
INSERT INTO public.game_info VALUES (35, 9, 793, 794);
INSERT INTO public.game_info VALUES (36, 11, 614, 615);
INSERT INTO public.game_info VALUES (37, 11, 932, 933);
INSERT INTO public.game_info VALUES (38, 12, 891, 892);
INSERT INTO public.game_info VALUES (39, 12, 943, 944);
INSERT INTO public.game_info VALUES (40, 11, 538, 541);
INSERT INTO public.game_info VALUES (41, 11, 158, 160);
INSERT INTO public.game_info VALUES (42, 11, 965, 966);
INSERT INTO public.game_info VALUES (43, 13, 942, 943);
INSERT INTO public.game_info VALUES (44, 13, 436, 437);
INSERT INTO public.game_info VALUES (45, 14, 679, 680);
INSERT INTO public.game_info VALUES (46, 14, 27, 28);
INSERT INTO public.game_info VALUES (47, 13, 356, 359);
INSERT INTO public.game_info VALUES (48, 13, 539, 541);
INSERT INTO public.game_info VALUES (49, 13, 308, 309);
INSERT INTO public.game_info VALUES (50, 15, 728, 729);
INSERT INTO public.game_info VALUES (51, 15, 970, 971);
INSERT INTO public.game_info VALUES (52, 16, 885, 886);
INSERT INTO public.game_info VALUES (53, 16, 25, 26);
INSERT INTO public.game_info VALUES (54, 15, 972, 975);
INSERT INTO public.game_info VALUES (55, 15, 955, 957);
INSERT INTO public.game_info VALUES (56, 15, 836, 837);
INSERT INTO public.game_info VALUES (57, 17, 534, 535);
INSERT INTO public.game_info VALUES (58, 17, 661, 662);
INSERT INTO public.game_info VALUES (59, 18, 600, 601);
INSERT INTO public.game_info VALUES (60, 18, 802, 803);
INSERT INTO public.game_info VALUES (61, 17, 835, 838);
INSERT INTO public.game_info VALUES (62, 17, 400, 402);
INSERT INTO public.game_info VALUES (63, 17, 224, 225);
INSERT INTO public.game_info VALUES (64, 19, 484, 485);
INSERT INTO public.game_info VALUES (65, 19, 452, 453);
INSERT INTO public.game_info VALUES (66, 20, 377, 378);
INSERT INTO public.game_info VALUES (67, 20, 635, 636);
INSERT INTO public.game_info VALUES (68, 19, 516, 519);
INSERT INTO public.game_info VALUES (69, 19, 790, 792);
INSERT INTO public.game_info VALUES (70, 19, 543, 544);
INSERT INTO public.game_info VALUES (71, 21, 820, 821);
INSERT INTO public.game_info VALUES (72, 21, 352, 353);
INSERT INTO public.game_info VALUES (73, 22, 622, 623);
INSERT INTO public.game_info VALUES (74, 22, 444, 445);
INSERT INTO public.game_info VALUES (75, 21, 331, 334);
INSERT INTO public.game_info VALUES (76, 21, 999, 1001);
INSERT INTO public.game_info VALUES (77, 21, 847, 848);
INSERT INTO public.game_info VALUES (78, 23, 517, 518);
INSERT INTO public.game_info VALUES (79, 23, 554, 555);
INSERT INTO public.game_info VALUES (80, 24, 371, 372);
INSERT INTO public.game_info VALUES (81, 24, 450, 451);
INSERT INTO public.game_info VALUES (82, 23, 585, 588);
INSERT INTO public.game_info VALUES (83, 23, 959, 961);
INSERT INTO public.game_info VALUES (84, 23, 432, 433);
INSERT INTO public.game_info VALUES (85, 25, 668, 669);
INSERT INTO public.game_info VALUES (86, 25, 186, 187);
INSERT INTO public.game_info VALUES (87, 26, 917, 918);
INSERT INTO public.game_info VALUES (88, 26, 804, 805);
INSERT INTO public.game_info VALUES (89, 25, 511, 514);
INSERT INTO public.game_info VALUES (90, 25, 576, 578);
INSERT INTO public.game_info VALUES (91, 25, 419, 420);
INSERT INTO public.game_info VALUES (92, 27, 554, 555);
INSERT INTO public.game_info VALUES (93, 27, 801, 802);
INSERT INTO public.game_info VALUES (94, 28, 866, 867);
INSERT INTO public.game_info VALUES (95, 28, 831, 832);
INSERT INTO public.game_info VALUES (96, 27, 967, 970);
INSERT INTO public.game_info VALUES (97, 27, 872, 874);
INSERT INTO public.game_info VALUES (98, 27, 67, 68);
INSERT INTO public.game_info VALUES (99, 29, 624, NULL);
INSERT INTO public.game_info VALUES (100, 30, 97, 98);
INSERT INTO public.game_info VALUES (101, 30, 155, 156);
INSERT INTO public.game_info VALUES (102, 31, 242, 243);
INSERT INTO public.game_info VALUES (103, 31, 649, 650);
INSERT INTO public.game_info VALUES (104, 30, 859, 862);
INSERT INTO public.game_info VALUES (105, 30, 508, 510);
INSERT INTO public.game_info VALUES (106, 30, 877, 878);
INSERT INTO public.game_info VALUES (107, 32, 232, 233);
INSERT INTO public.game_info VALUES (108, 32, 714, 715);
INSERT INTO public.game_info VALUES (109, 33, 46, 47);
INSERT INTO public.game_info VALUES (110, 33, 65, 66);
INSERT INTO public.game_info VALUES (111, 32, 356, 359);
INSERT INTO public.game_info VALUES (112, 32, 696, 698);
INSERT INTO public.game_info VALUES (113, 32, 570, 571);


--
-- Data for Name: user_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.user_info VALUES (1, 'user_1670254116208');
INSERT INTO public.user_info VALUES (2, 'user_1670254116207');
INSERT INTO public.user_info VALUES (3, 'user_1670254292006');
INSERT INTO public.user_info VALUES (4, 'user_1670254292005');
INSERT INTO public.user_info VALUES (5, 'user_1670254317599');
INSERT INTO public.user_info VALUES (6, 'user_1670254317598');
INSERT INTO public.user_info VALUES (7, 'user_1670254353678');
INSERT INTO public.user_info VALUES (8, 'user_1670254353677');
INSERT INTO public.user_info VALUES (9, 'user_1670254382865');
INSERT INTO public.user_info VALUES (10, 'user_1670254382864');
INSERT INTO public.user_info VALUES (11, 'user_1670254542069');
INSERT INTO public.user_info VALUES (12, 'user_1670254542068');
INSERT INTO public.user_info VALUES (13, 'user_1670254666453');
INSERT INTO public.user_info VALUES (14, 'user_1670254666452');
INSERT INTO public.user_info VALUES (15, 'user_1670254704814');
INSERT INTO public.user_info VALUES (16, 'user_1670254704813');
INSERT INTO public.user_info VALUES (17, 'user_1670254776969');
INSERT INTO public.user_info VALUES (18, 'user_1670254776968');
INSERT INTO public.user_info VALUES (19, 'user_1670254798345');
INSERT INTO public.user_info VALUES (20, 'user_1670254798344');
INSERT INTO public.user_info VALUES (21, 'user_1670254813985');
INSERT INTO public.user_info VALUES (22, 'user_1670254813984');
INSERT INTO public.user_info VALUES (23, 'user_1670254839825');
INSERT INTO public.user_info VALUES (24, 'user_1670254839824');
INSERT INTO public.user_info VALUES (25, 'user_1670254847870');
INSERT INTO public.user_info VALUES (26, 'user_1670254847869');
INSERT INTO public.user_info VALUES (27, 'user_1670254866546');
INSERT INTO public.user_info VALUES (28, 'user_1670254866545');
INSERT INTO public.user_info VALUES (29, 'nreiter29');
INSERT INTO public.user_info VALUES (30, 'user_1670254997119');
INSERT INTO public.user_info VALUES (31, 'user_1670254997118');
INSERT INTO public.user_info VALUES (32, 'user_1670255017047');
INSERT INTO public.user_info VALUES (33, 'user_1670255017046');


--
-- Name: game_info_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_info_game_id_seq', 113, true);


--
-- Name: game_info game_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_info
    ADD CONSTRAINT game_info_pkey PRIMARY KEY (game_id);


--
-- Name: user_info user_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_info
    ADD CONSTRAINT user_info_pkey PRIMARY KEY (user_id);


--
-- Name: game_info game_info_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_info
    ADD CONSTRAINT game_info_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_info(user_id);


--
-- PostgreSQL database dump complete
--

