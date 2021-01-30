--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3
-- Dumped by pg_dump version 11.3

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

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: irinabystrova
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO irinabystrova;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: irinabystrova
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO irinabystrova;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: irinabystrova
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: irinabystrova
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO irinabystrova;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: irinabystrova
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO irinabystrova;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: irinabystrova
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: irinabystrova
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO irinabystrova;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: irinabystrova
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO irinabystrova;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: irinabystrova
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: irinabystrova
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO irinabystrova;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: irinabystrova
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO irinabystrova;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: irinabystrova
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO irinabystrova;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: irinabystrova
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: irinabystrova
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO irinabystrova;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: irinabystrova
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: irinabystrova
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO irinabystrova;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: irinabystrova
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO irinabystrova;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: irinabystrova
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: irinabystrova
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO irinabystrova;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: irinabystrova
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO irinabystrova;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: irinabystrova
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: irinabystrova
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO irinabystrova;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: irinabystrova
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO irinabystrova;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: irinabystrova
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: irinabystrova
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO irinabystrova;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: irinabystrova
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO irinabystrova;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: irinabystrova
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: irinabystrova
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO irinabystrova;

--
-- Name: shelves_app_author; Type: TABLE; Schema: public; Owner: irinabystrova
--

CREATE TABLE public.shelves_app_author (
    modelwithname_ptr_id integer NOT NULL
);


ALTER TABLE public.shelves_app_author OWNER TO irinabystrova;

--
-- Name: shelves_app_book; Type: TABLE; Schema: public; Owner: irinabystrova
--

CREATE TABLE public.shelves_app_book (
    modelwithname_ptr_id integer NOT NULL,
    "position" integer NOT NULL,
    book_author_id integer NOT NULL,
    book_shelf_id integer NOT NULL
);


ALTER TABLE public.shelves_app_book OWNER TO irinabystrova;

--
-- Name: shelves_app_modelwithname; Type: TABLE; Schema: public; Owner: irinabystrova
--

CREATE TABLE public.shelves_app_modelwithname (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.shelves_app_modelwithname OWNER TO irinabystrova;

--
-- Name: shelves_app_modelwithname_id_seq; Type: SEQUENCE; Schema: public; Owner: irinabystrova
--

CREATE SEQUENCE public.shelves_app_modelwithname_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shelves_app_modelwithname_id_seq OWNER TO irinabystrova;

--
-- Name: shelves_app_modelwithname_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: irinabystrova
--

ALTER SEQUENCE public.shelves_app_modelwithname_id_seq OWNED BY public.shelves_app_modelwithname.id;


--
-- Name: shelves_app_shelf; Type: TABLE; Schema: public; Owner: irinabystrova
--

CREATE TABLE public.shelves_app_shelf (
    modelwithname_ptr_id integer NOT NULL
);


ALTER TABLE public.shelves_app_shelf OWNER TO irinabystrova;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: shelves_app_modelwithname id; Type: DEFAULT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.shelves_app_modelwithname ALTER COLUMN id SET DEFAULT nextval('public.shelves_app_modelwithname_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: irinabystrova
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: irinabystrova
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: irinabystrova
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add model with name	1	add_modelwithname
2	Can change model with name	1	change_modelwithname
3	Can delete model with name	1	delete_modelwithname
4	Can view model with name	1	view_modelwithname
5	Can add author	2	add_author
6	Can change author	2	change_author
7	Can delete author	2	delete_author
8	Can view author	2	view_author
9	Can add shelf	3	add_shelf
10	Can change shelf	3	change_shelf
11	Can delete shelf	3	delete_shelf
12	Can view shelf	3	view_shelf
13	Can add book	4	add_book
14	Can change book	4	change_book
15	Can delete book	4	delete_book
16	Can view book	4	view_book
17	Can add log entry	5	add_logentry
18	Can change log entry	5	change_logentry
19	Can delete log entry	5	delete_logentry
20	Can view log entry	5	view_logentry
21	Can add permission	6	add_permission
22	Can change permission	6	change_permission
23	Can delete permission	6	delete_permission
24	Can view permission	6	view_permission
25	Can add group	7	add_group
26	Can change group	7	change_group
27	Can delete group	7	delete_group
28	Can view group	7	view_group
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add content type	9	add_contenttype
34	Can change content type	9	change_contenttype
35	Can delete content type	9	delete_contenttype
36	Can view content type	9	view_contenttype
37	Can add session	10	add_session
38	Can change session	10	change_session
39	Can delete session	10	delete_session
40	Can view session	10	view_session
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: irinabystrova
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$DNVs5dWyuiGY$sZoGA9rstHA90U0i6SzIl6vaeISZd5BgBh4Ky13Z314=	2021-01-24 20:26:07.963325+03	t	ibystrova			dylan_@mail.ru	t	t	2021-01-24 20:25:21.865618+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: irinabystrova
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: irinabystrova
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: irinabystrova
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-01-24 20:26:18.942897+03	1	1 author	1	[{"added": {}}]	2	1
2	2021-01-24 20:26:24.500181+03	2	2 author	1	[{"added": {}}]	2	1
3	2021-01-24 20:26:31.474625+03	3	3 author	1	[{"added": {}}]	2	1
4	2021-01-24 20:26:44.222002+03	4	top	1	[{"added": {}}]	3	1
5	2021-01-24 20:26:49.100847+03	5	bottom	1	[{"added": {}}]	3	1
6	2021-01-24 20:27:09.289744+03	6	1 book	1	[{"added": {}}]	4	1
7	2021-01-24 20:27:24.625228+03	7	2 book	1	[{"added": {}}]	4	1
8	2021-01-24 20:27:34.726544+03	8	3 book	1	[{"added": {}}]	4	1
9	2021-01-24 20:27:44.455284+03	9	4 book	1	[{"added": {}}]	4	1
10	2021-01-24 20:31:04.018525+03	6	1 book	2	[{"changed": {"fields": ["Position"]}}]	4	1
11	2021-01-24 20:31:19.226467+03	10	5 book	1	[{"added": {}}]	4	1
12	2021-01-24 21:02:22.140475+03	10	5 book	2	[]	4	1
13	2021-01-27 10:39:08.192252+03	10	5 book	2	[{"changed": {"fields": ["Position"]}}]	4	1
14	2021-01-27 10:50:07.372036+03	6	1 book	2	[{"changed": {"fields": ["Position"]}}]	4	1
15	2021-01-27 10:50:13.115961+03	7	2 book	2	[{"changed": {"fields": ["Position"]}}]	4	1
16	2021-01-27 10:50:17.551299+03	10	5 book	2	[]	4	1
17	2021-01-27 10:50:30.285911+03	8	3 book	2	[{"changed": {"fields": ["Position"]}}]	4	1
18	2021-01-30 13:59:27.040573+03	1	Leo Tolstoy	2	[{"changed": {"fields": ["Name"]}}]	2	1
19	2021-01-30 14:00:01.574751+03	6	War and Peace	2	[{"changed": {"fields": ["Name"]}}]	4	1
20	2021-01-30 14:00:25.193141+03	7	Anna Karenina	2	[{"changed": {"fields": ["Name"]}}]	4	1
21	2021-01-30 14:01:03.530225+03	2	Stephen Hawking	2	[{"changed": {"fields": ["Name"]}}]	2	1
22	2021-01-30 14:01:25.391141+03	8	A Brief History of Time	2	[{"changed": {"fields": ["Name"]}}]	4	1
23	2021-01-30 14:01:51.361627+03	9	The Universe in a Nutshell	2	[{"changed": {"fields": ["Name"]}}]	4	1
24	2021-01-30 14:02:17.830255+03	10	Resurrection	2	[{"changed": {"fields": ["Name"]}}]	4	1
25	2021-01-30 14:02:52.695111+03	3	Guido van Rossum	2	[{"changed": {"fields": ["Name"]}}]	2	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: irinabystrova
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	shelves_app	modelwithname
2	shelves_app	author
3	shelves_app	shelf
4	shelves_app	book
5	admin	logentry
6	auth	permission
7	auth	group
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: irinabystrova
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-01-24 20:25:03.881505+03
2	auth	0001_initial	2021-01-24 20:25:03.926495+03
3	admin	0001_initial	2021-01-24 20:25:03.965602+03
4	admin	0002_logentry_remove_auto_add	2021-01-24 20:25:03.983531+03
5	admin	0003_logentry_add_action_flag_choices	2021-01-24 20:25:03.992925+03
6	contenttypes	0002_remove_content_type_name	2021-01-24 20:25:04.018431+03
7	auth	0002_alter_permission_name_max_length	2021-01-24 20:25:04.034028+03
8	auth	0003_alter_user_email_max_length	2021-01-24 20:25:04.0462+03
9	auth	0004_alter_user_username_opts	2021-01-24 20:25:04.062362+03
10	auth	0005_alter_user_last_login_null	2021-01-24 20:25:04.074917+03
11	auth	0006_require_contenttypes_0002	2021-01-24 20:25:04.079609+03
12	auth	0007_alter_validators_add_error_messages	2021-01-24 20:25:04.093226+03
13	auth	0008_alter_user_username_max_length	2021-01-24 20:25:04.11321+03
14	auth	0009_alter_user_last_name_max_length	2021-01-24 20:25:04.125413+03
15	auth	0010_alter_group_name_max_length	2021-01-24 20:25:04.144536+03
16	auth	0011_update_proxy_permissions	2021-01-24 20:25:04.156589+03
17	auth	0012_alter_user_first_name_max_length	2021-01-24 20:25:04.171857+03
18	sessions	0001_initial	2021-01-24 20:25:04.182035+03
19	shelves_app	0001_initial	2021-01-24 20:25:04.225698+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: irinabystrova
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
oqgs56imr1fdglnbl2z7ph7twmhvi89f	.eJxVjMsOwiAQAP-FsyFAeRSP3vsNzS67laqBpLQn478bkh70OjOZt5jh2PN8NN7mlcRVaHH5ZQjpyaULekC5V5lq2bcVZU_kaZucKvHrdrZ_gwwt963zJmrUaQhLtM4BRY7DEsiQcwE4sAI1MmmjyeOI6DV6hcoEaxVZEJ8v0803lA:1l3j9L:to9Juy5g_N-be2iVb_fYwsU8fFwHw8BQNgnFRQ7wfvo	2021-02-07 20:26:07.966288+03
\.


--
-- Data for Name: shelves_app_author; Type: TABLE DATA; Schema: public; Owner: irinabystrova
--

COPY public.shelves_app_author (modelwithname_ptr_id) FROM stdin;
1
2
3
\.


--
-- Data for Name: shelves_app_book; Type: TABLE DATA; Schema: public; Owner: irinabystrova
--

COPY public.shelves_app_book (modelwithname_ptr_id, "position", book_author_id, book_shelf_id) FROM stdin;
6	1	1	4
7	2	1	4
8	1	2	5
9	2	2	5
10	3	1	4
\.


--
-- Data for Name: shelves_app_modelwithname; Type: TABLE DATA; Schema: public; Owner: irinabystrova
--

COPY public.shelves_app_modelwithname (id, name) FROM stdin;
4	top
5	bottom
1	Leo Tolstoy
6	War and Peace
7	Anna Karenina
2	Stephen Hawking
8	A Brief History of Time
9	The Universe in a Nutshell
10	Resurrection
3	Guido van Rossum
\.


--
-- Data for Name: shelves_app_shelf; Type: TABLE DATA; Schema: public; Owner: irinabystrova
--

COPY public.shelves_app_shelf (modelwithname_ptr_id) FROM stdin;
4
5
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: irinabystrova
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: irinabystrova
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: irinabystrova
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: irinabystrova
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: irinabystrova
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: irinabystrova
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: irinabystrova
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 25, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: irinabystrova
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: irinabystrova
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- Name: shelves_app_modelwithname_id_seq; Type: SEQUENCE SET; Schema: public; Owner: irinabystrova
--

SELECT pg_catalog.setval('public.shelves_app_modelwithname_id_seq', 10, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: shelves_app_author shelves_app_author_pkey; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.shelves_app_author
    ADD CONSTRAINT shelves_app_author_pkey PRIMARY KEY (modelwithname_ptr_id);


--
-- Name: shelves_app_book shelves_app_book_pkey; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.shelves_app_book
    ADD CONSTRAINT shelves_app_book_pkey PRIMARY KEY (modelwithname_ptr_id);


--
-- Name: shelves_app_modelwithname shelves_app_modelwithname_pkey; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.shelves_app_modelwithname
    ADD CONSTRAINT shelves_app_modelwithname_pkey PRIMARY KEY (id);


--
-- Name: shelves_app_shelf shelves_app_shelf_pkey; Type: CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.shelves_app_shelf
    ADD CONSTRAINT shelves_app_shelf_pkey PRIMARY KEY (modelwithname_ptr_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: irinabystrova
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: irinabystrova
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: irinabystrova
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: irinabystrova
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: irinabystrova
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: irinabystrova
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: irinabystrova
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: irinabystrova
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: irinabystrova
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: irinabystrova
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: irinabystrova
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: irinabystrova
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: irinabystrova
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: shelves_app_book_book_author_id_e95c453b; Type: INDEX; Schema: public; Owner: irinabystrova
--

CREATE INDEX shelves_app_book_book_author_id_e95c453b ON public.shelves_app_book USING btree (book_author_id);


--
-- Name: shelves_app_book_book_shelf_id_26c56061; Type: INDEX; Schema: public; Owner: irinabystrova
--

CREATE INDEX shelves_app_book_book_shelf_id_26c56061 ON public.shelves_app_book USING btree (book_shelf_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shelves_app_author shelves_app_author_modelwithname_ptr_id_de2b2eed_fk_shelves_a; Type: FK CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.shelves_app_author
    ADD CONSTRAINT shelves_app_author_modelwithname_ptr_id_de2b2eed_fk_shelves_a FOREIGN KEY (modelwithname_ptr_id) REFERENCES public.shelves_app_modelwithname(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shelves_app_book shelves_app_book_book_author_id_e95c453b_fk_shelves_a; Type: FK CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.shelves_app_book
    ADD CONSTRAINT shelves_app_book_book_author_id_e95c453b_fk_shelves_a FOREIGN KEY (book_author_id) REFERENCES public.shelves_app_author(modelwithname_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shelves_app_book shelves_app_book_book_shelf_id_26c56061_fk_shelves_a; Type: FK CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.shelves_app_book
    ADD CONSTRAINT shelves_app_book_book_shelf_id_26c56061_fk_shelves_a FOREIGN KEY (book_shelf_id) REFERENCES public.shelves_app_shelf(modelwithname_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shelves_app_book shelves_app_book_modelwithname_ptr_id_7adf8d31_fk_shelves_a; Type: FK CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.shelves_app_book
    ADD CONSTRAINT shelves_app_book_modelwithname_ptr_id_7adf8d31_fk_shelves_a FOREIGN KEY (modelwithname_ptr_id) REFERENCES public.shelves_app_modelwithname(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shelves_app_shelf shelves_app_shelf_modelwithname_ptr_id_31d6c72d_fk_shelves_a; Type: FK CONSTRAINT; Schema: public; Owner: irinabystrova
--

ALTER TABLE ONLY public.shelves_app_shelf
    ADD CONSTRAINT shelves_app_shelf_modelwithname_ptr_id_31d6c72d_fk_shelves_a FOREIGN KEY (modelwithname_ptr_id) REFERENCES public.shelves_app_modelwithname(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

