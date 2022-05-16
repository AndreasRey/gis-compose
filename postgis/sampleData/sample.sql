--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4 (Debian 13.4-1.pgdg110+1)
-- Dumped by pg_dump version 13.3

-- Started on 2021-09-21 21:07:07 UTC

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
-- TOC entry 236 (class 1259 OID 18625)
-- Name: sample_lines; Type: TABLE; Schema: public; Owner: gisadmin
--

CREATE TABLE public.sample_lines (
    id integer NOT NULL,
    geom public.geometry(LineString,4326),
    name text
);


ALTER TABLE public.sample_lines OWNER TO gisadmin;

--
-- TOC entry 235 (class 1259 OID 18623)
-- Name: sample_lines_id_seq; Type: SEQUENCE; Schema: public; Owner: gisadmin
--

CREATE SEQUENCE public.sample_lines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sample_lines_id_seq OWNER TO gisadmin;

--
-- TOC entry 5914 (class 0 OID 0)
-- Dependencies: 235
-- Name: sample_lines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gisadmin
--

ALTER SEQUENCE public.sample_lines_id_seq OWNED BY public.sample_lines.id;


--
-- TOC entry 5765 (class 2604 OID 18628)
-- Name: sample_lines id; Type: DEFAULT; Schema: public; Owner: gisadmin
--

ALTER TABLE ONLY public.sample_lines ALTER COLUMN id SET DEFAULT nextval('public.sample_lines_id_seq'::regclass);


--
-- TOC entry 5907 (class 0 OID 18625)
-- Dependencies: 236
-- Data for Name: sample_lines; Type: TABLE DATA; Schema: public; Owner: gisadmin
--

INSERT INTO public.sample_lines (id, geom, name) VALUES (2, '0102000020E61000001000000067C53BCB948C184053B439A3FD1C47406779E85D6E8C18402331E150F21C47402028511D5A8C18409489A515EA1C4740F85E2FE3478C1840A830B973E01C4740F85E2FE3478C1840E125752BD71C47405BF78FF64D8C184001DE0310CE1C47407C7F05FD4F8C184001F3F5DBC91C4740A2482737628C18404C5A20F3BD1C47400B22347E788C18404D5AAFF1B61C4740D593A1D8948C184009FE37E3AE1C47406536D059BD8C18401EFDC7EEA81C474034E9E9E7E98C1840FE29D473A21C474047ACEE821A8D18404307B5259C1C4740FD173F3E558D184026B9C3B7961C4740F4937A06948D1840CCEA7DA3911C4740D0C8ECFBE08D1840D10E3D9C8D1C4740', 'Avenue de la Paix');
INSERT INTO public.sample_lines (id, geom, name) VALUES (1, '0102000020E61000001600000067C53BCB948C184053B439A3FD1C4740DB3ABA292B8C18407B91D79D031D474091EE3AC5BB8B18408ABE96EC0A1D4740B4D955A1768B1840308F203D101D47408E3316EF3E8B184018162563151D4740E9632A140B8B1840828D39331B1D47407AD93782E88A1840A5B8E1D7211D4740BF6A9210DB8A18402D230452281D4740FF553CFCDC8A1840997035762F1D47406EE02E8EFF8A18402BC6AD97391D47406094CD481E8B1840642B420D451D4740C7780F38508B1840B7466557511D474080E7B4A95D8B1840050D0851581D47407C945C58658B18404AED521E611D4740021161D2598B1840E082C419661D4740F5A51F883A8B18408A5D0FE86C1D47406503F106128B1840F30080AF721D47402D77CA31CF8A18403DCC451D781D4740EFA9F7287C8A18407D63B7D77C1D4740CA23EEF21A8A184085E5A90B811D4740EEEE7BFDCD8918409917745F841D47407FD4C282A789184067E23DB3871D4740', 'Avenue Appia');
INSERT INTO public.sample_lines (id, geom, name) VALUES (3, '0102000020E61000000700000067C53BCB948C184053B439A3FD1C4740E756A673C58C184026240048061D4740D8913508F48C1840F4E107A30D1D47400BDDAFA9268D184095C1E337161D47401CA0B444578D1840600292EC1D1D474050EB2EE6898D18401112BE1A251D4740897755BBCC8D1840195392BC2E1D4740', 'Route de Pregny');
INSERT INTO public.sample_lines (id, geom, name) VALUES (4, '0102000020E610000017000000897755BBCC8D1840195392BC2E1D47403BE51147A88D18403719E77C301D47408BBA6DBF7D8D1840BAC23B3D321D4740933E32F73E8D1840A10FBBD0331D47403B2A961BFA8C1840D481626B391D47408AFFF193CF8C184068F6B4453D1D47403D6DAE1FAB8C1840268B5CC6401D474073FB40C58E8C18409679D68D461D4740A889D36A728C18407E304F554C1D47409C077B03528C1840A002C529531D4740763E59C93F8C18402ACC69AA561D47400E654C82298C1840891EDF715C1D47408403CA34118C1840B1E02573631D47409F4A9307038C1840AC5A477A671D4740DE3A549DF78B18402E07B6F56D1D4740AB188250DB8B18405059DC0D761D4740B99F65D4978B1840EBA4DD047D1D47406F14A3C2658B1840B5D67598801D4740724B9583318B1840FDF53D5C841D474096725B8DCF8A18408972F10D861D47401CFCB8EF4C8A1840B010C1DD851D47407F954209F88918408972F10D861D47407FD4C282A789184067E23DB3871D4740', 'La Vy-des-Champs');


--
-- TOC entry 5915 (class 0 OID 0)
-- Dependencies: 235
-- Name: sample_lines_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gisadmin
--

SELECT pg_catalog.setval('public.sample_lines_id_seq', 4, true);


--
-- TOC entry 5767 (class 2606 OID 18630)
-- Name: sample_lines sample_lines_pkey; Type: CONSTRAINT; Schema: public; Owner: gisadmin
--

ALTER TABLE ONLY public.sample_lines
    ADD CONSTRAINT sample_lines_pkey PRIMARY KEY (id);


--
-- TOC entry 5768 (class 1259 OID 18634)
-- Name: sidx_sample_lines_geom; Type: INDEX; Schema: public; Owner: gisadmin
--

CREATE INDEX sidx_sample_lines_geom ON public.sample_lines USING gist (geom);


--
-- TOC entry 5913 (class 0 OID 0)
-- Dependencies: 236
-- Name: TABLE sample_lines; Type: ACL; Schema: public; Owner: gisadmin
--

GRANT SELECT ON TABLE public.sample_lines TO replicator;


-- Completed on 2021-09-21 21:07:07 UTC

--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4 (Debian 13.4-1.pgdg110+1)
-- Dumped by pg_dump version 13.3

-- Started on 2021-09-21 21:05:53 UTC

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
-- TOC entry 234 (class 1259 OID 18613)
-- Name: sample_points; Type: TABLE; Schema: public; Owner: gisadmin
--

CREATE TABLE public.sample_points (
    id integer NOT NULL,
    name text NOT NULL,
    geom public.geometry(Point,4326)
);


ALTER TABLE public.sample_points OWNER TO gisadmin;

--
-- TOC entry 233 (class 1259 OID 18611)
-- Name: sample_points_id_seq; Type: SEQUENCE; Schema: public; Owner: gisadmin
--

CREATE SEQUENCE public.sample_points_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sample_points_id_seq OWNER TO gisadmin;

--
-- TOC entry 5914 (class 0 OID 0)
-- Dependencies: 233
-- Name: sample_points_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gisadmin
--

ALTER SEQUENCE public.sample_points_id_seq OWNED BY public.sample_points.id;


--
-- TOC entry 5765 (class 2604 OID 18616)
-- Name: sample_points id; Type: DEFAULT; Schema: public; Owner: gisadmin
--

ALTER TABLE ONLY public.sample_points ALTER COLUMN id SET DEFAULT nextval('public.sample_points_id_seq'::regclass);


--
-- TOC entry 5907 (class 0 OID 18613)
-- Dependencies: 234
-- Data for Name: sample_points; Type: TABLE DATA; Schema: public; Owner: gisadmin
--

INSERT INTO public.sample_points (id, name, geom) VALUES (9, 'Museum', '0101000020E6100000E633C31D148C184035137AB5181D4740');
INSERT INTO public.sample_points (id, name, geom) VALUES (10, 'Carlton', '0101000020E6100000E8EEE7F3908C1840F3FD7F27281D4740');
INSERT INTO public.sample_points (id, name, geom) VALUES (11, 'Reception', '0101000020E610000098FCB7EC308C184061979772331D4740');


--
-- TOC entry 5915 (class 0 OID 0)
-- Dependencies: 233
-- Name: sample_points_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gisadmin
--

SELECT pg_catalog.setval('public.sample_points_id_seq', 11, true);


--
-- TOC entry 5767 (class 2606 OID 18621)
-- Name: sample_points sample_points_pkey; Type: CONSTRAINT; Schema: public; Owner: gisadmin
--

ALTER TABLE ONLY public.sample_points
    ADD CONSTRAINT sample_points_pkey PRIMARY KEY (id);


--
-- TOC entry 5768 (class 1259 OID 18622)
-- Name: sidx_sample_points_geom; Type: INDEX; Schema: public; Owner: gisadmin
--

CREATE INDEX sidx_sample_points_geom ON public.sample_points USING gist (geom);


--
-- TOC entry 5913 (class 0 OID 0)
-- Dependencies: 234
-- Name: TABLE sample_points; Type: ACL; Schema: public; Owner: gisadmin
--

GRANT SELECT ON TABLE public.sample_points TO replicator;


-- Completed on 2021-09-21 21:05:53 UTC

--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4 (Debian 13.4-1.pgdg110+1)
-- Dumped by pg_dump version 13.3

-- Started on 2021-09-21 21:08:23 UTC

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
-- TOC entry 238 (class 1259 OID 18637)
-- Name: sample_polygons; Type: TABLE; Schema: public; Owner: gisadmin
--

CREATE TABLE public.sample_polygons (
    id integer NOT NULL,
    type text NOT NULL,
    geom public.geometry(Polygon,4326)
);


ALTER TABLE public.sample_polygons OWNER TO gisadmin;

--
-- TOC entry 237 (class 1259 OID 18635)
-- Name: sample_polygons_id_seq; Type: SEQUENCE; Schema: public; Owner: gisadmin
--

CREATE SEQUENCE public.sample_polygons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sample_polygons_id_seq OWNER TO gisadmin;

--
-- TOC entry 5914 (class 0 OID 0)
-- Dependencies: 237
-- Name: sample_polygons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gisadmin
--

ALTER SEQUENCE public.sample_polygons_id_seq OWNED BY public.sample_polygons.id;


--
-- TOC entry 5765 (class 2604 OID 18640)
-- Name: sample_polygons id; Type: DEFAULT; Schema: public; Owner: gisadmin
--

ALTER TABLE ONLY public.sample_polygons ALTER COLUMN id SET DEFAULT nextval('public.sample_polygons_id_seq'::regclass);


--
-- TOC entry 5907 (class 0 OID 18637)
-- Dependencies: 238
-- Data for Name: sample_polygons; Type: TABLE DATA; Schema: public; Owner: gisadmin
--

INSERT INTO public.sample_polygons (id, type, geom) VALUES (1, 'Office', '0103000020E61000000100000005000000192B7EFA358C1840AB317223511D4740A3B6ED894F8C1840256DCBB74C1D4740A92E3BA48C8B1840D824BD8F401D4740AEB1DDE26F8B1840C8538485441D4740192B7EFA358C1840AB317223511D4740');
INSERT INTO public.sample_polygons (id, type, geom) VALUES (2, 'Office', '0103000020E61000000100000005000000FC93A278CB8B1840F63EFC7A441D47406DFF47903F8C1840A87612B5361D4740A75FE8FC048C1840F8647993331D4740A92E3BA48C8B1840D824BD8F401D4740FC93A278CB8B1840F63EFC7A441D4740');
INSERT INTO public.sample_polygons (id, type, geom) VALUES (3, 'Office', '0103000020E61000000100000007000000F77F62FBB28B1840D73CF42A371D474047D18952D98B1840724949BF321D4740573419DAB08B1840156C55FF301D474099CBAB1CB58B1840595ECC53271D4740F0487025748B1840EEEF7DF5261D47403EC0EFB06C8B1840724949BF321D4740F77F62FBB28B1840D73CF42A371D4740');
INSERT INTO public.sample_polygons (id, type, geom) VALUES (4, 'Office', '0103000020E61000000100000005000000737795AA7C8B184029528935251D4740C925070CB48B1840898CB064251D47404C542C91BC8B18409F802454191D4740565A710E838B1840AD76DF9A191D4740737795AA7C8B184029528935251D4740');
INSERT INTO public.sample_polygons (id, type, geom) VALUES (5, 'Office', '0103000020E61000000100000005000000B9811C40DE8C18402872613F2F1D4740F6B00F542B8C18405D038090241D47408CF613F8668C1840BE2F67D71D1D4740EBB51FFB0A8D1840763C4B86281D4740B9811C40DE8C18402872613F2F1D4740');
INSERT INTO public.sample_polygons (id, type, geom) VALUES (6, 'Restaurant', '0103000020E610000001000000110000008FC5669FEE8B184081A599E4281D47409AA553E8E28B184077072457281D474029B465B6DF8B18403E802F97261D474064EEADEED28B1840C5DFE46E211D4740043AF70FD58B18404CD3FAEE1D1D474047D18952D98B1840D9D1D45A1B1D474065C855BA008C184077A1379E1A1D47407382EACE228C184077A1379E1A1D47408B1C6C2C398C184077A1379E1A1D47406DFF47903F8C18403A86AD2B1B1D4740C0D31126498C1840EA90C0751C1D4740C0D31126498C1840C8FC84611D1D4740C556B4642C8C18402E6133CD211D47401EAE2039198C1840DBB4F51D251D47406B25A0C4118C1840491CC3AE261D474047AB311E078C184001A2B76E281D47408FC5669FEE8B184081A599E4281D4740');
INSERT INTO public.sample_polygons (id, type, geom) VALUES (7, 'Restaurant', '0103000020E61000000100000005000000B01A20A70D911840BCA70F18001D4740268FB017F49018400FB4B779011D474023DB6080989018405BE5CF80EE1C47409049AC73B890184012E7EC0AEE1C4740B01A20A70D911840BCA70F18001D4740');


--
-- TOC entry 5915 (class 0 OID 0)
-- Dependencies: 237
-- Name: sample_polygons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gisadmin
--

SELECT pg_catalog.setval('public.sample_polygons_id_seq', 7, true);


--
-- TOC entry 5767 (class 2606 OID 18645)
-- Name: sample_polygons sample_polygons_pkey; Type: CONSTRAINT; Schema: public; Owner: gisadmin
--

ALTER TABLE ONLY public.sample_polygons
    ADD CONSTRAINT sample_polygons_pkey PRIMARY KEY (id);


--
-- TOC entry 5768 (class 1259 OID 18646)
-- Name: sidx_sample_polygons_geom; Type: INDEX; Schema: public; Owner: gisadmin
--

CREATE INDEX sidx_sample_polygons_geom ON public.sample_polygons USING gist (geom);


--
-- TOC entry 5913 (class 0 OID 0)
-- Dependencies: 238
-- Name: TABLE sample_polygons; Type: ACL; Schema: public; Owner: gisadmin
--

GRANT SELECT ON TABLE public.sample_polygons TO replicator;


-- Completed on 2021-09-21 21:08:23 UTC

--
-- PostgreSQL database dump complete
--

