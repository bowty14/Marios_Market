--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: tylerbowerman
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO tylerbowerman;

--
-- Name: products; Type: TABLE; Schema: public; Owner: tylerbowerman
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying,
    cost integer,
    country_of_origin character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.products OWNER TO tylerbowerman;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: tylerbowerman
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO tylerbowerman;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tylerbowerman
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: tylerbowerman
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    author character varying,
    content_body character varying,
    rating integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    product_id integer
);


ALTER TABLE public.reviews OWNER TO tylerbowerman;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: tylerbowerman
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO tylerbowerman;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tylerbowerman
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: tylerbowerman
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO tylerbowerman;

--
-- Name: users; Type: TABLE; Schema: public; Owner: tylerbowerman
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying,
    password_hash character varying,
    password_salt character varying,
    admin boolean DEFAULT false
);


ALTER TABLE public.users OWNER TO tylerbowerman;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: tylerbowerman
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO tylerbowerman;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tylerbowerman
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: tylerbowerman
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	test	2020-06-05 21:38:36.587907	2020-06-05 21:38:36.603906
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: tylerbowerman
--

COPY public.products (id, name, cost, country_of_origin, created_at, updated_at) FROM stdin;
1	Egg Whites	10	US	2020-06-05 22:15:49.93882	2020-06-05 22:15:49.93882
3	Egg Whites	10	US	2020-06-05 22:16:32.211169	2020-06-05 22:16:32.211169
5	Egg Whites	10	US	2020-06-05 22:21:06.485041	2020-06-05 22:21:06.485041
7	Egg Whites	10	US	2020-06-05 22:22:36.759728	2020-06-05 22:22:36.759728
9	Egg Whites	10	US	2020-06-05 22:23:20.375204	2020-06-05 22:23:20.375204
11	Egg Whites	10	US	2020-06-05 22:25:02.221611	2020-06-05 22:25:02.221611
13	Egg Whites	10	US	2020-06-05 22:30:46.289988	2020-06-05 22:30:46.289988
15	Egg Whites	10	US	2020-06-05 22:40:09.458051	2020-06-05 22:40:09.458051
17	Egg Whites	10	US	2020-06-05 22:41:19.398792	2020-06-05 22:41:19.398792
19	Egg Whites	10	US	2020-06-05 22:41:48.980526	2020-06-05 22:41:48.980526
21	Egg Whites	10	US	2020-06-05 22:43:36.194539	2020-06-05 22:43:36.194539
23	Egg Whites	10	US	2020-06-05 22:44:58.557897	2020-06-05 22:44:58.557897
25	Egg Whites	10	US	2020-06-05 22:54:42.723287	2020-06-05 22:54:42.723287
28	Egg Whites	10	US	2020-06-05 23:00:09.3057	2020-06-05 23:00:09.3057
31	Egg Whites	10	US	2020-06-05 23:00:39.804061	2020-06-05 23:00:39.804061
35	Egg Whites	10	US	2020-06-05 23:01:39.83989	2020-06-05 23:01:39.83989
39	Egg Whites	10	US	2020-06-05 23:05:34.566338	2020-06-05 23:05:34.566338
43	Egg Whites	10	US	2020-06-05 23:06:20.303999	2020-06-05 23:06:20.303999
47	Egg Whites	10	US	2020-06-13 00:25:17.949779	2020-06-13 00:25:17.949779
51	Egg Whites	10	US	2020-06-13 00:32:43.350021	2020-06-13 00:32:43.350021
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: tylerbowerman
--

COPY public.reviews (id, author, content_body, rating, created_at, updated_at, product_id) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: tylerbowerman
--

COPY public.schema_migrations (version) FROM stdin;
20200605190331
20200529153029
20200529153811
20200529155142
20200605165104
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: tylerbowerman
--

COPY public.users (id, email, password_hash, password_salt, admin) FROM stdin;
1	t@t.com	$2a$12$7gv5X4Phosr25hkVkF/W9.7RqnIOxuTO1n/N6G1nUhD7uNwpHi6fG	$2a$12$7gv5X4Phosr25hkVkF/W9.	t
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tylerbowerman
--

SELECT pg_catalog.setval('public.products_id_seq', 54, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tylerbowerman
--

SELECT pg_catalog.setval('public.reviews_id_seq', 4, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tylerbowerman
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: reviews fk_rails_bedd9094d4; Type: FK CONSTRAINT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_bedd9094d4 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- PostgreSQL database dump complete
--

