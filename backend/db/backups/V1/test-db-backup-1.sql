toc.dat                                                                                             0000600 0004000 0002000 00000040037 14475061247 0014455 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       '    (                {           test-db    15.4 (Debian 15.4-1.pgdg120+1)    15.3 ;    [           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         \           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         ]           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         ^           1262    16384    test-db    DATABASE     t   CREATE DATABASE "test-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE "test-db";
                test    false         �            1259    16589    alembic_version    TABLE     X   CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);
 #   DROP TABLE public.alembic_version;
       public         heap    test    false         �            1259    16645    question    TABLE     �   CREATE TABLE public.question (
    uid integer NOT NULL,
    quiz_id integer NOT NULL,
    question character varying NOT NULL
);
    DROP TABLE public.question;
       public         heap    test    false         �            1259    16679    question_response    TABLE     �   CREATE TABLE public.question_response (
    quiz_attempt_id integer NOT NULL,
    question_id integer NOT NULL,
    response_id integer NOT NULL
);
 %   DROP TABLE public.question_response;
       public         heap    test    false         �            1259    16644    question_uid_seq    SEQUENCE     �   CREATE SEQUENCE public.question_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.question_uid_seq;
       public          test    false    222         _           0    0    question_uid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.question_uid_seq OWNED BY public.question.uid;
          public          test    false    221         �            1259    16611    quiz    TABLE     7   CREATE TABLE public.quiz (
    uid integer NOT NULL
);
    DROP TABLE public.quiz;
       public         heap    test    false         �            1259    16659    quiz_attempt    TABLE     �   CREATE TABLE public.quiz_attempt (
    uid integer NOT NULL,
    quiz_id integer NOT NULL,
    end_time timestamp without time zone NOT NULL,
    user_id integer NOT NULL,
    subjects character varying NOT NULL
);
     DROP TABLE public.quiz_attempt;
       public         heap    test    false         �            1259    16658    quiz_attempt_uid_seq    SEQUENCE     �   CREATE SEQUENCE public.quiz_attempt_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.quiz_attempt_uid_seq;
       public          test    false    224         `           0    0    quiz_attempt_uid_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.quiz_attempt_uid_seq OWNED BY public.quiz_attempt.uid;
          public          test    false    223         �            1259    16610    quiz_uid_seq    SEQUENCE     �   CREATE SEQUENCE public.quiz_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.quiz_uid_seq;
       public          test    false    216         a           0    0    quiz_uid_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.quiz_uid_seq OWNED BY public.quiz.uid;
          public          test    false    215         �            1259    16671    response    TABLE     b   CREATE TABLE public.response (
    uid integer NOT NULL,
    answer character varying NOT NULL
);
    DROP TABLE public.response;
       public         heap    test    false         �            1259    16670    response_uid_seq    SEQUENCE     �   CREATE SEQUENCE public.response_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.response_uid_seq;
       public          test    false    226         b           0    0    response_uid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.response_uid_seq OWNED BY public.response.uid;
          public          test    false    225         �            1259    16618    slot    TABLE     �   CREATE TABLE public.slot (
    uid integer NOT NULL,
    start_time timestamp without time zone NOT NULL,
    advisor_name character varying NOT NULL,
    user_id integer
);
    DROP TABLE public.slot;
       public         heap    test    false         �            1259    16617    slot_uid_seq    SEQUENCE     �   CREATE SEQUENCE public.slot_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.slot_uid_seq;
       public          test    false    218         c           0    0    slot_uid_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.slot_uid_seq OWNED BY public.slot.uid;
          public          test    false    217         �            1259    16636    user    TABLE     �   CREATE TABLE public."user" (
    uid integer NOT NULL,
    username character varying NOT NULL,
    password_hash character varying NOT NULL,
    salt character varying NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public."user";
       public         heap    test    false         �            1259    16635    user_uid_seq    SEQUENCE     �   CREATE SEQUENCE public.user_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.user_uid_seq;
       public          test    false    220         d           0    0    user_uid_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.user_uid_seq OWNED BY public."user".uid;
          public          test    false    219         �           2604    16648    question uid    DEFAULT     l   ALTER TABLE ONLY public.question ALTER COLUMN uid SET DEFAULT nextval('public.question_uid_seq'::regclass);
 ;   ALTER TABLE public.question ALTER COLUMN uid DROP DEFAULT;
       public          test    false    222    221    222         �           2604    16614    quiz uid    DEFAULT     d   ALTER TABLE ONLY public.quiz ALTER COLUMN uid SET DEFAULT nextval('public.quiz_uid_seq'::regclass);
 7   ALTER TABLE public.quiz ALTER COLUMN uid DROP DEFAULT;
       public          test    false    216    215    216         �           2604    16662    quiz_attempt uid    DEFAULT     t   ALTER TABLE ONLY public.quiz_attempt ALTER COLUMN uid SET DEFAULT nextval('public.quiz_attempt_uid_seq'::regclass);
 ?   ALTER TABLE public.quiz_attempt ALTER COLUMN uid DROP DEFAULT;
       public          test    false    223    224    224         �           2604    16674    response uid    DEFAULT     l   ALTER TABLE ONLY public.response ALTER COLUMN uid SET DEFAULT nextval('public.response_uid_seq'::regclass);
 ;   ALTER TABLE public.response ALTER COLUMN uid DROP DEFAULT;
       public          test    false    225    226    226         �           2604    16621    slot uid    DEFAULT     d   ALTER TABLE ONLY public.slot ALTER COLUMN uid SET DEFAULT nextval('public.slot_uid_seq'::regclass);
 7   ALTER TABLE public.slot ALTER COLUMN uid DROP DEFAULT;
       public          test    false    217    218    218         �           2604    16639    user uid    DEFAULT     f   ALTER TABLE ONLY public."user" ALTER COLUMN uid SET DEFAULT nextval('public.user_uid_seq'::regclass);
 9   ALTER TABLE public."user" ALTER COLUMN uid DROP DEFAULT;
       public          test    false    219    220    220         K          0    16589    alembic_version 
   TABLE DATA           6   COPY public.alembic_version (version_num) FROM stdin;
    public          test    false    214       3403.dat S          0    16645    question 
   TABLE DATA           :   COPY public.question (uid, quiz_id, question) FROM stdin;
    public          test    false    222       3411.dat X          0    16679    question_response 
   TABLE DATA           V   COPY public.question_response (quiz_attempt_id, question_id, response_id) FROM stdin;
    public          test    false    227       3416.dat M          0    16611    quiz 
   TABLE DATA           #   COPY public.quiz (uid) FROM stdin;
    public          test    false    216       3405.dat U          0    16659    quiz_attempt 
   TABLE DATA           Q   COPY public.quiz_attempt (uid, quiz_id, end_time, user_id, subjects) FROM stdin;
    public          test    false    224       3413.dat W          0    16671    response 
   TABLE DATA           /   COPY public.response (uid, answer) FROM stdin;
    public          test    false    226       3415.dat O          0    16618    slot 
   TABLE DATA           F   COPY public.slot (uid, start_time, advisor_name, user_id) FROM stdin;
    public          test    false    218       3407.dat Q          0    16636    user 
   TABLE DATA           J   COPY public."user" (uid, username, password_hash, salt, name) FROM stdin;
    public          test    false    220       3409.dat e           0    0    question_uid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.question_uid_seq', 10, true);
          public          test    false    221         f           0    0    quiz_attempt_uid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.quiz_attempt_uid_seq', 4, true);
          public          test    false    223         g           0    0    quiz_uid_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.quiz_uid_seq', 5, true);
          public          test    false    215         h           0    0    response_uid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.response_uid_seq', 25, true);
          public          test    false    225         i           0    0    slot_uid_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.slot_uid_seq', 4, true);
          public          test    false    217         j           0    0    user_uid_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.user_uid_seq', 6, true);
          public          test    false    219         �           2606    16593 #   alembic_version alembic_version_pkc 
   CONSTRAINT     j   ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);
 M   ALTER TABLE ONLY public.alembic_version DROP CONSTRAINT alembic_version_pkc;
       public            test    false    214         �           2606    16652    question question_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pkey PRIMARY KEY (uid);
 @   ALTER TABLE ONLY public.question DROP CONSTRAINT question_pkey;
       public            test    false    222         �           2606    16683 (   question_response question_response_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.question_response
    ADD CONSTRAINT question_response_pkey PRIMARY KEY (quiz_attempt_id, question_id, response_id);
 R   ALTER TABLE ONLY public.question_response DROP CONSTRAINT question_response_pkey;
       public            test    false    227    227    227         �           2606    16664    quiz_attempt quiz_attempt_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.quiz_attempt
    ADD CONSTRAINT quiz_attempt_pkey PRIMARY KEY (uid);
 H   ALTER TABLE ONLY public.quiz_attempt DROP CONSTRAINT quiz_attempt_pkey;
       public            test    false    224         �           2606    16616    quiz quiz_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.quiz
    ADD CONSTRAINT quiz_pkey PRIMARY KEY (uid);
 8   ALTER TABLE ONLY public.quiz DROP CONSTRAINT quiz_pkey;
       public            test    false    216         �           2606    16678    response response_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.response
    ADD CONSTRAINT response_pkey PRIMARY KEY (uid);
 @   ALTER TABLE ONLY public.response DROP CONSTRAINT response_pkey;
       public            test    false    226         �           2606    16625    slot slot_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.slot
    ADD CONSTRAINT slot_pkey PRIMARY KEY (uid);
 8   ALTER TABLE ONLY public.slot DROP CONSTRAINT slot_pkey;
       public            test    false    218         �           2606    16643    user user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (uid);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            test    false    220         �           2606    16653    question question_quiz_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_quiz_id_fkey FOREIGN KEY (quiz_id) REFERENCES public.quiz(uid);
 H   ALTER TABLE ONLY public.question DROP CONSTRAINT question_quiz_id_fkey;
       public          test    false    222    216    3241         �           2606    16684 4   question_response question_response_question_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.question_response
    ADD CONSTRAINT question_response_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.question(uid);
 ^   ALTER TABLE ONLY public.question_response DROP CONSTRAINT question_response_question_id_fkey;
       public          test    false    3247    222    227         �           2606    16689 8   question_response question_response_quiz_attempt_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.question_response
    ADD CONSTRAINT question_response_quiz_attempt_id_fkey FOREIGN KEY (quiz_attempt_id) REFERENCES public.quiz_attempt(uid);
 b   ALTER TABLE ONLY public.question_response DROP CONSTRAINT question_response_quiz_attempt_id_fkey;
       public          test    false    227    3249    224         �           2606    16694 4   question_response question_response_response_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.question_response
    ADD CONSTRAINT question_response_response_id_fkey FOREIGN KEY (response_id) REFERENCES public.response(uid);
 ^   ALTER TABLE ONLY public.question_response DROP CONSTRAINT question_response_response_id_fkey;
       public          test    false    3251    227    226         �           2606    16665 &   quiz_attempt quiz_attempt_quiz_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.quiz_attempt
    ADD CONSTRAINT quiz_attempt_quiz_id_fkey FOREIGN KEY (quiz_id) REFERENCES public.quiz(uid);
 P   ALTER TABLE ONLY public.quiz_attempt DROP CONSTRAINT quiz_attempt_quiz_id_fkey;
       public          test    false    216    3241    224         �           2606    16701 &   quiz_attempt quiz_attempt_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.quiz_attempt
    ADD CONSTRAINT quiz_attempt_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(uid);
 P   ALTER TABLE ONLY public.quiz_attempt DROP CONSTRAINT quiz_attempt_user_id_fkey;
       public          test    false    224    3245    220         �           2606    16706    slot slot_user_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.slot
    ADD CONSTRAINT slot_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(uid);
 @   ALTER TABLE ONLY public.slot DROP CONSTRAINT slot_user_id_fkey;
       public          test    false    220    3245    218                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         3403.dat                                                                                            0000600 0004000 0002000 00000000022 14475061247 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        a819ccb557c1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3411.dat                                                                                            0000600 0004000 0002000 00000000216 14475061247 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        8	5	I really like solving logical problems.
9	5	I need there to be a right answer to a question.
10	5	I got good grades in the sciences.
\.


                                                                                                                                                                                                                                                                                                                                                                                  3416.dat                                                                                            0000600 0004000 0002000 00000000033 14475061247 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	8	21
3	9	24
3	10	25
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3405.dat                                                                                            0000600 0004000 0002000 00000000007 14475061247 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        5
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         3413.dat                                                                                            0000600 0004000 0002000 00000000255 14475061247 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	5	2023-08-29 12:57:45.341704	5	["subject-a", "subject-b", "subject-c"]
4	5	2023-08-30 06:43:51.887414	5	["English", "History", "Music", "PE", "Science", "Geography"]
\.


                                                                                                                                                                                                                                                                                                                                                   3415.dat                                                                                            0000600 0004000 0002000 00000000114 14475061247 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        21	Strongly Disagree
22	Disagree
23	Not Sure
24	Agree
25	StronglyAgree
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                    3407.dat                                                                                            0000600 0004000 0002000 00000000127 14475061247 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	2023-08-29 12:57:45.38915	Dr. Smith	5
4	2023-08-28 12:57:45.389194	Dr. Smith	\N
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                         3409.dat                                                                                            0000600 0004000 0002000 00000000653 14475061247 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        5	JohnDoe	\\x24326224313224727051614f632e63386551755163436b46776f30324f674c65764e5177496b45576b67797172502e3859484764644a4d7877317432	\\x24326224313224727051614f632e63386551755163436b46776f30324f	John Doe Jr
6	AmySmith	\\x24326224313224727051614f632e63386551755163436b46776f30324f674c65764e5177496b45576b67797172502e3859484764644a4d7877317432	\\x24326224313224727051614f632e63386551755163436b46776f30324f	Amy Little Smith
\.


                                                                                     restore.sql                                                                                         0000600 0004000 0002000 00000031154 14475061247 0015402 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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
    quiz_id integer NOT NULL,
    end_time timestamp without time zone NOT NULL,
    user_id integer NOT NULL,
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
    start_time timestamp without time zone NOT NULL,
    advisor_name character varying NOT NULL,
    user_id integer
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
    uid integer NOT NULL,
    username character varying NOT NULL,
    password_hash character varying NOT NULL,
    salt character varying NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public."user" OWNER TO test;

--
-- Name: user_uid_seq; Type: SEQUENCE; Schema: public; Owner: test
--

CREATE SEQUENCE public.user_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_uid_seq OWNER TO test;

--
-- Name: user_uid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test
--

ALTER SEQUENCE public.user_uid_seq OWNED BY public."user".uid;


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
-- Name: user uid; Type: DEFAULT; Schema: public; Owner: test
--

ALTER TABLE ONLY public."user" ALTER COLUMN uid SET DEFAULT nextval('public.user_uid_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.alembic_version (version_num) FROM stdin;
\.
COPY public.alembic_version (version_num) FROM '$$PATH$$/3403.dat';

--
-- Data for Name: question; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.question (uid, quiz_id, question) FROM stdin;
\.
COPY public.question (uid, quiz_id, question) FROM '$$PATH$$/3411.dat';

--
-- Data for Name: question_response; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.question_response (quiz_attempt_id, question_id, response_id) FROM stdin;
\.
COPY public.question_response (quiz_attempt_id, question_id, response_id) FROM '$$PATH$$/3416.dat';

--
-- Data for Name: quiz; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.quiz (uid) FROM stdin;
\.
COPY public.quiz (uid) FROM '$$PATH$$/3405.dat';

--
-- Data for Name: quiz_attempt; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.quiz_attempt (uid, quiz_id, end_time, user_id, subjects) FROM stdin;
\.
COPY public.quiz_attempt (uid, quiz_id, end_time, user_id, subjects) FROM '$$PATH$$/3413.dat';

--
-- Data for Name: response; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.response (uid, answer) FROM stdin;
\.
COPY public.response (uid, answer) FROM '$$PATH$$/3415.dat';

--
-- Data for Name: slot; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.slot (uid, start_time, advisor_name, user_id) FROM stdin;
\.
COPY public.slot (uid, start_time, advisor_name, user_id) FROM '$$PATH$$/3407.dat';

--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public."user" (uid, username, password_hash, salt, name) FROM stdin;
\.
COPY public."user" (uid, username, password_hash, salt, name) FROM '$$PATH$$/3409.dat';

--
-- Name: question_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.question_uid_seq', 10, true);


--
-- Name: quiz_attempt_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.quiz_attempt_uid_seq', 4, true);


--
-- Name: quiz_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.quiz_uid_seq', 5, true);


--
-- Name: response_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.response_uid_seq', 25, true);


--
-- Name: slot_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.slot_uid_seq', 4, true);


--
-- Name: user_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.user_uid_seq', 6, true);


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
    ADD CONSTRAINT user_pkey PRIMARY KEY (uid);


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
    ADD CONSTRAINT quiz_attempt_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(uid);


--
-- Name: slot slot_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.slot
    ADD CONSTRAINT slot_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(uid);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    