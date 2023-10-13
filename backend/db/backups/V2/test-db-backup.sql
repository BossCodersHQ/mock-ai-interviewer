toc.dat                                                                                             0000600 0004000 0002000 00000042074 14477277311 0014463 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP               	    
        {           test-db    15.4 (Debian 15.4-1.pgdg120+1)    15.3 ?    _           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         `           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         a           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         b           1262    16384    test-db    DATABASE     t   CREATE DATABASE "test-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE "test-db";
                test    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false         c           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4         [           1247    16774    userrole    TYPE     R   CREATE TYPE public.userrole AS ENUM (
    'ADMIN',
    'NORMAL',
    'ADVISOR'
);
    DROP TYPE public.userrole;
       public          test    false    4         �            1259    16752    alembic_version    TABLE     X   CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);
 #   DROP TABLE public.alembic_version;
       public         heap    test    false    4         �            1259    16792    question    TABLE     �   CREATE TABLE public.question (
    uid integer NOT NULL,
    quiz_id integer NOT NULL,
    question character varying NOT NULL
);
    DROP TABLE public.question;
       public         heap    test    false    4         �            1259    16838    question_response    TABLE     �   CREATE TABLE public.question_response (
    quiz_attempt_id integer NOT NULL,
    question_id integer NOT NULL,
    response_id integer NOT NULL
);
 %   DROP TABLE public.question_response;
       public         heap    test    false    4         �            1259    16791    question_uid_seq    SEQUENCE     �   CREATE SEQUENCE public.question_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.question_uid_seq;
       public          test    false    222    4         d           0    0    question_uid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.question_uid_seq OWNED BY public.question.uid;
          public          test    false    221         �            1259    16758    quiz    TABLE     7   CREATE TABLE public.quiz (
    uid integer NOT NULL
);
    DROP TABLE public.quiz;
       public         heap    test    false    4         �            1259    16806    quiz_attempt    TABLE     �   CREATE TABLE public.quiz_attempt (
    uid integer NOT NULL,
    user_id integer NOT NULL,
    quiz_id integer NOT NULL,
    end_time timestamp without time zone NOT NULL,
    subjects character varying NOT NULL
);
     DROP TABLE public.quiz_attempt;
       public         heap    test    false    4         �            1259    16805    quiz_attempt_uid_seq    SEQUENCE     �   CREATE SEQUENCE public.quiz_attempt_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.quiz_attempt_uid_seq;
       public          test    false    224    4         e           0    0    quiz_attempt_uid_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.quiz_attempt_uid_seq OWNED BY public.quiz_attempt.uid;
          public          test    false    223         �            1259    16757    quiz_uid_seq    SEQUENCE     �   CREATE SEQUENCE public.quiz_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.quiz_uid_seq;
       public          test    false    4    216         f           0    0    quiz_uid_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.quiz_uid_seq OWNED BY public.quiz.uid;
          public          test    false    215         �            1259    16765    response    TABLE     b   CREATE TABLE public.response (
    uid integer NOT NULL,
    answer character varying NOT NULL
);
    DROP TABLE public.response;
       public         heap    test    false    4         �            1259    16764    response_uid_seq    SEQUENCE     �   CREATE SEQUENCE public.response_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.response_uid_seq;
       public          test    false    4    218         g           0    0    response_uid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.response_uid_seq OWNED BY public.response.uid;
          public          test    false    217         �            1259    16825    slot    TABLE     �   CREATE TABLE public.slot (
    uid integer NOT NULL,
    user_id integer,
    start_time timestamp without time zone NOT NULL,
    advisor_name character varying NOT NULL
);
    DROP TABLE public.slot;
       public         heap    test    false    4         �            1259    16824    slot_uid_seq    SEQUENCE     �   CREATE SEQUENCE public.slot_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.slot_uid_seq;
       public          test    false    226    4         h           0    0    slot_uid_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.slot_uid_seq OWNED BY public.slot.uid;
          public          test    false    225         �            1259    16782    user    TABLE     F  CREATE TABLE public."user" (
    id integer NOT NULL,
    name character varying NOT NULL,
    role public.userrole NOT NULL,
    email character varying(320) NOT NULL,
    hashed_password character varying(1024) NOT NULL,
    is_active boolean NOT NULL,
    is_superuser boolean NOT NULL,
    is_verified boolean NOT NULL
);
    DROP TABLE public."user";
       public         heap    test    false    859    4         �            1259    16781    user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          test    false    4    220         i           0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
          public          test    false    219         �           2604    16795    question uid    DEFAULT     l   ALTER TABLE ONLY public.question ALTER COLUMN uid SET DEFAULT nextval('public.question_uid_seq'::regclass);
 ;   ALTER TABLE public.question ALTER COLUMN uid DROP DEFAULT;
       public          test    false    222    221    222         �           2604    16761    quiz uid    DEFAULT     d   ALTER TABLE ONLY public.quiz ALTER COLUMN uid SET DEFAULT nextval('public.quiz_uid_seq'::regclass);
 7   ALTER TABLE public.quiz ALTER COLUMN uid DROP DEFAULT;
       public          test    false    215    216    216         �           2604    16809    quiz_attempt uid    DEFAULT     t   ALTER TABLE ONLY public.quiz_attempt ALTER COLUMN uid SET DEFAULT nextval('public.quiz_attempt_uid_seq'::regclass);
 ?   ALTER TABLE public.quiz_attempt ALTER COLUMN uid DROP DEFAULT;
       public          test    false    224    223    224         �           2604    16768    response uid    DEFAULT     l   ALTER TABLE ONLY public.response ALTER COLUMN uid SET DEFAULT nextval('public.response_uid_seq'::regclass);
 ;   ALTER TABLE public.response ALTER COLUMN uid DROP DEFAULT;
       public          test    false    217    218    218         �           2604    16828    slot uid    DEFAULT     d   ALTER TABLE ONLY public.slot ALTER COLUMN uid SET DEFAULT nextval('public.slot_uid_seq'::regclass);
 7   ALTER TABLE public.slot ALTER COLUMN uid DROP DEFAULT;
       public          test    false    226    225    226         �           2604    16785    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          test    false    219    220    220         O          0    16752    alembic_version 
   TABLE DATA           6   COPY public.alembic_version (version_num) FROM stdin;
    public          test    false    214       3407.dat W          0    16792    question 
   TABLE DATA           :   COPY public.question (uid, quiz_id, question) FROM stdin;
    public          test    false    222       3415.dat \          0    16838    question_response 
   TABLE DATA           V   COPY public.question_response (quiz_attempt_id, question_id, response_id) FROM stdin;
    public          test    false    227       3420.dat Q          0    16758    quiz 
   TABLE DATA           #   COPY public.quiz (uid) FROM stdin;
    public          test    false    216       3409.dat Y          0    16806    quiz_attempt 
   TABLE DATA           Q   COPY public.quiz_attempt (uid, user_id, quiz_id, end_time, subjects) FROM stdin;
    public          test    false    224       3417.dat S          0    16765    response 
   TABLE DATA           /   COPY public.response (uid, answer) FROM stdin;
    public          test    false    218       3411.dat [          0    16825    slot 
   TABLE DATA           F   COPY public.slot (uid, user_id, start_time, advisor_name) FROM stdin;
    public          test    false    226       3419.dat U          0    16782    user 
   TABLE DATA           n   COPY public."user" (id, name, role, email, hashed_password, is_active, is_superuser, is_verified) FROM stdin;
    public          test    false    220       3413.dat j           0    0    question_uid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.question_uid_seq', 9, true);
          public          test    false    221         k           0    0    quiz_attempt_uid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.quiz_attempt_uid_seq', 8, true);
          public          test    false    223         l           0    0    quiz_uid_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.quiz_uid_seq', 3, true);
          public          test    false    215         m           0    0    response_uid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.response_uid_seq', 5, true);
          public          test    false    217         n           0    0    slot_uid_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.slot_uid_seq', 7, true);
          public          test    false    225         o           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 2, true);
          public          test    false    219         �           2606    16756 #   alembic_version alembic_version_pkc 
   CONSTRAINT     j   ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);
 M   ALTER TABLE ONLY public.alembic_version DROP CONSTRAINT alembic_version_pkc;
       public            test    false    214         �           2606    16799    question question_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pkey PRIMARY KEY (uid);
 @   ALTER TABLE ONLY public.question DROP CONSTRAINT question_pkey;
       public            test    false    222         �           2606    16842 (   question_response question_response_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.question_response
    ADD CONSTRAINT question_response_pkey PRIMARY KEY (quiz_attempt_id, question_id, response_id);
 R   ALTER TABLE ONLY public.question_response DROP CONSTRAINT question_response_pkey;
       public            test    false    227    227    227         �           2606    16813    quiz_attempt quiz_attempt_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.quiz_attempt
    ADD CONSTRAINT quiz_attempt_pkey PRIMARY KEY (uid);
 H   ALTER TABLE ONLY public.quiz_attempt DROP CONSTRAINT quiz_attempt_pkey;
       public            test    false    224         �           2606    16763    quiz quiz_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.quiz
    ADD CONSTRAINT quiz_pkey PRIMARY KEY (uid);
 8   ALTER TABLE ONLY public.quiz DROP CONSTRAINT quiz_pkey;
       public            test    false    216         �           2606    16772    response response_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.response
    ADD CONSTRAINT response_pkey PRIMARY KEY (uid);
 @   ALTER TABLE ONLY public.response DROP CONSTRAINT response_pkey;
       public            test    false    218         �           2606    16832    slot slot_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.slot
    ADD CONSTRAINT slot_pkey PRIMARY KEY (uid);
 8   ALTER TABLE ONLY public.slot DROP CONSTRAINT slot_pkey;
       public            test    false    226         �           2606    16789    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            test    false    220         �           1259    16790    ix_user_email    INDEX     H   CREATE UNIQUE INDEX ix_user_email ON public."user" USING btree (email);
 !   DROP INDEX public.ix_user_email;
       public            test    false    220         �           2606    16800    question question_quiz_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_quiz_id_fkey FOREIGN KEY (quiz_id) REFERENCES public.quiz(uid);
 H   ALTER TABLE ONLY public.question DROP CONSTRAINT question_quiz_id_fkey;
       public          test    false    216    222    3244         �           2606    16843 4   question_response question_response_question_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.question_response
    ADD CONSTRAINT question_response_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.question(uid);
 ^   ALTER TABLE ONLY public.question_response DROP CONSTRAINT question_response_question_id_fkey;
       public          test    false    227    3251    222         �           2606    16848 8   question_response question_response_quiz_attempt_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.question_response
    ADD CONSTRAINT question_response_quiz_attempt_id_fkey FOREIGN KEY (quiz_attempt_id) REFERENCES public.quiz_attempt(uid);
 b   ALTER TABLE ONLY public.question_response DROP CONSTRAINT question_response_quiz_attempt_id_fkey;
       public          test    false    3253    227    224         �           2606    16853 4   question_response question_response_response_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.question_response
    ADD CONSTRAINT question_response_response_id_fkey FOREIGN KEY (response_id) REFERENCES public.response(uid);
 ^   ALTER TABLE ONLY public.question_response DROP CONSTRAINT question_response_response_id_fkey;
       public          test    false    218    3246    227         �           2606    16814 &   quiz_attempt quiz_attempt_quiz_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.quiz_attempt
    ADD CONSTRAINT quiz_attempt_quiz_id_fkey FOREIGN KEY (quiz_id) REFERENCES public.quiz(uid);
 P   ALTER TABLE ONLY public.quiz_attempt DROP CONSTRAINT quiz_attempt_quiz_id_fkey;
       public          test    false    3244    224    216         �           2606    16819 &   quiz_attempt quiz_attempt_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.quiz_attempt
    ADD CONSTRAINT quiz_attempt_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);
 P   ALTER TABLE ONLY public.quiz_attempt DROP CONSTRAINT quiz_attempt_user_id_fkey;
       public          test    false    220    3249    224         �           2606    16833    slot slot_user_id_fkey    FK CONSTRAINT     v   ALTER TABLE ONLY public.slot
    ADD CONSTRAINT slot_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);
 @   ALTER TABLE ONLY public.slot DROP CONSTRAINT slot_user_id_fkey;
       public          test    false    226    3249    220                                                                                                                                                                                                                                                                                                                                                                                                                                                                            3407.dat                                                                                            0000600 0004000 0002000 00000000022 14477277311 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        ce5cc72910fc
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3415.dat                                                                                            0000600 0004000 0002000 00000000172 14477277311 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	test q 1
2	1	test q 2
3	1	test q 3
4	2	test q 4
5	2	test q 5
6	2	test q 6
7	3	test q 7
8	3	test q 8
9	3	test q 9
\.


                                                                                                                                                                                                                                                                                                                                                                                                      3420.dat                                                                                            0000600 0004000 0002000 00000000225 14477277311 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1
1	2	3
1	3	4
2	1	4
2	2	5
2	3	1
3	1	3
3	2	5
3	3	4
4	1	1
4	2	4
4	3	5
5	1	5
5	2	4
5	3	2
6	1	5
6	2	5
6	3	2
7	1	5
7	2	1
7	3	3
8	1	5
8	2	2
8	3	3
\.


                                                                                                                                                                                                                                                                                                                                                                           3409.dat                                                                                            0000600 0004000 0002000 00000000013 14477277311 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1
2
3
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3417.dat                                                                                            0000600 0004000 0002000 00000001317 14477277311 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	2023-09-03 13:09:19.388048	["English", "RE", "Computing", "History", "PSHE", "Geography"]
2	1	1	2023-09-03 13:46:00.953743	["Music", "PE", "PSHE", "History", "RE", "Computing"]
3	2	1	2023-09-08 09:57:50.641206	["Computing", "PSHE", "Art", "Music", "RE", "Science"]
4	2	1	2023-09-08 10:31:53.744017	["PSHE", "PE", "Music", "Maths", "Geography", "Art"]
5	1	1	2023-09-08 11:33:50.827554	["History", "RE", "Art", "PSHE", "Music", "English"]
6	1	1	2023-09-08 11:37:21.949508	["PE", "Maths", "RE", "Computing", "History", "Music"]
7	2	1	2023-09-10 07:52:02.839143	["Computing", "RE", "Science", "Maths", "PSHE", "English"]
8	2	1	2023-09-10 08:00:40.949982	["History", "English", "Maths", "Music", "PE", "Science"]
\.


                                                                                                                                                                                                                                                                                                                 3411.dat                                                                                            0000600 0004000 0002000 00000000107 14477277311 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Strongly Disagree
2	Disagree
3	Neutral
4	Agree
5	Strongly Agree
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                         3419.dat                                                                                            0000600 0004000 0002000 00000000354 14477277311 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2	2023-09-03 14:01:54.827	Mr Adam
2	2	2023-09-03 09:00:00	Mr Adam
3	2	2023-09-10 08:01:30.301	Lukene
4	\N	2023-11-05 09:00:00	Lukene
5	\N	2023-11-04 09:00:00	Lukene
6	\N	2023-11-02 09:00:00	Lukene
7	\N	2023-11-01 09:00:00	Lukene
\.


                                                                                                                                                                                                                                                                                    3413.dat                                                                                            0000600 0004000 0002000 00000000322 14477277311 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Hello World	NORMAL	user@example.com	$2b$12$E3nO2xO0sbuOHmRtwKfSweirznhdOpMV/l2L0STuuxLJLsbwJxiUG	t	f	f
2	string	ADMIN	admin@example.com	$2b$12$5..Q6hNAxUatdnmSjB2ZOudRc7zGPaYFQ29LshAi3iJ7.lOiMwoOG	t	t	f
\.


                                                                                                                                                                                                                                                                                                              restore.sql                                                                                         0000600 0004000 0002000 00000032600 14477277311 0015402 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Debian 15.4-1.pgdg120+1)
-- Dumped by pg_dump version 15.3

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

DROP DATABASE "test-db";
--
-- Name: test-db; Type: DATABASE; Schema: -; Owner: test
--

CREATE DATABASE "test-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE "test-db" OWNER TO test;

\connect -reuse-previous=on "dbname='test-db'"

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: userrole; Type: TYPE; Schema: public; Owner: test
--

CREATE TYPE public.userrole AS ENUM (
    'ADMIN',
    'NORMAL',
    'ADVISOR'
);


ALTER TYPE public.userrole OWNER TO test;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: test
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO test;

--
-- Name: question; Type: TABLE; Schema: public; Owner: test
--

CREATE TABLE public.question (
    uid integer NOT NULL,
    quiz_id integer NOT NULL,
    question character varying NOT NULL
);


ALTER TABLE public.question OWNER TO test;

--
-- Name: question_response; Type: TABLE; Schema: public; Owner: test
--

CREATE TABLE public.question_response (
    quiz_attempt_id integer NOT NULL,
    question_id integer NOT NULL,
    response_id integer NOT NULL
);


ALTER TABLE public.question_response OWNER TO test;

--
-- Name: question_uid_seq; Type: SEQUENCE; Schema: public; Owner: test
--

CREATE SEQUENCE public.question_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.question_uid_seq OWNER TO test;

--
-- Name: question_uid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test
--

ALTER SEQUENCE public.question_uid_seq OWNED BY public.question.uid;


--
-- Name: quiz; Type: TABLE; Schema: public; Owner: test
--

CREATE TABLE public.quiz (
    uid integer NOT NULL
);


ALTER TABLE public.quiz OWNER TO test;

--
-- Name: quiz_attempt; Type: TABLE; Schema: public; Owner: test
--

CREATE TABLE public.quiz_attempt (
    uid integer NOT NULL,
    user_id integer NOT NULL,
    quiz_id integer NOT NULL,
    end_time timestamp without time zone NOT NULL,
    subjects character varying NOT NULL
);


ALTER TABLE public.quiz_attempt OWNER TO test;

--
-- Name: quiz_attempt_uid_seq; Type: SEQUENCE; Schema: public; Owner: test
--

CREATE SEQUENCE public.quiz_attempt_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quiz_attempt_uid_seq OWNER TO test;

--
-- Name: quiz_attempt_uid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test
--

ALTER SEQUENCE public.quiz_attempt_uid_seq OWNED BY public.quiz_attempt.uid;


--
-- Name: quiz_uid_seq; Type: SEQUENCE; Schema: public; Owner: test
--

CREATE SEQUENCE public.quiz_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quiz_uid_seq OWNER TO test;

--
-- Name: quiz_uid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test
--

ALTER SEQUENCE public.quiz_uid_seq OWNED BY public.quiz.uid;


--
-- Name: response; Type: TABLE; Schema: public; Owner: test
--

CREATE TABLE public.response (
    uid integer NOT NULL,
    answer character varying NOT NULL
);


ALTER TABLE public.response OWNER TO test;

--
-- Name: response_uid_seq; Type: SEQUENCE; Schema: public; Owner: test
--

CREATE SEQUENCE public.response_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.response_uid_seq OWNER TO test;

--
-- Name: response_uid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test
--

ALTER SEQUENCE public.response_uid_seq OWNED BY public.response.uid;


--
-- Name: slot; Type: TABLE; Schema: public; Owner: test
--

CREATE TABLE public.slot (
    uid integer NOT NULL,
    user_id integer,
    start_time timestamp without time zone NOT NULL,
    advisor_name character varying NOT NULL
);


ALTER TABLE public.slot OWNER TO test;

--
-- Name: slot_uid_seq; Type: SEQUENCE; Schema: public; Owner: test
--

CREATE SEQUENCE public.slot_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.slot_uid_seq OWNER TO test;

--
-- Name: slot_uid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test
--

ALTER SEQUENCE public.slot_uid_seq OWNED BY public.slot.uid;


--
-- Name: user; Type: TABLE; Schema: public; Owner: test
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    name character varying NOT NULL,
    role public.userrole NOT NULL,
    email character varying(320) NOT NULL,
    hashed_password character varying(1024) NOT NULL,
    is_active boolean NOT NULL,
    is_superuser boolean NOT NULL,
    is_verified boolean NOT NULL
);


ALTER TABLE public."user" OWNER TO test;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: test
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO test;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: question uid; Type: DEFAULT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.question ALTER COLUMN uid SET DEFAULT nextval('public.question_uid_seq'::regclass);


--
-- Name: quiz uid; Type: DEFAULT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.quiz ALTER COLUMN uid SET DEFAULT nextval('public.quiz_uid_seq'::regclass);


--
-- Name: quiz_attempt uid; Type: DEFAULT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.quiz_attempt ALTER COLUMN uid SET DEFAULT nextval('public.quiz_attempt_uid_seq'::regclass);


--
-- Name: response uid; Type: DEFAULT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.response ALTER COLUMN uid SET DEFAULT nextval('public.response_uid_seq'::regclass);


--
-- Name: slot uid; Type: DEFAULT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.slot ALTER COLUMN uid SET DEFAULT nextval('public.slot_uid_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: test
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.alembic_version (version_num) FROM stdin;
\.
COPY public.alembic_version (version_num) FROM '$$PATH$$/3407.dat';

--
-- Data for Name: question; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.question (uid, quiz_id, question) FROM stdin;
\.
COPY public.question (uid, quiz_id, question) FROM '$$PATH$$/3415.dat';

--
-- Data for Name: question_response; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.question_response (quiz_attempt_id, question_id, response_id) FROM stdin;
\.
COPY public.question_response (quiz_attempt_id, question_id, response_id) FROM '$$PATH$$/3420.dat';

--
-- Data for Name: quiz; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.quiz (uid) FROM stdin;
\.
COPY public.quiz (uid) FROM '$$PATH$$/3409.dat';

--
-- Data for Name: quiz_attempt; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.quiz_attempt (uid, user_id, quiz_id, end_time, subjects) FROM stdin;
\.
COPY public.quiz_attempt (uid, user_id, quiz_id, end_time, subjects) FROM '$$PATH$$/3417.dat';

--
-- Data for Name: response; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.response (uid, answer) FROM stdin;
\.
COPY public.response (uid, answer) FROM '$$PATH$$/3411.dat';

--
-- Data for Name: slot; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.slot (uid, user_id, start_time, advisor_name) FROM stdin;
\.
COPY public.slot (uid, user_id, start_time, advisor_name) FROM '$$PATH$$/3419.dat';

--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public."user" (id, name, role, email, hashed_password, is_active, is_superuser, is_verified) FROM stdin;
\.
COPY public."user" (id, name, role, email, hashed_password, is_active, is_superuser, is_verified) FROM '$$PATH$$/3413.dat';

--
-- Name: question_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.question_uid_seq', 9, true);


--
-- Name: quiz_attempt_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.quiz_attempt_uid_seq', 8, true);


--
-- Name: quiz_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.quiz_uid_seq', 3, true);


--
-- Name: response_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.response_uid_seq', 5, true);


--
-- Name: slot_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.slot_uid_seq', 7, true);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.user_id_seq', 2, true);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: question question_pkey; Type: CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pkey PRIMARY KEY (uid);


--
-- Name: question_response question_response_pkey; Type: CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.question_response
    ADD CONSTRAINT question_response_pkey PRIMARY KEY (quiz_attempt_id, question_id, response_id);


--
-- Name: quiz_attempt quiz_attempt_pkey; Type: CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.quiz_attempt
    ADD CONSTRAINT quiz_attempt_pkey PRIMARY KEY (uid);


--
-- Name: quiz quiz_pkey; Type: CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.quiz
    ADD CONSTRAINT quiz_pkey PRIMARY KEY (uid);


--
-- Name: response response_pkey; Type: CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.response
    ADD CONSTRAINT response_pkey PRIMARY KEY (uid);


--
-- Name: slot slot_pkey; Type: CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.slot
    ADD CONSTRAINT slot_pkey PRIMARY KEY (uid);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: ix_user_email; Type: INDEX; Schema: public; Owner: test
--

CREATE UNIQUE INDEX ix_user_email ON public."user" USING btree (email);


--
-- Name: question question_quiz_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_quiz_id_fkey FOREIGN KEY (quiz_id) REFERENCES public.quiz(uid);


--
-- Name: question_response question_response_question_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.question_response
    ADD CONSTRAINT question_response_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.question(uid);


--
-- Name: question_response question_response_quiz_attempt_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.question_response
    ADD CONSTRAINT question_response_quiz_attempt_id_fkey FOREIGN KEY (quiz_attempt_id) REFERENCES public.quiz_attempt(uid);


--
-- Name: question_response question_response_response_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.question_response
    ADD CONSTRAINT question_response_response_id_fkey FOREIGN KEY (response_id) REFERENCES public.response(uid);


--
-- Name: quiz_attempt quiz_attempt_quiz_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.quiz_attempt
    ADD CONSTRAINT quiz_attempt_quiz_id_fkey FOREIGN KEY (quiz_id) REFERENCES public.quiz(uid);


--
-- Name: quiz_attempt quiz_attempt_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.quiz_attempt
    ADD CONSTRAINT quiz_attempt_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);


--
-- Name: slot slot_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.slot
    ADD CONSTRAINT slot_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                