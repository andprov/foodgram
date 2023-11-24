--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE django;




--
-- Drop roles
--

DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md53175bce1d3201d16594cebf9d7eb3f9d';






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.12 (Debian 13.12-1.pgdg120+1)
-- Dumped by pg_dump version 13.12 (Debian 13.12-1.pgdg120+1)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO postgres;

\connect template1

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

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "django" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.12 (Debian 13.12-1.pgdg120+1)
-- Dumped by pg_dump version 13.12 (Debian 13.12-1.pgdg120+1)

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

--
-- Name: django; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE django WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE django OWNER TO postgres;

\connect django

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO postgres;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: recipes_favorite; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipes_favorite (
    id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.recipes_favorite OWNER TO postgres;

--
-- Name: recipes_favorite_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recipes_favorite_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_favorite_id_seq OWNER TO postgres;

--
-- Name: recipes_favorite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recipes_favorite_id_seq OWNED BY public.recipes_favorite.id;


--
-- Name: recipes_ingredient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipes_ingredient (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    measurement_unit character varying(200) NOT NULL
);


ALTER TABLE public.recipes_ingredient OWNER TO postgres;

--
-- Name: recipes_ingredient_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recipes_ingredient_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_ingredient_id_seq OWNER TO postgres;

--
-- Name: recipes_ingredient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recipes_ingredient_id_seq OWNED BY public.recipes_ingredient.id;


--
-- Name: recipes_recipe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipes_recipe (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    text text NOT NULL,
    image character varying(100) NOT NULL,
    cooking_time smallint NOT NULL,
    author_id bigint NOT NULL,
    CONSTRAINT recipes_recipe_cooking_time_check CHECK ((cooking_time >= 0))
);


ALTER TABLE public.recipes_recipe OWNER TO postgres;

--
-- Name: recipes_recipe_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recipes_recipe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_recipe_id_seq OWNER TO postgres;

--
-- Name: recipes_recipe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recipes_recipe_id_seq OWNED BY public.recipes_recipe.id;


--
-- Name: recipes_recipe_ingredient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipes_recipe_ingredient (
    id bigint NOT NULL,
    amount smallint NOT NULL,
    ingredient_id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    CONSTRAINT recipes_recipe_ingredient_amount_check CHECK ((amount >= 0))
);


ALTER TABLE public.recipes_recipe_ingredient OWNER TO postgres;

--
-- Name: recipes_recipe_ingredient_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recipes_recipe_ingredient_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_recipe_ingredient_id_seq OWNER TO postgres;

--
-- Name: recipes_recipe_ingredient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recipes_recipe_ingredient_id_seq OWNED BY public.recipes_recipe_ingredient.id;


--
-- Name: recipes_recipe_tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipes_recipe_tags (
    id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    tag_id bigint NOT NULL
);


ALTER TABLE public.recipes_recipe_tags OWNER TO postgres;

--
-- Name: recipes_recipe_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recipes_recipe_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_recipe_tags_id_seq OWNER TO postgres;

--
-- Name: recipes_recipe_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recipes_recipe_tags_id_seq OWNED BY public.recipes_recipe_tags.id;


--
-- Name: recipes_shopping_cart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipes_shopping_cart (
    id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.recipes_shopping_cart OWNER TO postgres;

--
-- Name: recipes_shopping_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recipes_shopping_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_shopping_cart_id_seq OWNER TO postgres;

--
-- Name: recipes_shopping_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recipes_shopping_cart_id_seq OWNED BY public.recipes_shopping_cart.id;


--
-- Name: recipes_subscribe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipes_subscribe (
    id bigint NOT NULL,
    author_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.recipes_subscribe OWNER TO postgres;

--
-- Name: recipes_subscribe_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recipes_subscribe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_subscribe_id_seq OWNER TO postgres;

--
-- Name: recipes_subscribe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recipes_subscribe_id_seq OWNED BY public.recipes_subscribe.id;


--
-- Name: recipes_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipes_tag (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    color character varying(7) NOT NULL,
    slug character varying(200) NOT NULL
);


ALTER TABLE public.recipes_tag OWNER TO postgres;

--
-- Name: recipes_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recipes_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_tag_id_seq OWNER TO postgres;

--
-- Name: recipes_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recipes_tag_id_seq OWNED BY public.recipes_tag.id;


--
-- Name: recipes_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipes_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    username character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL
);


ALTER TABLE public.recipes_user OWNER TO postgres;

--
-- Name: recipes_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipes_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.recipes_user_groups OWNER TO postgres;

--
-- Name: recipes_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recipes_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_user_groups_id_seq OWNER TO postgres;

--
-- Name: recipes_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recipes_user_groups_id_seq OWNED BY public.recipes_user_groups.id;


--
-- Name: recipes_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recipes_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_user_id_seq OWNER TO postgres;

--
-- Name: recipes_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recipes_user_id_seq OWNED BY public.recipes_user.id;


--
-- Name: recipes_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipes_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.recipes_user_user_permissions OWNER TO postgres;

--
-- Name: recipes_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recipes_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: recipes_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recipes_user_user_permissions_id_seq OWNED BY public.recipes_user_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: recipes_favorite id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_favorite ALTER COLUMN id SET DEFAULT nextval('public.recipes_favorite_id_seq'::regclass);


--
-- Name: recipes_ingredient id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_ingredient ALTER COLUMN id SET DEFAULT nextval('public.recipes_ingredient_id_seq'::regclass);


--
-- Name: recipes_recipe id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_recipe ALTER COLUMN id SET DEFAULT nextval('public.recipes_recipe_id_seq'::regclass);


--
-- Name: recipes_recipe_ingredient id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_recipe_ingredient ALTER COLUMN id SET DEFAULT nextval('public.recipes_recipe_ingredient_id_seq'::regclass);


--
-- Name: recipes_recipe_tags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_recipe_tags ALTER COLUMN id SET DEFAULT nextval('public.recipes_recipe_tags_id_seq'::regclass);


--
-- Name: recipes_shopping_cart id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_shopping_cart ALTER COLUMN id SET DEFAULT nextval('public.recipes_shopping_cart_id_seq'::regclass);


--
-- Name: recipes_subscribe id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_subscribe ALTER COLUMN id SET DEFAULT nextval('public.recipes_subscribe_id_seq'::regclass);


--
-- Name: recipes_tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_tag ALTER COLUMN id SET DEFAULT nextval('public.recipes_tag_id_seq'::regclass);


--
-- Name: recipes_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_user ALTER COLUMN id SET DEFAULT nextval('public.recipes_user_id_seq'::regclass);


--
-- Name: recipes_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_user_groups ALTER COLUMN id SET DEFAULT nextval('public.recipes_user_groups_id_seq'::regclass);


--
-- Name: recipes_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.recipes_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add Token	6	add_token
22	Can change Token	6	change_token
23	Can delete Token	6	delete_token
24	Can view Token	6	view_token
25	Can add token	7	add_tokenproxy
26	Can change token	7	change_tokenproxy
27	Can delete token	7	delete_tokenproxy
28	Can view token	7	view_tokenproxy
29	Can add Пользователь	8	add_user
30	Can change Пользователь	8	change_user
31	Can delete Пользователь	8	delete_user
32	Can view Пользователь	8	view_user
33	Can add Ингредиент	9	add_ingredient
34	Can change Ингредиент	9	change_ingredient
35	Can delete Ингредиент	9	delete_ingredient
36	Can view Ингредиент	9	view_ingredient
37	Can add Рецепт	10	add_recipe
38	Can change Рецепт	10	change_recipe
39	Can delete Рецепт	10	delete_recipe
40	Can view Рецепт	10	view_recipe
41	Can add Тег	11	add_tag
42	Can change Тег	11	change_tag
43	Can delete Тег	11	delete_tag
44	Can view Тег	11	view_tag
45	Can add Подписка	12	add_subscribe
46	Can change Подписка	12	change_subscribe
47	Can delete Подписка	12	delete_subscribe
48	Can view Подписка	12	view_subscribe
49	Can add Список покупок	13	add_shoppingcart
50	Can change Список покупок	13	change_shoppingcart
51	Can delete Список покупок	13	delete_shoppingcart
52	Can view Список покупок	13	view_shoppingcart
53	Can add Ингредиент в рецепте	14	add_recipeingredient
54	Can change Ингредиент в рецепте	14	change_recipeingredient
55	Can delete Ингредиент в рецепте	14	delete_recipeingredient
56	Can view Ингредиент в рецепте	14	view_recipeingredient
57	Can add Избранное	15	add_favorite
58	Can change Избранное	15	change_favorite
59	Can delete Избранное	15	delete_favorite
60	Can view Избранное	15	view_favorite
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
c19dcca889a25b2eaae1b633ace43726f4458de9	2023-11-02 23:15:02.816105+00	1
6ae08c6a000b8bcd82436a1de9222192d3c3bdaa	2023-11-03 22:57:56.677983+00	7
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2023-11-02 23:20:43.137237+00	2	ivan	1	[{"added": {}}]	8	1
2	2023-11-02 23:21:05.451626+00	3	petr	1	[{"added": {}}]	8	1
3	2023-11-02 23:21:41.715567+00	4	sidr	1	[{"added": {}}]	8	1
4	2023-11-02 23:22:56.901692+00	4	Мясо	1	[{"added": {}}]	11	1
5	2023-11-02 23:23:28.28246+00	5	Овощи	1	[{"added": {}}]	11	1
6	2023-11-02 23:24:02.691123+00	6	Рыба	1	[{"added": {}}]	11	1
7	2023-11-03 22:30:00.643064+00	2	ivan	2	[{"changed": {"fields": ["Password"]}}]	8	1
8	2023-11-03 22:30:19.236413+00	2	ivan	3		8	1
9	2023-11-03 22:30:19.240324+00	3	petr	3		8	1
10	2023-11-03 22:30:19.244041+00	4	sidr	3		8	1
11	2023-11-03 22:40:39.128943+00	6	petr	3		8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	authtoken	token
7	authtoken	tokenproxy
8	recipes	user
9	recipes	ingredient
10	recipes	recipe
11	recipes	tag
12	recipes	subscribe
13	recipes	shoppingcart
14	recipes	recipeingredient
15	recipes	favorite
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2023-11-02 23:14:43.066189+00
2	contenttypes	0002_remove_content_type_name	2023-11-02 23:14:43.081529+00
3	auth	0001_initial	2023-11-02 23:14:43.126536+00
4	auth	0002_alter_permission_name_max_length	2023-11-02 23:14:43.133041+00
5	auth	0003_alter_user_email_max_length	2023-11-02 23:14:43.139843+00
6	auth	0004_alter_user_username_opts	2023-11-02 23:14:43.148179+00
7	auth	0005_alter_user_last_login_null	2023-11-02 23:14:43.155334+00
8	auth	0006_require_contenttypes_0002	2023-11-02 23:14:43.157583+00
9	auth	0007_alter_validators_add_error_messages	2023-11-02 23:14:43.165977+00
10	auth	0008_alter_user_username_max_length	2023-11-02 23:14:43.171919+00
11	auth	0009_alter_user_last_name_max_length	2023-11-02 23:14:43.176884+00
12	auth	0010_alter_group_name_max_length	2023-11-02 23:14:43.181781+00
13	auth	0011_update_proxy_permissions	2023-11-02 23:14:43.186219+00
14	auth	0012_alter_user_first_name_max_length	2023-11-02 23:14:43.190323+00
15	recipes	0001_initial	2023-11-02 23:14:43.445802+00
16	admin	0001_initial	2023-11-02 23:14:43.490135+00
17	admin	0002_logentry_remove_auto_add	2023-11-02 23:14:43.511769+00
18	admin	0003_logentry_add_action_flag_choices	2023-11-02 23:14:43.525908+00
19	authtoken	0001_initial	2023-11-02 23:14:43.545435+00
20	authtoken	0002_auto_20160226_1747	2023-11-02 23:14:43.571241+00
21	authtoken	0003_tokenproxy	2023-11-02 23:14:43.573643+00
22	sessions	0001_initial	2023-11-02 23:14:43.585822+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
s1xpa3j515g3vmvm68tv6mftu0n1vlrg	.eJxVjEEOgjAQRe_StWnoMEzBpXvPQGY6raCmTSisjHdXEha6_e-9_zIjb-s0bjUu46zmbJw5_W7C4RHzDvTO-VZsKHldZrG7Yg9a7bVofF4O9-9g4jp960GUNFDXcJ-w823fDJ4JnGAUhw4hOQBKHUPClhFEByIGCF7JRwHz_gDQKjdo:1qygtv:4uo6I7SaNUWjdSp1TMcHKXB57bzM586ZKEjV_0H0ogs	2023-11-16 23:14:59.693301+00
7f4er37rbctuqyzjroizwdcltw69yo4e	.eJxVjEEOgjAQRe_StWnoMEzBpXvPQGY6raCmTSisjHdXEha6_e-9_zIjb-s0bjUu46zmbJw5_W7C4RHzDvTO-VZsKHldZrG7Yg9a7bVofF4O9-9g4jp960GUNFDXcJ-w823fDJ4JnGAUhw4hOQBKHUPClhFEByIGCF7JRwHz_gDQKjdo:1qz2f0:n8hnYcjOsxOT6meSiOq6y0l_Kw1UAHDNH9DiY8w9AAU	2023-11-17 22:29:02.715533+00
\.


--
-- Data for Name: recipes_favorite; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipes_favorite (id, recipe_id, user_id) FROM stdin;
2	3	7
3	6	7
4	7	8
5	1	8
6	5	8
7	10	7
8	8	7
\.


--
-- Data for Name: recipes_ingredient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipes_ingredient (id, name, measurement_unit) FROM stdin;
1	абрикосовое варенье	г
2	абрикосовое пюре	г
3	абрикосовый джем	г
4	абрикосовый сок	стакан
5	абрикосы	г
6	абрикосы консервированные	г
7	авокадо	по вкусу
8	агава сироп	г
9	агар-агар	г
10	аграм	г
11	аджика	г
12	аджика зеленая	г
13	айва	по вкусу
14	айвовое пюре	г
15	айран	г
16	айсинг	г
17	акула стейки	г
18	алкоголь	стакан
19	алкоголь крепкий	ст. л.
20	алыча	г
21	альбухара	шт.
22	альмехи	г
23	амарантовая мука	г
24	ананасовый сироп	г
25	ананасовый сок	г
26	ананасы	г
27	ананасы вяленые	г
28	ананасы консервированные	по вкусу
29	анис	по вкусу
30	анис звездочки	г
31	анисовый ликер	мл
32	анис семена	г
33	анчоусы	г
34	апельсиновая вода	г
35	апельсиновая цедра	г
36	апельсиновая эссенция	ч. л.
37	апельсиновое варенье	г
38	апельсиновые цукаты	г
39	апельсиновый джем	г
40	апельсиновый джем с имбирем	г
41	апельсиновый ликер	г
42	апельсиновый сироп	стакан
43	апельсиновый сок	по вкусу
44	апельсиновый сок свежевыжатый	г
45	апельсиновый уксус	ст. л.
46	апельсиновый экстракт	ч. л.
47	апельсины	г
48	апельсины красные	шт.
49	апельсины крупные	шт.
50	арахис	г
51	арахис жареный	г
52	арахисовая паста	г
53	арахисовое масло	г
54	арахис соленый	г
55	арбузная мякоть	г
56	арбузы	г
57	аргановое масло	г
58	аришта	г
59	ароматизатор	г
60	ароматизатор "ананас"	по вкусу
61	ароматизатор "вишня"	капля
62	ароматизатор "малина"	капля
63	ароматизатор "ром"	г
64	артишоки	г
65	артишоки в масле	г
66	артишоки маринованные	г
67	аспирин	шт.
68	ассорти мясное	г
69	ассорти овощное	г
70	ассорти фруктовое	г
71	ассорти ягодное	г
72	аши	г
73	багет	г
74	багет вчерашний	г
75	багет мини	г
76	бадан	звездочка
77	бадьян	щепотка
78	базилик лимонный	г
79	базилик свежий	г
80	базилик сушеный	г
81	базилик тайский	горсть
82	базилик фиолетовый	г
83	баклажаны	по вкусу
84	баклажаны мини	г
85	баклажаны тайские	г
86	балык	г
87	бальзам	г
88	бальзамический крем	стакан
89	бальзамический соус	ст. л.
90	бальзамический уксус	стакан
91	бальзам рижский черный	ст. л.
92	бамия	г
93	банановое пюре	г
94	банановые чипсы	горсть
95	банановый зеленый сироп	мл
96	банановый ликер	мл
97	бананы	г
98	бананы мини	г
99	барабулька	г
100	бараний ливер	г
101	бараний окорок на косточке	кусок
102	бараний фарш	г
103	баранина	г
104	баранки	г
105	бараньи антрекоты	кг
106	бараньи голяшки	шт.
107	бараньи потроха	кг
108	бараньи ребрышки	шт.
109	баранья лопатка	кг
110	баранья нога	г
111	баранья печень	г
112	барбарис	г
113	барбарис вяленый	ст. л.
114	барбарис молотый	г
115	бастурма	г
116	батат	г
117	батон	г
118	батончики шоколадные	г
119	безе	г
120	бекон	по вкусу
121	бекон варено-копченый	г
122	бекон сырокопченый	г
123	белорыбица	г
124	бирнель	мл
125	бисквик смесь готовая	пакет
126	бисквит	г
127	бисквитная крошка	г
128	бисквитный корж	г
129	бисквитный рулет	г
130	бисквит шоколадный	г
131	бифштекс	шт.
132	блинная мука	г
133	блины готовые	г
134	блины овсяные	шт.
135	бобовые ростки	г
136	бобы	г
137	бобы мунг пророщенные	г
138	бобы тонка	шт.
139	ботарга	г
140	брезаола	г
141	бренди	г
142	брокколи замороженная	г
143	брокколи свежая	г
144	брусника замороженная	г
145	брусника свежая	г
146	брусника сушеная	г
147	брусничное варенье	г
148	брусничный соус	г
149	брынза	по вкусу
150	брынза сербская	г
151	брюква	г
152	буженина	г
153	бузина сироп	ст. л.
154	букет гарни	пучок
155	булгур	г
156	булка	кусок
157	булка белая	г
158	булка сдобная	г
159	булочки	г
160	булочки белые черствые	г
161	булочки бриошь	шт.
162	булочки вчерашние	шт.
163	булочки для гамбургеров	шт.
164	булочки зерновые	шт.
165	булочки ржаные	кусок
166	булочки с кунжутом	шт.
167	бульон	г
168	бульонные кубики	г
169	бурбон	г
170	Буррата	г
171	буряк	г
172	бусинки кондитерские	ч. л.
173	бусинки кондитерские серебряные	по вкусу
174	бычий хвост	г
175	ванилин	г
176	ваниль в стручках	г
177	ванильная настойка	ст. л.
178	ванильная эссенция	г
179	ванильный порошок	г
180	ванильный сироп	г
181	ванильный экстракт	по вкусу
182	варенье	г
183	васаби	г
184	вафельная крошка	г
185	вафельные коржи	г
186	вафельные трубочки	г
187	вафли	г
188	вафли шоколадные	г
189	вермишель	г
190	вермишель яичная	г
191	вермут	г
192	вермут белый	г
193	вермут сухой	г
194	ветчина	г
195	ветчина вареная	г
196	ветчина варено-копченая	кусок
197	ветчина копченая	г
198	ветчина пармская	г
199	ветчина сырокопченая	г
200	вешенки	г
201	винегрет	г
202	винный камень	щепотка
203	винный уксус	г
204	винный уксус белый	г
205	винный уксус красный	ч. л.
206	винный уксус на чесноке	ч. л.
207	винный уксус на эстрагоне	ст. л.
208	вино белое	по вкусу
209	вино белое полусладкое	г
210	вино белое полусухое	г
211	вино белое сладкое	г
212	вино белое столовое	стакан
213	вино белое сухое	г
214	виноград	г
215	виноград без косточек	г
216	виноград белый	г
217	виноград изабелла	кг
218	виноградное желе	ст. л.
219	виноградные листья	г
220	виноградные листья маринованные	г
221	виноградные листья молодые	шт.
222	виноградный сок	г
223	виноградный сок осветленный	ч. л.
224	виноград синий	г
225	виноград черный	г
226	вино десертное	г
227	вино игристое сухое	г
228	вино красное	г
229	вино красное полусладкое	г
230	вино красное полусухое	г
231	вино красное сладкое	г
232	вино красное сухое	г
233	вино крепленое	г
234	вино розовое полусладкое	ст. л.
235	вино розовое полусухое	г
236	виски	г
237	витамин C в порошке	г
238	вишневая настойка	мл
239	вишневое варенье	г
240	вишневые листья	г
241	вишневый джем	г
242	вишневый ликер	по вкусу
243	вишневый сироп	стакан
244	вишневый сок	г
245	вишня	г
246	вишня вяленая	г
247	вишня замороженная	г
248	вишня засахаренная кондитерская	шт.
249	вишня коктейльная	г
250	вишня мараскино	шт.
251	вишня, протертая с сахаром	г
252	вода	г
253	вода минеральная без газа	стакан
254	вода минеральная газированная	г
255	водка	г
256	водка анисовая	ч. л.
257	водоросли	г
258	вустерширский соус	г
259	галангал корень	долька
260	галеты	г
261	гамбургер	г
262	ганаш	г
263	гарам масала	г
264	гарнир	г
265	гаспачо	г
266	гвоздика	г
267	гвоздика молотая	по вкусу
268	герань листья	г
269	геркулес	г
270	глазурь	г
271	глазурь белая	г
272	глазурь готовая	по вкусу
273	глазурь черная	по вкусу
274	глазурь шоколадная белая	г
275	глутамат натрия	г
276	глюкоза	г
277	глюкоза сироп	г
278	говядина	г
279	говядина на кости	г
280	говяжий фарш	по вкусу
281	говяжий язык	г
282	говяжье сердце	по вкусу
283	говяжьи бифштексы	г
284	говяжьи голяшки	г
285	говяжьи легкие	г
286	говяжьи ребра	г
287	говяжьи стейки рибай	г
288	говяжья вырезка	шт.
289	говяжья грудинка	кг
290	говяжья лопатка	г
291	говяжья мозговая кость	шт.
292	говяжья мякоть	кг
293	говяжья печень	шт.
294	говяжья черева	г
295	говяжья шейка	кг
296	годжи	г
297	голец филе	шт.
298	голубика	г
299	голубика замороженная	г
300	голубь	г
301	горбуша	по вкусу
302	горбуша в собственном соку	банка
303	горбуша филе	г
304	горгонзола	г
305	горгонзола пиканте	г
306	горох	г
307	горох колотый	г
308	гороховые ростки	горсть
309	гороховый суп	г
310	горошек зеленый	г
311	горошек зеленый замороженный	г
312	горошек зеленый консервированный	г
313	горошек стручковый свежий	г
314	горчица	г
315	горчица дижонская	г
316	горчица дижонская с медом	г
317	горчица желтая семена	г
318	горчица острая	г
319	горчица русская	ст. л.
320	горчица семена	г
321	горчица с зернами	г
322	горчица сухая	г
323	горчица французская	г
324	горчица цитрусовая	г
325	горчичное масло	г
326	горчичный порошок	г
327	грана падано	ст. л.
328	гранатные зерна	г
329	гранатовая паста	ст. л.
330	гранатовый сироп	г
331	гранатовый сок	г
332	гранатовый сок свежевыжатый	мл
333	гранатовый соус	ч. л.
334	гранаты	г
335	гранита	г
336	гранола с орехами	г
337	граппа	ч. л.
338	гратен	кг
339	грейпфрутовая цедра	г
340	грейпфрутовый сок	г
341	грейпфруты	г
342	грейпфруты розовые	г
343	гренадин	г
344	гренки	г
345	грецкие орехи	г
346	грецкие орехи рубленые	г
347	гречневая крупа	г
348	гречневая крупа зеленая	ст. л.
349	гречневая лапша соба	г
350	гречневая мука	г
351	гречневое молоко	стакан
352	гречневые хлопья	г
353	грибы	г
354	грибы белые	г
355	грибы белые замороженные	г
356	грибы белые маринованные	г
357	грибы белые сухие	г
358	грибы замороженные	г
359	грибы замороженные (опята и маслята)	г
360	грибы лесные	г
361	грибы маринованные	г
362	грибы свежие	г
363	грибы соленые	г
364	грибы соломенные консервированные	шт.
365	грибы сухие	г
366	грибы шиитаке	г
367	грибы шиитаке сухие	г
368	гриль	г
369	гриссини	г
370	грудинка	г
371	грудинка варено-копченая	г
372	грудинка копченая	по вкусу
373	грушевое пюре	г
374	грушевый ликер	мл
375	грушевый сироп	мл
376	грушевый сок	г
377	грушевый уксус	ст. л.
378	груши	по вкусу
379	груши вяленые	г
380	грюйер	г
381	гуава	шт.
382	гуанчиале	г
383	гурьевская каша	г
384	гусиная грудка копченая	г
385	гусиная печень	г
386	гусиный жир	ст. л.
387	гусь	г
388	гусь тушка	кг
389	дайкон	г
390	детское питание	г
391	джем	г
392	джин	г
393	джусай	г
394	диоксид титана	г
395	долма	г
396	дорада	шт.
397	дорада потрошеная с головой	шт.
398	дорада с головой	шт.
399	дорада тушка	шт.
400	драже	г
401	дрожжи домашние	г
402	дрожжи свежие	г
403	дрожжи сухие	по вкусу
404	дубовая кора	г
405	душица	г
406	дыня	г
407	ежевика	г
408	ежевика замороженная	г
409	ерш	г
410	ёрш-носарь	шт.
411	желатин	г
412	желатин листовой	по вкусу
413	желе	г
414	желе для торта	упаковка
415	желирующее вещество	упаковка
416	желирующий сахар	г
417	женьшень	г
418	жидкий дым	г
419	жимолость	г
420	жир	г
421	жир вытопленный	стакан
422	жир кулинарный	г
423	жир растительный	г
424	заатар	щепотка
425	завтрак сухой	г
426	завтрак сухой подушечки	г
427	загуститель для сливок	г
428	зайчатина	г
429	закваска	пакет
430	закваска вечная	г
431	заменитель сахара	по вкусу
432	заменитель сахара стевия	г
433	заправка для салатов готовая	г
434	зверобой	по вкусу
435	зелень	г
436	зелень рубленая	г
437	земляника	по вкусу
438	земляника замороженная	г
439	зефир	г
440	зира	г
441	злаковые хлопья	г
442	зубатка	г
443	зубатка филе	г
444	изолят соевого протеина	г
445	изюм	г
446	изюм без косточек	г
447	изюм белый	г
448	изюм черный	г
449	икра	г
450	икра вяленой рыбы	г
451	икра горбуши зернистая	г
452	икра красная	г
453	икра красной рыбы мелкая	г
454	икра летучей рыбы	г
455	икра лосося	г
456	икра мойвы	г
457	икра палтуса	г
458	икра судака	г
459	икра черная	г
460	имбирное варенье	г
461	имбирное печенье	по вкусу
462	имбирные цукаты	ст. л.
463	имбирь	г
464	имбирь засахаренный	г
465	имбирь корень	г
466	имбирь маринованный	г
467	имбирь молотый	г
468	индейка	г
469	индейка голень	г
470	индейка грудка	г
471	индейка копченая	г
472	индейка тушка	шт.
473	индейка фарш	г
474	индейка филе	г
475	индоутка	шт.
476	индюшачья печень	г
477	инжир	г
478	инжир свежий	г
479	инжир сушеный	г
480	ирга	г
481	ириски	г
482	итальянские травы	г
483	йогурт	г
484	йогурт греческий	г
485	йогурт жирный	г
486	йогурт козий	г
487	йогурт натуральный	г
488	йогурт нежирный	г
489	йогурт обезжиренный	г
490	йогурт фруктовый	г
491	кабачки	г
492	кабачки замороженные	г
493	кабачки молодые	г
494	каджунская смесь специй	ст. л.
495	какао	горсть
496	какао-бобы	г
497	какао-масло	г
498	какао-порошок	по вкусу
499	какао-порошок обезжиренный	г
500	какао сгущенное	банка
501	калина	по вкусу
502	калина протертая	г
503	калинджи семена	ч. л.
504	кальвадос	г
505	кальмары	г
506	кальмары вареные	г
507	кальмары замороженные	г
508	кальмары консервированные	г
509	кальмары филе	шт.
510	камамбер	упаковка
511	камбала	г
512	камбала филе	г
513	кампари	мл
514	кандурин золотой	ч. л.
515	каннеллони	г
516	капеллини	г
517	каперсы	г
518	каперсы в винном уксусе	г
519	каперсы маринованные	г
520	капуста белокочанная	г
521	капуста брюссельская	г
522	капуста брюссельская замороженная	г
523	капуста кале	г
524	капуста квашеная	по вкусу
525	капуста кольраби	г
526	капуста краснокочанная	г
527	капуста морская	по вкусу
528	капуста морская замороженная	г
529	капуста морская сушеная	г
530	капуста пекинская	г
531	капуста савойская	г
532	капуста цветная	г
533	капуста цветная замороженная	г
534	капустный рассол	г
535	капучино	г
536	каракатица	г
537	каракатица очищенная	г
538	карамбола	г
539	карамель	мл
540	карамельный соус	г
541	карамель с начинкой	г
542	карамель соленая	г
543	карась	г
544	карбонад	г
545	кардамон	г
546	кардамон зерна	ч. л.
547	кардамон молотый	г
548	кардамон стручки	шт.
549	каркаде	г
550	карп	г
551	карп зеркальный	кг
552	карп филе	кг
553	карри	г
554	карри листья	г
555	карри паста	пакет
556	картофель	г
557	картофель вареный	г
558	картофель вареный в мундире	г
559	картофель молодой	г
560	картофельное пюре	по вкусу
561	картофельные ньокки	г
562	картофельные хлопья	г
563	картофельные чипсы	г
564	картофельный крахмал	г
565	картофельный отвар	г
566	картофельный хэш замороженный	г
567	картофель печеный	г
568	катык	г
569	каффир-лайм листья	по вкусу
570	каша	г
571	каша для детского питания	г
572	каштановая мука	г
573	каштановый крем	г
574	каштаны	г
575	каштаны вареные	г
576	каштаны консервированные	г
577	каштаны очищенные	г
578	квас	г
579	квасное сусло	г
580	квасной концентрат сухой	упаковка
581	квас хлебный	г
582	кедровая мука	г
583	кедровые орехи	г
584	кедровые орехи жареные	г
585	кета	г
586	кетчуп острый	по вкусу
587	кетчуп томатный	г
588	кетчуп тосканский	ст. л.
589	кетчуп шашлычный	г
590	кефаль	г
591	кефир	по вкусу
592	кефир 1%	г
593	кефир 2,5%	г
594	кефир 3,2%	г
595	кефир обезжиренный	г
596	кешью	г
597	кивано	г
598	киви	кг
599	киви желе	г
600	кижуч	г
601	кижуч горячего копчения филе	г
602	кизил	г
603	килька	г
604	кимчи	г
605	кинза свежая	зубчик
606	кинза сушеная	г
607	киноа	г
608	киноа молотая	г
609	кипяток	г
610	кирш	ст. л.
611	кисель	г
612	кисель сухой	г
613	кисломолочный напиток Тан	мл
614	кишки	г
615	клейковина	г
616	клементины	г
617	кленовый сироп	г
618	клубника	г
619	клубника в сиропе	г
620	клубника замороженная	г
621	клубника, протертая с сахаром	г
622	клубника сушеная	г
623	клубничное варенье	г
624	клубничное желе	упаковка
625	клубничное пюре	г
626	клубничный джем	г
627	клубничный джем густой	мл
628	клубничный компот	стакан
629	клубничный ликер	г
630	клубничный сироп	г
631	клюква	г
632	клюква вяленая	г
633	клюква замороженная	г
634	клюква, протертая с сахаром	г
635	клюквенное варенье	г
636	клюквенный джем	г
637	клюквенный морс	ст. л.
638	клюквенный сироп	г
639	клюквенный соус	г
640	козлиная печень	г
641	козлятина молодая	кг
642	кока-кола	ст. л.
643	кокосовая вода	стакан
644	кокосовая мука	ст. л.
645	кокосовая стружка	г
646	кокосовая стружка цветная	г
647	кокосовое масло	мл
648	кокосовое молоко	г
649	кокосовые сливки	г
650	кокосовый ликер	ст. л.
651	кокосовый экстракт	г
652	кокосы	г
653	кола	г
654	колбаса	г
655	колбаса вареная	г
656	колбаса варено-копченая	г
657	колбаса копченая	г
658	колбаса кровяная	г
659	колбаса полукопченая	г
660	колбаса сырокопченая	г
661	колбаска свиная свежая (salsiccia)	шт.
662	колбаски	г
663	колбаски для жарки	г
664	колбаски домашние	шт.
665	колбаски охотничьи	г
666	колбаски сырокопченые	шт.
667	компот	г
668	конопляное масло	ст. л.
669	конопля семена	г
670	конфеты	по вкусу
671	конфеты M&M’s	г
672	конфеты жевательные лакричные	г
673	конфеты Коровка	г
674	конфеты Трюфель	г
675	конфитюр	по вкусу
676	конфитюрка	упаковка
677	коньяк	г
678	копчености	г
679	коренья	по вкусу
680	кориандр	г
681	кориандр зелень	г
682	кориандр молотый	г
683	кориандр семена	г
684	коринка	ст. л.
685	корица	г
686	корица молотая	г
687	корнишоны	г
688	корнишоны маринованые	г
689	корюшка	г
690	корюшка горячего копчения	г
691	кости	г
692	кости мозговые	г
693	кость сахарная	г
694	кофе в зернах	стакан
695	кофе зеленый	г
696	кофейные зерна в шоколаде	г
697	кофейный ликер	г
698	кофейный ликер Kahlua	мл
699	кофейный напиток	мл
700	кофейный сироп	г
701	кофейный экстракт	мл
702	кофе молотый	ст. л.
703	кофе растворимый	г
704	кофе свежесваренный	г
705	кофе черный	г
706	кофе эспрессо	стакан
707	крабовое мясо	г
708	крабовые палочки	по вкусу
709	краб снежный	по вкусу
710	крабы	г
711	крапива	г
712	краситель-гель пищевой	шт.
713	краситель пищевой	г
714	краситель пищевой вишневый	щепотка
715	краситель пищевой желтый	г
716	краситель пищевой зеленый	ст. л.
717	краситель пищевой красный	г
718	краситель пищевой оранжевый	г
719	краситель пищевой фиолетовый	г
720	краситель пищевой черный	г
721	красная смородина	г
722	красная смородина, протертая с сахаром	ст. л.
723	красноперка	шт.
724	красносмородиновое варенье	г
725	красный винный соус	г
726	крахмал	г
727	креветки	г
728	креветки замороженные	г
729	креветки королевские	г
730	креветки очищенные	г
731	креветки очищенные в рассоле	г
732	креветки салатные	г
733	креветки сушеные	г
734	креветки тигровые	г
735	крекер	г
736	крекер соленый	г
737	крем заварной	г
738	крем заварной порошковый	г
739	крем-фреш	г
740	кресс-салат	г
741	кровь	мл
742	кролик	г
743	кролик тушка	г
744	кролик филе	г
745	кроличья печень	г
746	круассаны	по вкусу
747	крутоны мелкие	г
748	крыжовник	г
749	крыжовниковое варенье	банка
750	кукуруза	г
751	кукуруза замороженная	г
752	кукуруза консервированная	г
753	кукуруза обжаренная кикос	г
754	кукурузная крупа	г
755	кукурузная мука	г
756	кукурузное масло	г
757	кукурузные лепешки	шт.
758	кукурузные палочки	г
759	кукурузные хлопья	г
760	кукурузные хлопья глазированные	г
761	кукурузные чипсы	г
762	кукурузный (золотой) сироп	г
763	кукурузный крахмал	по вкусу
764	кумин	г
765	кумкваты	горсть
766	кунжут	г
767	кунжутная мука	г
768	кунжутная паста	г
769	кунжутное масло	г
770	кунжутные семечки	по вкусу
771	кунжут черный	ч. л.
772	купаты	шт.
773	курага	по вкусу
774	курдючное сало	г
775	курдючный жир	г
776	куриная ветчина	г
777	куриная кожа	г
778	куриная печень	г
779	куриное карпаччо	г
780	куриное филе	г
781	куриные бедра	г
782	куриные голени	г
783	куриные голени копченые	шт.
784	куриные грудки	г
785	куриные грудки вареные	г
786	куриные грудки копченые	г
787	куриные желудочки	шт.
788	куриные кости	г
789	куриные крылья	г
790	куриные окорочка	г
791	куриные окорочка копченые	г
792	куриные потрошки	г
793	куриные сердечки	г
794	куриный бульон	г
795	куриный паштет	г
796	куриный суповой набор	кг
797	куриный фарш	г
798	курица	г
799	курица вареная	г
800	курица для жарки	кг
801	курица копченая	г
802	курица тушка	г
803	куркума	г
804	куропатки	г
805	кускус	г
806	кускус жемчужный	стакан
807	кэроб	г
808	лаванда	г
809	лаванда сушеная	щепотка
810	лавандовый краситель	ч. л.
811	лаваш	по вкусу
812	лаваш армянский	г
813	лаваш персидский круглый	г
814	лаваш тонкий	пласт
815	лавровые листья свежие	шт.
816	лавровый лист	г
817	лайм	г
818	лайм листья	шт.
819	лаймовая цедра	г
820	лаймовый сок	г
821	лангустины	шт.
822	лапша	г
823	лапша для лагмана	упаковка
824	лапша ширатаки	г
825	лапша яичная в гнездах	шт.
826	латук	г
827	легкие	г
828	лед	г
829	леди-фиш тушка	шт.
830	лемонграсс (лимонное сорго)	г
831	лен семена	г
832	лепешки	г
833	лепешки арабские	шт.
834	лесные орехи	г
835	лечо	г
836	ливер	г
837	ликер	г
838	ликер Alchermes	г
839	ликер Amaretto	г
840	ликер Baileys	г
841	ликер Cointreau	г
842	ликер кремовый	г
843	ликер сливочный	г
844	лимонад	г
845	лимонная кислота	г
846	лимонная цедра	г
847	лимонник стебель	г
848	лимонник ягоды	г
849	лимонные корочки засахаренные	г
850	лимонные цукаты	г
851	лимонный сок	г
852	лимонный уксус	г
853	лимонный экстракт	г
854	лимончелло	г
855	лимоны	г
856	лингвине	шт.
857	лисички	г
858	лисички сушеные	г
859	личи	шт.
860	личи компот	г
861	лобстер	г
862	лонган	г
863	лонгконг	шт.
864	лососевые молоки	г
865	лососевый фарш	г
866	лосось	г
867	лосось горячего копчения	г
868	лосось копченый	г
869	лосось свежесоленый	г
870	лосось свежий	г
871	лосось свежий филе	г
872	лосось слабосоленый	г
873	лосось стейки	г
874	лосось филе	г
875	лосось филе на коже	г
876	лосось холодного копчения	г
877	лосятина	кг
878	лук белый	по вкусу
879	лук зеленый	г
880	лук красный	по вкусу
881	лук маринованный	г
882	луковая шелуха	г
883	луковый порошок	г
884	лук-порей	горсть
885	лук-резанец	по вкусу
886	лук репчатый	г
887	лук репчатый мелкий	г
888	лук салатный	шт.
889	лук сушеный	г
890	лук-шалот	г
891	лук-шалот красный	шт.
892	льняная мука	г
893	льняное масло	ч. л.
894	льняное семя	г
895	льняное семя молотое	г
896	любисток	г
897	маасдам	г
898	мадера	г
899	майонез	г
900	майонез домашний	г
901	майонез легкий	г
902	майонезный соус «Слобода» Постный	г
903	майонез оливковый	г
904	майонез «Слобода» Легкий	г
905	майонез «Слобода» На перепелиных яйцах	г
906	майонез «Слобода» Оливковый	г
907	майонез «Слобода» Провансаль	г
908	майонез «Слобода» С лимонным соком	г
909	майонез «Слобода» Сметанный	г
910	майоран	г
911	майоран свежий	по вкусу
912	майоран сушеный	г
913	мак	г
914	макаронные изделия	г
915	макаронные изделия мелкие	г
916	макароны	г
917	макароны-бабочки (farfalle)	г
918	макароны-бабочки (farfalle) мини	г
919	макароны баветте	г
920	макароны-бантики	г
921	макароны букатини	г
922	макароны джильи	г
923	макароны диталони	г
924	макароны-звездочки	стакан
925	макароны орзо	г
926	макароны-ракушки (conchiglie)	г
927	макароны-ракушки (conchiglie rigate)	г
928	макароны-ракушки крупные	г
929	макароны рисони	г
930	макароны-рожки (pipe rigate)	г
931	макароны-спиральки (fusilli)	г
932	макароны-ушки (orecchiette)	г
933	маккерончини	г
934	мак молотый	г
935	маковая масса	пачка
936	малина	г
937	малина замороженная	г
938	малина, протертая с сахаром	стакан
939	малина сушеная	г
940	малиновое варенье	г
941	малиновое желе	г
942	малиновое пюре	г
943	малиновый джем	г
944	малиновый крем	г
945	малиновый сироп	ч. л.
946	малиновый соус	ч. л.
947	малиновый уксус	мл
948	малиновый чай	г
949	манго	по вкусу
950	манговый сироп	мл
951	манго консервированное	г
952	мангольд	г
953	мангустин	шт.
954	мандариновое пюре	г
955	мандариновые цукаты	г
956	мандариновый сок	г
957	мандарины	по вкусу
958	мандарины в собственном соку	г
959	манная крупа	г
960	маракуйя	г
961	маргарин	г
962	маргарин сливочный	г
963	мармелад	по вкусу
964	мармелад бутербродный	г
965	марсала	стакан
966	мартини	г
967	мартини красный	г
968	марципан	по вкусу
969	марципан зеленый	г
970	марципан розовый	г
971	маршмеллоу	г
972	маршмеллоу крем	г
973	маршмеллоу мини	г
974	маскарпоне	г
975	маслины	г
976	маслины без косточек	г
977	масло авокадо	г
978	масло виноградных косточек	г
979	масло грецкого ореха	ч. л.
980	масло для фритюра	г
981	масло кедрового ореха	г
982	маслята	г
983	мастика	г
984	мастика желатиновая	г
985	мастика шоколадная	г
986	матча	г
987	мафальдине	г
988	маца	г
989	мацони	г
990	маш	г
991	мед	г
992	мед акации	г
993	мед гречишный	г
994	мед жидкий	г
995	мед лавандовый	г
996	мелисса	г
997	меренги	шт.
998	мидии	г
999	мидии в раковинах	г
1000	мидии в раковинах крупные черные	г
1001	мидии в раковинах мелкие зеленые	г
1002	мидии замороженные	шт.
1003	мидии копченые в масле	г
1004	микрозелень	горсть
1005	миндаль	г
1006	миндаль жареный	г
1007	миндаль измельченный	г
1008	миндальная масса	г
1009	миндальная мука	г
1010	миндальная паста	г
1011	миндальная эссенция	г
1012	миндальное масло	г
1013	миндальное молоко	г
1014	миндальное печенье	г
1015	миндальное пралине	г
1016	миндальные лепестки	г
1017	миндальный ликер	г
1018	миндальный сироп	г
1019	миндальный экстракт	капля
1020	миндаль очищенный	г
1021	миндаль рубленый	г
1022	мини-кукуруза	шт.
1023	минога	г
1024	минтай	г
1025	минтай печень	г
1026	минтай филе	г
1027	мисо-паста	г
1028	мисо-суп	пакет
1029	можжевельник ягоды	г
1030	мойва	г
1031	моллюски	г
1032	молоко	г
1033	молоко 0,5%	г
1034	молоко 1,5%	г
1035	молоко 2,5%	г
1036	молоко 3,2%	г
1037	молоко 3,6%	г
1038	молоко 4%	г
1039	молоко 6%	г
1040	молоко козье	г
1041	молоко концентрированное	г
1042	молоко рисовое	мл
1043	молоко сгущенное	г
1044	молоко сгущенное вареное	ст. л.
1045	молоко сгущенное с какао	г
1046	молоко сухое	г
1047	молоко сухое обезжиренное	ст. л.
1048	молоко топленое	г
1049	молочная смесь	г
1050	молочные продукты	г
1051	морепродукты	шт.
1052	морковное пюре	г
1053	морковь	г
1054	морковь вареная	г
1055	морковь крупная	г
1056	морковь молодая	г
1057	морковь по-корейски	г
1058	морковь тертая	шт.
1059	мороженое	по вкусу
1060	мороженое ванильное	г
1061	мороженое клубничное	г
1062	мороженое лимонное	по вкусу
1063	мороженое малиновое	г
1064	мороженое пломбир	г
1065	мороженое шоколадное	мл
1066	морошка	г
1067	морские гребешки	кг
1068	морской коктейль	г
1069	морской коктейль в масле	упаковка
1070	морской коктейль замороженный	г
1071	морской черт	г
1072	морской язык	г
1073	морской язык филе	г
1074	мортаделла	г
1075	моцарелла	г
1076	моцарелла для запекания	г
1077	моцарелла для пиццы	г
1078	моцарелла мини	г
1079	моцарелла с травами	г
1080	моцарелла шарик большой	г
1081	мука	г
1082	мука 1 сорт	г
1083	мука 2 сорт	г
1084	мука «Аладушкин»	г
1085	мука грубого помола	г
1086	мука для темпуры	г
1087	мука из пророщенной пшеницы	ст. л.
1088	мука манитоба	г
1089	мука самоподнимающаяся	г
1090	мука с отрубями	ч. л.
1091	мука с семечками	г
1092	мука хлебопекарная	г
1093	мука цельнозерновая	г
1094	мускат белый	мл
1095	мускатное вино	г
1096	мускатный орех	г
1097	мускатный орех молотый	г
1098	мюсли	г
1099	мягкий творог	г
1100	мясной бульон	г
1101	мясной фарш	г
1102	мясо	г
1103	мясо дикого кабана	г
1104	мясо криля	г
1105	мясо на косточке	кг
1106	мята	г
1107	мята сушеная	г
1108	мятный сироп	г
1109	мятный шнапс	г
1110	нардек	г
1111	нектарины	шт.
1112	нога ягненка без кости	г
1113	нори	г
1114	нуга	г
1115	нуга с орехами	г
1116	нут	г
1117	нутелла	г
1118	нут консервированный	г
1119	нутовая мука	г
1120	облепиха	г
1121	облепиха замороженная	г
1122	облепиховый сироп	стакан
1123	овощи	г
1124	овощная смесь	г
1125	овощная смесь замороженная	г
1126	овощная смесь замороженная для wok	г
1127	овощная смесь по-китайски	г
1128	овощной бульон	по вкусу
1129	овсяная мука	г
1130	овсяное молоко	стакан
1131	овсяное печенье	г
1132	овсяное толокно	г
1133	овсяные зерна	г
1134	овсяные отруби	г
1135	овсяные хлопья	г
1136	овсяные хлопья быстрого приготовления	г
1137	огуречный рассол	стакан
1138	огурцы	г
1139	огурцы консервированные	шт.
1140	огурцы малосольные	шт.
1141	огурцы маринованные	банка
1142	огурцы свежие	г
1143	огурцы соленые	г
1144	одуванчики	г
1145	окорок	г
1146	окорок варено-копченый	г
1147	окунь	г
1148	окунь красный филе	г
1149	окунь морской	г
1150	окунь морской филе	г
1151	окунь филе	г
1152	оленина	г
1153	оливки	г
1154	оливки без косточек	г
1155	оливки зеленые	по вкусу
1156	оливки зеленые консервированные	банка
1157	оливки каламата	г
1158	оливки консервированные	г
1159	оливки, фаршированные анчоусами	г
1160	оливки черные	по вкусу
1161	оливковая паста	г
1162	оливковое масло	г
1163	оливковое масло Extra Virgin	г
1164	опунция плоды	г
1165	опята	по вкусу
1166	опята замороженные	г
1167	опята маринованные	г
1168	орегано	г
1169	орегано свежий	г
1170	орегано сушеный	г
1171	орехи	г
1172	орехи бразильские	г
1173	орехи макадамия	г
1174	орехи пекан	г
1175	орехи пинии	г
1176	ореховая крошка	стакан
1177	ореховая паста	шт.
1178	ореховое масло	ст. л.
1179	ореховый ликер	мл
1180	ореховый соус	ст. л.
1181	осетр	г
1182	осетрина холодного копчения	г
1183	осьминог	г
1184	осьминоги консервированные	г
1185	осьминоги мини	г
1186	отруби	г
1187	ошеек	г
1188	пагр	г
1189	пажитник	г
1190	пажитник семена	г
1191	палтус	г
1192	пальмовое масло	г
1193	пангасиус	г
1194	панеттоне	шт.
1195	Панифарин	г
1196	панчетта	г
1197	папайя	г
1198	папайя консервированная в собственном соку	г
1199	папоротник	г
1200	папоротник соленый	упаковка
1201	паппарделле	г
1202	паприка	г
1203	паприка копченая	ст. л.
1204	паприка красная	ст. л.
1205	паприка красная молотая	г
1206	паприка острая копченая	г
1207	паприка сладкая	г
1208	паприка сладкая копченая	г
1209	паприка сладкая хлопьями	ч. л.
1210	пармезан	г
1211	паста	г
1212	паста веджимайт	г
1213	паста тахини	г
1214	паста хариса	ст. л.
1215	пастернак	г
1216	пастила	г
1217	пастила виноградная	г
1218	патиссоны	г
1219	патока	г
1220	патока крахмальная	г
1221	патока черная (меласса)	г
1222	пахта	г
1223	паштет	г
1224	пекарский порошок	г
1225	пекарский порошок	ч. л.
1226	пекорино	г
1227	пектин	г
1228	пеленгас	г
1229	пельмени	г
1230	пенне	г
1231	пенне ригате	г
1232	пеперончино	ч. л.
1233	пеперончино молотый	щепотка
1234	переводной лист для шоколада	шт.
1235	перепелки	тушка
1236	перец	г
1237	перец белый	г
1238	перец белый горошком	по вкусу
1239	перец белый молотый	г
1240	перец белый свежемолотый	ч. л.
1241	перец болгарский	г
1242	перец болгарский желтый	г
1243	перец болгарский зеленый	г
1244	перец болгарский красный	г
1245	перец горошком	г
1246	перец горошком смесь	г
1247	перец душистый	щепотка
1248	перец душистый горошком	г
1249	перец душистый молотый	г
1250	перец испанский острый	шт.
1251	перец кайенский	г
1252	перец кайенский красный	г
1253	перец кайенский молотый	щепотка
1254	перец красный	г
1255	перец красный горошком	г
1256	перец красный жгучий	г
1257	перец красный молотый	г
1258	перец красный острый	г
1259	перец красный острый молотый	по вкусу
1260	перец красный хлопьями	щепотка
1261	перец лимонный	г
1262	перец маринованный	г
1263	перец острый	г
1264	перец острый зеленый	шт.
1265	перец острый молотый	щепотка
1266	перец падрон	г
1267	перец пеперони	г
1268	перец пеперони красный	шт.
1269	перец розовый горошком	г
1270	перец свежемолотый смесь	г
1271	перец сенегальский	по вкусу
1272	перец сладкий	г
1273	перец сладкий желтый	г
1274	перец сладкий зеленый	г
1275	перец сладкий красный	г
1276	перец сладкий красный маринованный	шт.
1277	перец сладкий красный молотый	г
1278	перец сладкий оранжевый	г
1279	перец сладкий сушеный	г
1280	перец сычуаньский	г
1281	перец халапеньо	г
1282	перец халапеньо маринованный	шт.
1283	перец черный	ст. л.
1284	перец черный горошком	по вкусу
1285	перец черный молотый	г
1286	перец черный свежемолотый	г
1287	перец чили	г
1288	перец чили зеленый	стручок
1289	перец чили красный	стручок
1290	перец чили маринованный	по вкусу
1291	перец чили молотый	г
1292	перец чили сухой	ст. л.
1293	перец чили хлопьями	по вкусу
1294	перец ямайский	г
1295	перловая крупа	г
1296	перловая мука	г
1297	персики	г
1298	персики консервированные	г
1299	персики сушеные	горсть
1300	персиковое пюре	г
1301	персиковый джем	г
1302	персиковый мармелад	ст. л.
1303	персиковый сироп	мл
1304	персиковый сок	г
1305	перцовая паста	ч. л.
1306	петрушка	г
1307	петрушка зелень	г
1308	петрушка итальянская	пучок
1309	петрушка корень	г
1310	петрушка рубленая	г
1311	петрушка сушеная	г
1312	печень	г
1313	печенье	по вкусу
1314	печенье Oreo	г
1315	печенье Амаретти	г
1316	печенье бисквитное	г
1317	печенье галетное	шт.
1318	печенье «Дамские пальчики»	г
1319	печенье песочное	г
1320	печенье рассыпчатое	г
1321	печенье Савоярди	г
1322	печенье сахарное	г
1323	печенье сладкое	г
1324	печенье сухое	г
1325	печенье шоколадное	г
1326	печенье Юбилейное молочное	г
1327	пиво	г
1328	пиво имбирное	мл
1329	пиво нефильтрованное	г
1330	пиво светлое	г
1331	пиво темное	банка
1332	пикша	шт.
1333	питы	по вкусу
1334	повидло	г
1335	подсолнечное масло	г
1336	подсолнечные семечки	г
1337	полба	г
1338	полба недозрелая	г
1339	полента	по вкусу
1340	полента быстрого приготовления	стакан
1341	помело	г
1342	помидоры	г
1343	помидоры бурые	г
1344	помидоры вяленые	по вкусу
1345	помидоры вяленые в масле	г
1346	помидоры желтые	шт.
1347	помидоры зеленые	кг
1348	помидоры консервированные	г
1349	помидоры консервированные в собственном соку	г
1350	помидоры консервированные в собственном соку с базиликом	г
1351	помидоры протертые пассата	г
1352	помидоры соленые	шт.
1353	помидоры сушеные хлопьями	г
1354	помидоры черри	г
1355	помидоры черри желтые	г
1356	попкорн	г
1357	поросенок	кг
1358	портвейн	г
1359	портобелло	г
1360	портулак	г
1361	посыпка кондитерская	по вкусу
1362	почки	г
1363	приправа 4 перца	г
1364	приправа 5 специй (five spice)	ч. л.
1365	приправа для баранины	ст. л.
1366	приправа для картофеля	г
1367	приправа для курицы	г
1368	приправа для макарон	по вкусу
1369	приправа для маринования свинины	по вкусу
1370	приправа для морепродуктов	по вкусу
1371	приправа для мяса	г
1372	приправа для паэльи	по вкусу
1373	приправа для пиццы	ч. л.
1374	приправа для плова	г
1375	приправа для птицы	ст. л.
1376	приправа для рыбы	г
1377	приправа для салатов	по вкусу
1378	приправа заатар	ч. л.
1379	приправа креольская	ст. л.
1380	приправа с сушеными грибами	ч. л.
1381	приправы	г
1382	прованские травы	г
1383	проволоне	г
1384	просекко	мл
1385	простокваша	г
1386	протеин сывороточный	г
1387	прошутто	г
1388	пряники	г
1389	пряничные специи	г
1390	пряности	г
1391	псиллиум	г
1392	птитим	г
1393	пудинг	г
1394	пудинг ванильный	г
1395	пудинг ванильный инстант	упаковка
1396	пудинг карамельный	г
1397	пшеница	г
1398	пшеничная крупа	г
1399	пшеничная мука	г
1400	пшеничная мука цельнозерновая	г
1401	пшеничные зародыши	стакан
1402	пшеничные отруби	г
1403	пшеничные ростки	г
1404	пшеничные хлопья	г
1405	пшенные хлопья	ст. л.
1406	пшено	г
1407	пыльца цветочная	г
1408	пюре	по вкусу
1409	радиккио	шт.
1410	разрыхлитель	г
1411	раки	шт.
1412	раковые шейки	г
1413	раковые шейки в рассоле	г
1414	рамбутан	г
1415	рапаны	г
1416	рапсовое масло	по вкусу
1417	рассол	г
1418	рассол от каперсов	ст. л.
1419	рассол от оливок	ст. л.
1420	растительное масло	г
1421	растительное масло для жарки	г
1422	растительное масло нерафинированное	стакан
1423	растительное масло рафинированное	г
1424	растительное молоко	стакан
1425	ревень	г
1426	реган	веточка
1427	редис	г
1428	редька	г
1429	редька белая	шт.
1430	редька зеленая	шт.
1431	редька черная	шт.
1432	репа	г
1433	репа белая	шт.
1434	ржаная закваска	г
1435	ржаная закваска густая	г
1436	ржаная мука	г
1437	ржаные отруби	г
1438	ригатони	г
1439	рикотта	г
1440	рикотта твердая	г
1441	рис	г
1442	рис арборио	г
1443	рис басмати	г
1444	рис бурый	г
1445	рис бурый и дикий смесь	г
1446	рис вареный	г
1447	рис виола	г
1448	рис девзира	г
1449	рис дикий	г
1450	рис дикий и золотистый смесь	г
1451	рис длиннозерный	г
1452	рис длиннозерный золотистый	г
1453	рис для плова	г
1454	рис для пудинга	г
1455	рис для ризотто	г
1456	рис для суши	г
1457	рис жасминовый	г
1458	рис золотистый	г
1459	рис индика	г
1460	рис италика	г
1461	рис карнароли	г
1462	рис красный	г
1463	рис круглозерный	г
1464	рис кубанский	г
1465	рисовая бумага	г
1466	рисовая лапша	г
1467	рисовая мука	г
1468	рисовое вино	ч. л.
1469	рисовые хлопья	г
1470	рисовые шарики воздушные	г
1471	рисовый крахмал	ст. л.
1472	рисовый уксус	по вкусу
1473	рис пропаренный	г
1474	рис пропаренный и дикий смесь	г
1475	рис японика	г
1476	рожь	г
1477	розмарин	шт.
1478	розмарин сушеный	по вкусу
1479	розовая вода	г
1480	розовые бутоны сушеные	г
1481	розовые лепестки	г
1482	розы	г
1483	рокфор	г
1484	ром	бутылка
1485	ромашка сушеная	г
1486	ромовый экстракт	ч. л.
1487	ром темный	г
1488	ростбиф	г
1489	рукола	г
1490	рулька	по вкусу
1491	рыба	г
1492	рыба белая	г
1493	рыба белая филе	г
1494	рыба консервированная	банка
1495	рыба копченая	г
1496	рыба копченая филе	г
1497	рыба красная	г
1498	рыба красная соленая	г
1499	рыба красная филе	г
1500	рыба-меч	г
1501	рыба морская	г
1502	рыба солнечник филе	шт.
1503	рыба-соль	тушка
1504	рыбное филе	г
1505	рыбные консервы	г
1506	рыбные кости	г
1507	рыбные обрезки, головы, плавники	по вкусу
1508	рыбный бульон	г
1509	рыбный соус	г
1510	рыбный соус Nam Pla	г
1511	рыбный соус тайский	г
1512	рыбный фарш	г
1513	рябина черноплодная	г
1514	рябчик	г
1515	ряженка	г
1516	ряженка 4%	г
1517	сайда	г
1518	сайда филе	г
1519	сайра	г
1520	сайра консервированная	банка
1521	саке	ст. л.
1522	салака	г
1523	салат	г
1524	салат айсберг	г
1525	салат китайский	г
1526	салат корн	пучок
1527	салат кочанный	г
1528	салат кучерявый	г
1529	салат листовой	г
1530	салатный микс	г
1531	салат романо	г
1532	салат фриссе	г
1533	сало	г
1534	сало копченое в перце	г
1535	сало копченое с мясными прослойками	г
1536	сало с мясными прослойками	г
1537	сальник	г
1538	сальса	г
1539	сальса верде	ч. л.
1540	салями	г
1541	салями итальянская	г
1542	сардельки	г
1543	сардельки копченые	г
1544	сардинки маленькие	шт.
1545	сардины	г
1546	сардины в масле	банка
1547	сахар	г
1548	сахар ванильный	г
1549	сахар демерара	г
1550	сахар жемчужный	г
1551	сахар коричневый	г
1552	сахар коричневый крупнокристаллический	г
1553	сахар мусковадо	горсть
1554	сахарная пудра	г
1555	сахарная пудра апельсиновая	г
1556	сахарная пудра ванильная	г
1557	сахарные жемчужинки	г
1671	соевая мука	г
1558	сахарные кондитерские украшения	горсть
1559	сахарный песок	г
1560	сахарный песок крупный	г
1561	сахарный песок мелкий	г
1562	сахарный сироп	г
1563	сахар пальмовый	г
1564	сахар-рафинад	г
1565	сахар-рафинад с корицей	г
1566	сахар тростниковый	г
1567	сванская соль	г
1568	свекла	г
1569	свекла вареная	г
1570	свекольная ботва	г
1571	свекольные листья	г
1572	свиная вырезка	г
1573	свиная голова	г
1574	свиная грудинка	г
1575	свиная корейка	г
1576	свиная корейка копченая	г
1577	свиная корейка на кости	г
1578	свиная лопатка варено-копченая	г
1579	свиная мякоть	г
1580	свиная пашина	кг
1581	свиная печень	г
1582	свиная рулька	по вкусу
1583	свиная рулька варено-копченая	г
1584	свиная рулька копченая	г
1585	свиная шейка	кусок
1586	свинина	г
1587	свинина вареная	г
1588	свинина нежирная	г
1589	свинина с жирком	г
1590	свиное сердце	г
1591	свиное филе	г
1592	свиной подчеревок	г
1593	свиной фарш	г
1594	свиной язык	г
1595	свиные котлеты на косточке	шт.
1596	свиные легкие	г
1597	свиные ножки	г
1598	свиные отбивные	г
1599	свиные отбивные на косточке	г
1600	свиные ребра	г
1601	свиные уши	шт.
1602	свиные щечки	шт.
1603	свити	г
1604	сельдерей	г
1605	сельдерей зелень	г
1606	сельдерей корень	г
1607	сельдерей корень сушеный	по вкусу
1608	сельдерейная соль	г
1609	сельдерей семена	ч. л.
1610	сельдерей стебли	г
1611	сельдь	г
1612	сельдь слабосоленая	г
1613	сельдь соленая	шт.
1614	сельдь филе	г
1615	семга	г
1616	семга копченая	г
1617	семга свежая	г
1618	семга соленая	г
1619	семга филе на коже	г
1620	семечки	г
1621	семечки смесь	ст. л.
1622	семолина	г
1623	сервелат варено-копченый	г
1624	сибас	г
1625	сидр	г
1626	сироп	г
1627	сироп от консервированных груш	г
1628	сироп от консервированных персиков	ст. л.
1629	сироп топинамбура	стакан
1630	скумбрия	по вкусу
1631	скумбрия свежая	г
1632	скумбрия филе	г
1633	скумбрия холодного копчения	г
1634	сливки	упаковка
1635	сливки 10-20%	г
1636	сливки 15%	г
1637	сливки 20%	г
1638	сливки 33-35%	г
1639	сливки жирные	г
1640	сливки кондитерские	г
1641	сливовая паста	г
1642	сливовое варенье	г
1643	сливовое вино	г
1644	сливовый джем	г
1645	сливовый ликер	ст. л.
1646	сливовый соус	г
1647	сливочное масло	г
1648	сливы	кг
1649	сливы замороженные	г
1650	смалец	г
1651	смесь для кекса	шт.
1652	смесь для оладий	г
1653	смесь для хлеба 8 злаков	г
1654	сметана	г
1655	сметана 10%	г
1656	сметана 15%	ч. л.
1657	сметана 18%	г
1658	сметана 20%	г
1659	сметана 25%	г
1660	сметана 30%	г
1661	сметана 35%	г
1662	сметана жирная	г
1663	сметана нежирная	г
1664	сметана некислая	г
1665	смородина сушеная	г
1666	смородиновые листья	г
1667	сморчки сухие	г
1668	снежок	л
1669	сныть	г
1670	сода	г
1672	соевое масло	г
1673	соевое молоко	г
1674	соевые ростки	г
1675	соевый соус	г
1676	сок	г
1677	сок из красных апельсинов	мл
1678	сок мультивитаминный	мл
1679	сок юзу	мл
1680	солод	ч. л.
1681	солод жидкий	г
1682	солодовый экстракт	г
1683	солод темный	г
1684	соломка	г
1685	соль	г
1686	соль гималайская	г
1687	соль крупного помола	г
1688	соль морская	г
1689	сом филе	г
1690	сосиски	г
1691	сосиски из куриного фарша	шт.
1692	сосиски копченые	г
1693	соус	г
1694	соус black bean	ст. л.
1695	соус sambal oelek	ч. л.
1696	соус барбекю	г
1697	соус краснодарский	г
1698	соус красный острый	г
1699	соус мирин	по вкусу
1700	соус наршараб	г
1701	соус острый	г
1702	соус песто	по вкусу
1703	соус сацебели	г
1704	соус табаско	капля
1705	соус терияки	г
1706	соус ткемали	стакан
1707	соус ткемали благородный	г
1708	соус ткемали ранний	ст. л.
1709	соус устричный	ч. л.
1710	соус чили	г
1711	соус чили сладкий	ч. л.
1712	соус экзотический	г
1713	соя	г
1714	спагетти	г
1715	спагетти № 3	г
1716	спагетти № 5	г
1717	спагетти лунги	г
1718	спаржа	кг
1719	спаржа белая	г
1720	спаржа зеленая	г
1721	спаржа молодая	г
1722	спек	г
1723	спельта	стакан
1724	спельтовая (полбяная) мука	г
1725	специи	г
1726	спирт	г
1727	спирулина порошок	г
1728	спред	г
1729	ставрида	г
1730	стейк семги	шт.
1731	стейк семги	г
1732	стеклянная лапша	г
1733	страчателла	г
1734	судак	г
1735	судак филе	г
1736	судак филе на коже	г
1737	сулугуни	г
1738	сулугуни копченый	г
1739	сумах	г
1740	суповой набор	г
1741	сухари	по вкусу
1742	сухари белые	г
1743	сухари молотые	г
1744	сухари панировочные	г
1745	сухари ржаные	г
1746	сухарная крошка	г
1747	сухофрукты	г
1748	сухофрукты тропические	по вкусу
1749	сушки	г
1750	сыворотка	г
1751	сыр	г
1752	сыр tete de moine	г
1753	сыр Австрия блю	г
1754	сыр адыгейский	г
1755	сыр бри	г
1756	сыр буко	г
1757	сыр гауда	г
1758	сыр гойя	г
1759	сыр голландский	г
1760	сыр голубой	г
1761	сыр гравьера	г
1762	сыр джугас	г
1763	сыр домашний	г
1764	сыр дорблю	г
1765	сыр имеретинский	г
1766	сыр кефалотири	г
1767	сырки творожные	г
1768	сыр козий мягкий	г
1769	сыр козий твердый	г
1770	сыр колбасный	г
1771	сыр копченый	г
1772	сыр коттедж	г
1773	сыр Маскарпоне	г
1774	сыр мраморный	г
1775	сыр мягкий	по вкусу
1776	сыр овечий	г
1777	сыр панир	г
1778	сыр пеше миньон	г
1779	сыр плавленый	г
1780	сыр плавленый шоколадный	г
1781	сыр пластинками	г
1782	сыр полутвердый	г
1783	сыр провола	г
1784	сыр российский	г
1785	сыр скаморца	г
1786	сыр скаморца копченый	г
1787	сыр сливочный	г
1788	сыр с плесенью	г
1789	сыр с плесенью мягкий	г
1790	сыр твердый	г
1791	сыр филадельфия	г
1792	сыр фонтина	г
1793	сыр хаварти	г
1794	сыр швейцарский	г
1795	сычужный фермент	ч. л.
1796	таледжо	г
1797	тальолини	г
1798	тальятелле	г
1799	тальятелле-гнезда	шт.
1800	тамаринд	шт.
1801	тамариндовая паста	ч. л.
1802	тапиока	г
1803	тарталетки	по вкусу
1804	тартар	ст. л.
1805	тархун	г
1806	творог	г
1807	творог 18%	г
1808	творог 2%	г
1809	творог 5%	г
1810	творог 9%	г
1811	творог жирный	г
1812	творог зерненый	г
1813	творог обезжиренный	г
1814	творожная масса	г
1815	творожная паста	г
1816	творожный сыр	г
1817	творожный сыр соленый	г
1818	творожок клубничный	г
1819	текила	стакан
1820	телятина	по вкусу
1821	телятина вареная	г
1822	телячий фарш	г
1823	телячьи отбивные на косточке	шт.
1824	телячьи шницели	шт.
1825	телячьи эскалопы	г
1826	телячья вырезка	г
1827	телячья печень	г
1828	телячья щека	шт.
1829	тесто бездрожжевое	г
1830	тесто готовое	г
1831	тесто для вонтонов	г
1832	тесто для пиццы	шт.
1833	тесто дрожжевое	по вкусу
1834	тесто катаифи	г
1835	тесто макаронное	г
1836	тесто макаронное для лазаньи	г
1837	тесто пельменное	г
1838	тесто песочное	по вкусу
1839	тесто пресное	г
1840	тесто пряничное	г
1841	тесто слоеное	г
1842	тесто слоеное бездрожжевое	по вкусу
1843	тесто слоеное дрожжевое	кг
1844	тесто фило	г
1845	тилапия	г
1846	тилапия филе	г
1847	тильзитер	г
1848	тимьян	горсть
1849	тимьян лимонный	веточка
1850	тимьян свежий	по вкусу
1851	тимьян сушеный	г
1852	ткемали	г
1853	тмин	г
1854	тмин молотый	г
1855	томатная паста	г
1856	томатное пюре	г
1857	томатный концентрат	г
1858	томатный порошок	г
1859	томатный сок	г
1860	томатный соус	г
1861	томатный соус итальянский	г
1862	томатный соус острый	г
1863	томатный соус с базиликом	г
1864	тоник	бутылка
1865	топинамбур	г
1866	топленое масло	г
1867	тортильи	по вкусу
1868	тортильони	г
1869	тофу	г
1870	травы ароматные	г
1871	травы пряные с перцем	ч. л.
1872	травы сухие	г
1873	треска	г
1874	треска печень	г
1875	треска филе	г
1876	трюфель	г
1877	трюфельная крошка	г
1878	трюфельное масло	ст. л.
1879	трюфель черный	шт.
1880	тунец	по вкусу
1881	тунец консервированный	г
1882	тунец филе	г
1883	тушенка	г
1884	тыква	г
1885	тыквенное масло	шт.
1886	тыквенное пюре	г
1887	тыквенные семечки	г
1888	тюлька свежая	г
1889	угорь	г
1890	угорь копченый	г
1891	угурт	г
1892	укроп	г
1893	укропное семя	ч. л.
1894	укроп свежий	г
1895	укроп сушеный	г
1896	уксус	г
1897	уксус 9%	г
1898	уксус из сидра	ст. л.
1899	уксусная эссенция	г
1900	уксус столовый	г
1901	улитки	г
1902	улитки виноградные	шт.
1903	урюк	г
1904	устрицы	г
1905	утиная грудка	г
1906	утиная печень	г
1907	утиное филе	г
1908	утиные бедрышки	г
1909	утиные ножки	по вкусу
1910	утка	по вкусу
1911	утка печеная	г
1912	утка тушка	тушка
1913	уцхо-сунели	г
1914	фазан	г
1915	фарш (баранина и говядина)	г
1916	фарш (свинина и курица)	г
1917	фасоль	г
1918	фасоль белая	г
1919	фасоль белая консервированная	г
1920	фасоль белая лима	г
1921	фасоль зеленая стручковая	г
1922	фасоль кенийская	горсть
1923	фасоль кидни красная	г
1924	фасоль консервированная	г
1925	фасоль красная	г
1926	фасоль красная вареная	стакан
1927	фасоль красная консервированная	г
1928	фасоль молодая замороженная	г
1929	фасоль пинто	г
1930	фасоль спаржевая вареная	г
1931	фасоль стручковая	г
1932	фасоль стручковая замороженная	г
1933	фасоль стручковая консервированная	г
1934	фасоль черный глаз	г
1935	фейхоа	г
1936	фенхель	г
1937	фенхель семена	г
1938	фенхель семена молотые	г
1939	фестонате	г
1940	фета	г
1941	фетаки	г
1942	фетакса	г
1943	феттучине	г
1944	фиалки засахаренные	шт.
1945	фиалковый сироп	г
1946	физалис	по вкусу
1947	филе красного окуня	шт.
1948	филе лосося	г
1949	филе палтуса	шт.
1950	финики	г
1951	финики без косточек	стакан
1952	финики иранские	г
1953	финики иранские без косточек	шт.
1954	фисташки	г
1955	фисташки очищенные	г
1956	фисташки очищенные несоленые	горсть
1957	фисташки рубленые	г
1958	фисташковая мука	г
1959	фисташковая паста	г
1960	фисташковое масло	г
1961	фокачча	по вкусу
1962	форель	г
1963	форель вареная	г
1964	форель горячего копчения	г
1965	форель озерная свежая	шт.
1966	форель слабосоленая	г
1967	форель стейки	шт.
1968	форель филе	г
1969	форель холодного копчения	г
1970	фрикадельки	г
1971	фрукт дракона	шт.
1972	фруктовый сироп	г
1973	фруктовый сок	г
1974	фруктовый сок без сахара	стакан
1975	фруктоза	г
1976	фрукты	г
1977	фрукты консервированные	г
1978	фундук	г
1979	фундучная мука	г
1980	фунчоза	г
1981	халва	г
1982	халва ванильная	г
1983	халва подсолнечная	г
1984	халуми	г
1985	хамон	г
1986	хек	г
1987	хек филе	г
1988	херес	стакан
1989	хересный уксус	ч. л.
1990	хлеб	г
1991	хлеб 7 злаков	батон
1992	хлеб белый	г
1993	хлеб белый сухой	г
1994	хлеб бородинский	кусок
1995	хлеб датский ржаной	г
1996	хлеб для сэндвичей	г
1997	хлебная крошка	г
1998	хлеб ржаной	г
1999	хлеб серый	г
2000	хлеб с кунжутом	кусок
2001	хлеб цельнозерновой	г
2002	хлебцы пшенично-ржаные цельнозерновые	г
2003	хлопья 4 злака	г
2004	хлопья 5 злаков	г
2005	хлопья 7 злаков	ст. л.
2006	хлопья быстрого приготовления	стакан
2007	хлорид кальция	г
2008	хмели-сунели	г
2009	хмель	ст. л.
2010	хрен	г
2011	хрен протертый	г
2012	хрен со сливками	г
2013	хурма	г
2014	хурма спелая	г
2015	цесарка тушка	г
2016	цикорий	ч. л.
2126	шпроты в масле	г
2017	цитроновые цукаты	горсть
2018	цитрусовые цукаты	шт.
2019	цитрусовый свежевыжатый сок	мл
2020	цукаты	г
2021	цукини	г
2022	цукини цветы	шт.
2023	цыплята	г
2024	цыплята-корнишоны	шт.
2025	чабер	г
2026	чабрец	г
2027	чабрец сушеный	г
2028	чай дарджилинг	пакетик
2029	чай жасминовый	ст. л.
2030	чай зеленый	пакетик
2031	чай копченый лапсанг сушонг	г
2032	чай красный	г
2033	чай ройбуш	ст. л.
2034	чай черный	г
2035	чай черный крупнолистовой	ч. л.
2036	чай черный со специями	пакет
2037	чай эрл грей	стакан
2038	чатни манго	г
2039	чеддер	г
2040	черемуха	г
2041	черемуховая мука	г
2042	черемша	г
2043	черешневый джем	г
2044	черешня	г
2045	черешня консервированная без косточек	ст. л.
2046	черная смородина	г
2047	черника	г
2048	черника замороженная	г
2049	чернила каракатицы	г
2050	черничный джем	стакан
2051	чернослив	г
2052	чернослив без косточек	г
2053	чернослив вяленый	г
2054	чернослив копченый без косточек	г
2055	черносмородиновое варенье	г
2056	черносмородиновый джем	г
2057	чеснок	г
2058	чеснок молодой	г
2059	чеснок сушеный	г
2060	чесночная соль	щепотка
2061	чесночное масло	по вкусу
2062	чесночный порошок	г
2063	чечевица	г
2064	чечевица вареная	ст. л.
2065	чечевица зеленая	г
2066	чечевица красная	г
2067	чечил спагетти	г
2068	чиабатта	кусок
2069	чиа семена	г
2070	чипотле молотый	щепотка
2071	чипсы	г
2072	чоризо	г
2073	шалфей	г
2074	шалфей свежий	пучок
2075	шалфей сушеный	лист
2076	шампанское	г
2077	шампанское советское	стакан
2078	шампанское сухое	ст. л.
2079	шампиньоны	по вкусу
2080	шампиньоны замороженные	г
2081	шампиньоны консервированные	г
2082	шампиньоны маринованные	г
2083	шампиньоны свежие	г
2084	шафран	г
2085	шафран имеретинский	г
2086	шафран молотый	ч. л.
2087	шафран нити	шт.
2088	шелковица	г
2089	шелковица сушеная	г
2090	шиповник	г
2091	шиповниковый сироп	г
2092	шнапс	г
2093	шнитт-лук	стебель
2094	шоколад	г
2095	шоколад белый	г
2096	шоколад горький с апельсиновой цедрой	г
2097	шоколад молочный	г
2098	шоколад мятный	г
2099	шоколадная паста	г
2100	шоколадная стружка	г
2101	шоколадное масло	г
2102	шоколадно-ореховая паста	г
2103	шоколадные горошины	г
2104	шоколадные капли	г
2105	шоколадные капли белые	г
2106	шоколадные конфеты	г
2107	шоколадные хлопья	г
2108	шоколадные шарики из готовых завтраков	горсть
2109	шоколадный ликер	г
2110	шоколадный сироп	г
2111	шоколадный соус	г
2112	шоколад полусладкий	г
2113	шоколад с орехами	г
2114	шоколад черный горький	г
2115	шоколад черный горький 70%	г
2116	шоколад черный горький 75%	ч. л.
2117	шоколад черный горький 85%	г
2118	шортенинг	стакан
2119	шпик	шт.
2120	шпик копченый	г
2121	шпинат	г
2122	шпинат замороженный	г
2123	шпинат молодой	г
2124	шпинат свежий	г
2125	шпроты	г
2127	шрот	г
2128	щавель замороженный	г
2129	щавель свежий	веточка
2130	щука	г
2131	щука филе	г
2132	эгг-ног	стакан
2133	эдам	г
2134	эль	мл
2135	эмменталь	г
2136	эскалоп	г
2137	эстрагон	г
2138	эстрагон сушеный	веточка
2139	яблоки	г
2140	яблоки антоновка	кг
2141	яблоки гала	г
2142	яблоки голден	г
2143	яблоки гренни смит	кг
2144	яблоки зеленые	г
2145	яблоки красные	шт.
2146	яблоки моченые	шт.
2147	яблоки нетвердых сортов	г
2148	яблоки сладкие	г
2149	яблоки сушеные	г
2150	яблочная эссенция	ч. л.
2151	яблочное варенье	г
2152	яблочное повидло	г
2153	яблочное пюре	г
2154	яблочные чипсы	стакан
2155	яблочный джем	г
2156	яблочный сироп	ст. л.
2157	яблочный сок	г
2158	яблочный соус	ст. л.
2159	яблочный уксус	г
2160	ягнятина	г
2161	ягнятина кострец	г
2162	ягнятина фарш	г
2163	ягнячьи отбивные на косточке	шт.
2164	ягнячья голень нарубленная	г
2165	ягнячья корейка	г
2166	ягодное варенье	ст. л.
2167	ягодное желе	г
2168	ягодный сироп	г
2169	ягодный сок	г
2170	ягодный соус кислый	г
2171	ягоды	г
2172	ягоды вяленые	по вкусу
2173	ягоды замороженные	г
2174	ягоды лесные	г
2175	ягоды лесные замороженные	г
2176	яичные белки	г
2177	яичные желтки	г
2178	яичные желтки вареные	шт.
2179	яичные желтки крупные	г
2180	яичный меланж	г
2181	яичный порошок	ст. л.
2182	яйца куриные	г
2183	яйца куриные крупные	г
2184	яйца перепелиные	г
2185	японская крошка панко	г
2186	ячменные хлопья	г
2187	ячмень	г
2188	ячневая крупа	г
\.


--
-- Data for Name: recipes_recipe; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipes_recipe (id, name, text, image, cooking_time, author_id) FROM stdin;
11	Булгур с тыквой и фасолью	Вкусный и питательный булгур с тыквой и фасолью, который отлично подойдёт и для постного стола. Тыква добавляет сочность и яркий вкус, а фасоль заменяет мясо и придаёт каше из булгура сытность. За счёт того, что фасоль используется консервированная, много времени не потребуется.	recipes/temp_9nGqyBr.png	123	7
1	Слоёные расстегаи с горбушей и луком	Расстегаи могут быть не только дрожжевыми. Для этих используется готовое слоёное тесто. Внутри запекается свежая красная рыба на луковой подушке. Для сохранения сочности начинки после выпечки в каждый расстегай добавляется кусочек сливочного масла.	recipes/temp.png	123	5
12	Куриные крылышки, запечённые с картофелем и помидорами	Запекаем куриные крылышки вместе с гарниром - картофелем и помидорами. Маринад для крылышек включает в себя цедру лимона, копчёную паприку, орегано и чеснок, которые создают неповторимый душистый ансамбль. Дополнительный аромат добавляют веточки тимьяна. А в конце приготовления крылышки смазываются смесью томатного соуса и мёда. Получается очень интересно.	recipes/temp_FEVPB6d.png	123	7
2	Оладьи из тыквы на кефире	Вкусные и пышные оладьи можно сделать более интересными и яркими, если добавить в тесто на кефире натёртую тыкву. Отличная идея, чтобы спрятать полезный, но не всеми почитаемый овощ.	recipes/temp_F6Fu730.png	30	5
3	Жареные пирожки с печенью и картофелем	Тесто для этих пирожков замешивается на кефире, без дрожжей, а внутри – много вкусной начинки из картофеля и печени. Пирожки с печенью и картофелем получаются мягкие, сытные и очень аппетитные.	recipes/temp_DNna71E.png	50	5
4	Польская шарлотка	Этот закрытый песочный пирог с яблоками известен в сети как польская шарлотка. И это не та шарлотка, к которой мы привыкли. Тесто замешивается на сметане, сливочном масле и желтках, а начинка готовится из карамелизированных яблок с корицей.	recipes/temp_2FDZ0vp.png	30	7
5	Борщ с квашеной капустой	Квашеная капуста с томатной пастой дают борщу кислинку, он получается ярким, красивого цвета, и по-домашнему вкусным.	recipes/temp_SdEInB1.png	50	7
6	Ореховый смузи с бананами и финиками	Для быстрого утоления голода приготовьте этот питательный, густой и в меру сладкий витаминный смузи из замороженного банана, орехов кешью и фиников с добавлением пряностей. А если добавить кубики льда, напиток ещё и отлично охладит в жаркий день.	recipes/temp_Qa8vQ8H.png	10	7
7	Тилапия, запечённая со сладким перцем и маслинами	Тилапия получается очень нежной, сочной и вкусной, если смазать её томатным соусом и запечь со сладким перцем и маслинами. Особенный аромат блюду помогут придать пряности, а зелень при подаче освежит внешний вид.	recipes/temp_R6q8EOY.png	30	8
8	Салат "Тиффани" с говядиной	Вкусный и сытный салат "Тиффани" с говядиной станет ярким украшением праздничного стола. Нежные кусочки отварной говядины отлично сочетаются с хрустящими грецкими орехами, сочным кисло-сладким виноградом и сыром.	recipes/temp_Ju6CGbM.png	123	8
9	Салат "Дыхание дракона" с курицей, картофелем и морковью по-корейски	Яркий и пикантный салат "Дыхание дракона" в виде пламени удачно впишется в новогоднее меню в год Дракона. Нежный вкус куриного филе и огурцов отлично дополняют пикантные морковь и картофель по-корейски. Эти компоненты хорошо сочетаются, салат получается с остринкой, что соответствует его внешнему виду. Праздничный салат "Дыхание дракона" отлично украсит стол в новый год 2024!	recipes/temp_iy1L6hB.png	56	8
10	Салат с куриной печенью, помидорами и клюквенно-апельсиновой заправкой	Салат с куриной печенью и помидорами получается ярким и необычным по вкусу благодаря клюквенно-апельсиновой заправке с добавлением корицы и мёда. Ароматная обжаренная куриная печень, сочные помидоры и свежие салатные листья в сочетании с оригинальной заправкой дарят прекрасный вкус.	recipes/temp_7tAij6k.png	60	8
13	Апельсиновый мусс с манной крупой	Апельсиновый мусс – нежнейший ароматный десерт. Добавление манной крупы делает мусс из апельсинового сока густым и стабильным. Прекрасный вариант для любителей цитрусовых десертов.	recipes/temp_4d4pFza.png	666	7
\.


--
-- Data for Name: recipes_recipe_ingredient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipes_recipe_ingredient (id, amount, ingredient_id, recipe_id) FROM stdin;
7	123	1	1
8	2	2	1
9	15	3	1
10	180	4	2
11	150	5	2
12	20	6	2
13	250	591	3
14	400	1081	3
15	300	1670	3
16	345	1032	4
17	322	2182	4
18	122	252	4
19	400	726	4
20	233	278	5
21	400	520	5
22	300	1855	5
23	400	2057	5
24	123	878	5
25	2	1990	5
26	70	1171	6
27	200	97	6
28	200	252	6
29	2	685	6
30	2	181	6
31	50	1950	6
32	250	1845	7
33	100	1241	7
34	90	886	7
35	20	977	7
36	20	1685	7
37	200	435	7
38	234	278	8
39	4	1363	8
40	3	1	8
41	123	590	9
42	5	408	9
43	123	175	10
44	34	1914	10
45	567	1393	10
46	56	2073	10
47	3	1889	11
48	44	491	11
49	567	7	11
50	56	260	11
51	123	483	11
52	123	776	12
53	44	798	12
54	567	409	12
55	123	1676	13
56	500	726	13
57	666	2015	13
\.


--
-- Data for Name: recipes_recipe_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipes_recipe_tags (id, recipe_id, tag_id) FROM stdin;
13	1	1
14	1	3
15	1	4
16	2	1
17	2	3
18	3	1
19	3	3
20	3	4
21	4	3
22	5	2
23	5	5
24	6	1
25	6	3
26	7	2
27	7	4
28	7	5
29	8	2
30	8	4
31	9	2
32	9	3
33	9	4
34	9	6
35	10	2
36	10	4
37	11	3
38	11	4
39	12	4
40	13	1
41	13	3
\.


--
-- Data for Name: recipes_shopping_cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipes_shopping_cart (id, recipe_id, user_id) FROM stdin;
\.


--
-- Data for Name: recipes_subscribe; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipes_subscribe (id, author_id, user_id) FROM stdin;
1	5	7
2	7	8
3	5	8
4	8	7
\.


--
-- Data for Name: recipes_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipes_tag (id, name, color, slug) FROM stdin;
1	Завтрак	#FF0000	breakfast
2	Обед	#00FF00	lunch
3	Ужин	#0000FF	dinner
4	Мясо	#B22222	meat
5	Овощи	#008000	vegetables
6	Рыба	#00BFFF	fish
\.


--
-- Data for Name: recipes_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipes_user (id, password, last_login, is_superuser, is_staff, is_active, date_joined, username, email, first_name, last_name) FROM stdin;
1	pbkdf2_sha256$260000$b3Qf5tqxpnTmLotMLbLQMu$mPRwR14/lQwjX0O0zI1/zoQ+RCu9QuSvjqqMylsLY1o=	2023-11-03 22:29:02.711767+00	t	t	t	2023-11-02 23:14:43.864813+00	admin	admin@admin.com		
5	pbkdf2_sha256$260000$2ugF144bqzu8tLlUbMLbiy$IWu6cZBDNTQAtFmDLY9L4A5iY3Xn9K4xrqRZ6jmg+Lc=	2023-11-03 22:31:43.253251+00	f	f	t	2023-11-03 22:31:28.178811+00	ivan	ivan@ivan.com	Иван	Иванов
8	pbkdf2_sha256$260000$AryGA9tokZLmM1Wvueapyp$CLbTMt4g/YwGVVXdL4QaWNQlmb9fsYlN5vCBOJB84hU=	2023-11-03 22:47:59.224721+00	f	f	t	2023-11-03 22:47:44.891575+00	sidr	sidr@sidr.com	Сидр	Сидоров
7	pbkdf2_sha256$260000$uDCa9kiibEZAdKLEpiuXqK$HRrTpKa3OuuG2JAKw2XUItXAsMlP7xUTj71fXu01vcg=	2023-11-03 22:57:56.682931+00	f	f	t	2023-11-03 22:41:05.38261+00	petr	petr@petr.com	Петр	Петров
\.


--
-- Data for Name: recipes_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipes_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: recipes_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipes_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 11, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);


--
-- Name: recipes_favorite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipes_favorite_id_seq', 8, true);


--
-- Name: recipes_ingredient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipes_ingredient_id_seq', 2188, true);


--
-- Name: recipes_recipe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipes_recipe_id_seq', 13, true);


--
-- Name: recipes_recipe_ingredient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipes_recipe_ingredient_id_seq', 57, true);


--
-- Name: recipes_recipe_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipes_recipe_tags_id_seq', 41, true);


--
-- Name: recipes_shopping_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipes_shopping_cart_id_seq', 4, true);


--
-- Name: recipes_subscribe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipes_subscribe_id_seq', 4, true);


--
-- Name: recipes_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipes_tag_id_seq', 6, true);


--
-- Name: recipes_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipes_user_groups_id_seq', 1, false);


--
-- Name: recipes_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipes_user_id_seq', 8, true);


--
-- Name: recipes_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipes_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: recipes_favorite recipes_favorite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_favorite
    ADD CONSTRAINT recipes_favorite_pkey PRIMARY KEY (id);


--
-- Name: recipes_ingredient recipes_ingredient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_ingredient
    ADD CONSTRAINT recipes_ingredient_pkey PRIMARY KEY (id);


--
-- Name: recipes_recipe_ingredient recipes_recipe_ingredient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_recipe_ingredient
    ADD CONSTRAINT recipes_recipe_ingredient_pkey PRIMARY KEY (id);


--
-- Name: recipes_recipe recipes_recipe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_recipe
    ADD CONSTRAINT recipes_recipe_pkey PRIMARY KEY (id);


--
-- Name: recipes_recipe_tags recipes_recipe_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_recipe_tags
    ADD CONSTRAINT recipes_recipe_tags_pkey PRIMARY KEY (id);


--
-- Name: recipes_recipe_tags recipes_recipe_tags_recipe_id_tag_id_233281ac_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_recipe_tags
    ADD CONSTRAINT recipes_recipe_tags_recipe_id_tag_id_233281ac_uniq UNIQUE (recipe_id, tag_id);


--
-- Name: recipes_shopping_cart recipes_shopping_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_shopping_cart
    ADD CONSTRAINT recipes_shopping_cart_pkey PRIMARY KEY (id);


--
-- Name: recipes_subscribe recipes_subscribe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_subscribe
    ADD CONSTRAINT recipes_subscribe_pkey PRIMARY KEY (id);


--
-- Name: recipes_tag recipes_tag_color_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_tag
    ADD CONSTRAINT recipes_tag_color_key UNIQUE (color);


--
-- Name: recipes_tag recipes_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_tag
    ADD CONSTRAINT recipes_tag_name_key UNIQUE (name);


--
-- Name: recipes_tag recipes_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_tag
    ADD CONSTRAINT recipes_tag_pkey PRIMARY KEY (id);


--
-- Name: recipes_tag recipes_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_tag
    ADD CONSTRAINT recipes_tag_slug_key UNIQUE (slug);


--
-- Name: recipes_user recipes_user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_user
    ADD CONSTRAINT recipes_user_email_key UNIQUE (email);


--
-- Name: recipes_user_groups recipes_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_user_groups
    ADD CONSTRAINT recipes_user_groups_pkey PRIMARY KEY (id);


--
-- Name: recipes_user_groups recipes_user_groups_user_id_group_id_a993b539_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_user_groups
    ADD CONSTRAINT recipes_user_groups_user_id_group_id_a993b539_uniq UNIQUE (user_id, group_id);


--
-- Name: recipes_user recipes_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_user
    ADD CONSTRAINT recipes_user_pkey PRIMARY KEY (id);


--
-- Name: recipes_user_user_permissions recipes_user_user_permis_user_id_permission_id_07aa1d5b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_user_user_permissions
    ADD CONSTRAINT recipes_user_user_permis_user_id_permission_id_07aa1d5b_uniq UNIQUE (user_id, permission_id);


--
-- Name: recipes_user_user_permissions recipes_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_user_user_permissions
    ADD CONSTRAINT recipes_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: recipes_user recipes_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_user
    ADD CONSTRAINT recipes_user_username_key UNIQUE (username);


--
-- Name: recipes_subscribe unique_user_author; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_subscribe
    ADD CONSTRAINT unique_user_author UNIQUE (user_id, author_id);


--
-- Name: recipes_shopping_cart unique_user_cart; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_shopping_cart
    ADD CONSTRAINT unique_user_cart UNIQUE (user_id, recipe_id);


--
-- Name: recipes_favorite unique_user_favorite; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_favorite
    ADD CONSTRAINT unique_user_favorite UNIQUE (user_id, recipe_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: recipes_favorite_recipe_id_288529df; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_favorite_recipe_id_288529df ON public.recipes_favorite USING btree (recipe_id);


--
-- Name: recipes_favorite_user_id_dd4f6854; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_favorite_user_id_dd4f6854 ON public.recipes_favorite USING btree (user_id);


--
-- Name: recipes_ingredient_name_32dfe6dd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_ingredient_name_32dfe6dd ON public.recipes_ingredient USING btree (name);


--
-- Name: recipes_ingredient_name_32dfe6dd_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_ingredient_name_32dfe6dd_like ON public.recipes_ingredient USING btree (name varchar_pattern_ops);


--
-- Name: recipes_recipe_author_id_7274f74b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_recipe_author_id_7274f74b ON public.recipes_recipe USING btree (author_id);


--
-- Name: recipes_recipe_ingredient_ingredient_id_2ad80610; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_recipe_ingredient_ingredient_id_2ad80610 ON public.recipes_recipe_ingredient USING btree (ingredient_id);


--
-- Name: recipes_recipe_ingredient_recipe_id_bb3c5ada; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_recipe_ingredient_recipe_id_bb3c5ada ON public.recipes_recipe_ingredient USING btree (recipe_id);


--
-- Name: recipes_recipe_tags_recipe_id_e15a4132; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_recipe_tags_recipe_id_e15a4132 ON public.recipes_recipe_tags USING btree (recipe_id);


--
-- Name: recipes_recipe_tags_tag_id_6fe328c4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_recipe_tags_tag_id_6fe328c4 ON public.recipes_recipe_tags USING btree (tag_id);


--
-- Name: recipes_shopping_cart_recipe_id_d4d44125; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_shopping_cart_recipe_id_d4d44125 ON public.recipes_shopping_cart USING btree (recipe_id);


--
-- Name: recipes_shopping_cart_user_id_1879ce1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_shopping_cart_user_id_1879ce1c ON public.recipes_shopping_cart USING btree (user_id);


--
-- Name: recipes_subscribe_author_id_221fab30; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_subscribe_author_id_221fab30 ON public.recipes_subscribe USING btree (author_id);


--
-- Name: recipes_subscribe_user_id_a873ddeb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_subscribe_user_id_a873ddeb ON public.recipes_subscribe USING btree (user_id);


--
-- Name: recipes_tag_color_80798f0a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_tag_color_80798f0a_like ON public.recipes_tag USING btree (color varchar_pattern_ops);


--
-- Name: recipes_tag_name_fdbc724f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_tag_name_fdbc724f_like ON public.recipes_tag USING btree (name varchar_pattern_ops);


--
-- Name: recipes_tag_slug_baa21000_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_tag_slug_baa21000_like ON public.recipes_tag USING btree (slug varchar_pattern_ops);


--
-- Name: recipes_user_email_714cafbd_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_user_email_714cafbd_like ON public.recipes_user USING btree (email varchar_pattern_ops);


--
-- Name: recipes_user_groups_group_id_52ca0dcf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_user_groups_group_id_52ca0dcf ON public.recipes_user_groups USING btree (group_id);


--
-- Name: recipes_user_groups_user_id_22aee5dd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_user_groups_user_id_22aee5dd ON public.recipes_user_groups USING btree (user_id);


--
-- Name: recipes_user_user_permissions_permission_id_1d3e985d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_user_user_permissions_permission_id_1d3e985d ON public.recipes_user_user_permissions USING btree (permission_id);


--
-- Name: recipes_user_user_permissions_user_id_c261c96f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_user_user_permissions_user_id_c261c96f ON public.recipes_user_user_permissions USING btree (user_id);


--
-- Name: recipes_user_username_e7a74f44_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recipes_user_username_e7a74f44_like ON public.recipes_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_recipes_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_recipes_user_id FOREIGN KEY (user_id) REFERENCES public.recipes_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_recipes_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_recipes_user_id FOREIGN KEY (user_id) REFERENCES public.recipes_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipes_favorite recipes_favorite_recipe_id_288529df_fk_recipes_recipe_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_favorite
    ADD CONSTRAINT recipes_favorite_recipe_id_288529df_fk_recipes_recipe_id FOREIGN KEY (recipe_id) REFERENCES public.recipes_recipe(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipes_favorite recipes_favorite_user_id_dd4f6854_fk_recipes_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_favorite
    ADD CONSTRAINT recipes_favorite_user_id_dd4f6854_fk_recipes_user_id FOREIGN KEY (user_id) REFERENCES public.recipes_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipes_recipe recipes_recipe_author_id_7274f74b_fk_recipes_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_recipe
    ADD CONSTRAINT recipes_recipe_author_id_7274f74b_fk_recipes_user_id FOREIGN KEY (author_id) REFERENCES public.recipes_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipes_recipe_ingredient recipes_recipe_ingre_ingredient_id_2ad80610_fk_recipes_i; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_recipe_ingredient
    ADD CONSTRAINT recipes_recipe_ingre_ingredient_id_2ad80610_fk_recipes_i FOREIGN KEY (ingredient_id) REFERENCES public.recipes_ingredient(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipes_recipe_ingredient recipes_recipe_ingre_recipe_id_bb3c5ada_fk_recipes_r; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_recipe_ingredient
    ADD CONSTRAINT recipes_recipe_ingre_recipe_id_bb3c5ada_fk_recipes_r FOREIGN KEY (recipe_id) REFERENCES public.recipes_recipe(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipes_recipe_tags recipes_recipe_tags_recipe_id_e15a4132_fk_recipes_recipe_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_recipe_tags
    ADD CONSTRAINT recipes_recipe_tags_recipe_id_e15a4132_fk_recipes_recipe_id FOREIGN KEY (recipe_id) REFERENCES public.recipes_recipe(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipes_recipe_tags recipes_recipe_tags_tag_id_6fe328c4_fk_recipes_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_recipe_tags
    ADD CONSTRAINT recipes_recipe_tags_tag_id_6fe328c4_fk_recipes_tag_id FOREIGN KEY (tag_id) REFERENCES public.recipes_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipes_shopping_cart recipes_shopping_cart_recipe_id_d4d44125_fk_recipes_recipe_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_shopping_cart
    ADD CONSTRAINT recipes_shopping_cart_recipe_id_d4d44125_fk_recipes_recipe_id FOREIGN KEY (recipe_id) REFERENCES public.recipes_recipe(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipes_shopping_cart recipes_shopping_cart_user_id_1879ce1c_fk_recipes_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_shopping_cart
    ADD CONSTRAINT recipes_shopping_cart_user_id_1879ce1c_fk_recipes_user_id FOREIGN KEY (user_id) REFERENCES public.recipes_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipes_subscribe recipes_subscribe_author_id_221fab30_fk_recipes_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_subscribe
    ADD CONSTRAINT recipes_subscribe_author_id_221fab30_fk_recipes_user_id FOREIGN KEY (author_id) REFERENCES public.recipes_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipes_subscribe recipes_subscribe_user_id_a873ddeb_fk_recipes_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_subscribe
    ADD CONSTRAINT recipes_subscribe_user_id_a873ddeb_fk_recipes_user_id FOREIGN KEY (user_id) REFERENCES public.recipes_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipes_user_groups recipes_user_groups_group_id_52ca0dcf_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_user_groups
    ADD CONSTRAINT recipes_user_groups_group_id_52ca0dcf_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipes_user_groups recipes_user_groups_user_id_22aee5dd_fk_recipes_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_user_groups
    ADD CONSTRAINT recipes_user_groups_user_id_22aee5dd_fk_recipes_user_id FOREIGN KEY (user_id) REFERENCES public.recipes_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipes_user_user_permissions recipes_user_user_pe_permission_id_1d3e985d_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_user_user_permissions
    ADD CONSTRAINT recipes_user_user_pe_permission_id_1d3e985d_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recipes_user_user_permissions recipes_user_user_pe_user_id_c261c96f_fk_recipes_u; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_user_user_permissions
    ADD CONSTRAINT recipes_user_user_pe_user_id_c261c96f_fk_recipes_u FOREIGN KEY (user_id) REFERENCES public.recipes_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.12 (Debian 13.12-1.pgdg120+1)
-- Dumped by pg_dump version 13.12 (Debian 13.12-1.pgdg120+1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

