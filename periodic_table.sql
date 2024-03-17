{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;\red88\green137\blue67;
\red203\green203\blue202;\red71\green138\blue206;\red167\green197\blue151;\red194\green125\blue100;\red212\green213\blue153;
}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c99985\c0;\cssrgb\c41481\c59899\c33082;
\cssrgb\c83320\c83320\c83112;\cssrgb\c34146\c61677\c84338;\cssrgb\c71035\c80830\c65726;\cssrgb\c80772\c56796\c46790;\cssrgb\c86247\c86215\c66392;
}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- PostgreSQL database dump\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\cb3 \strokec4 -- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)\cb3 \strokec5 \
\cb3 \strokec4 -- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 SET\cb3 \strokec5  statement_timeout = \cb3 \strokec7 0\cb3 \strokec5 ;\
\cb3 \strokec6 SET\cb3 \strokec5  \cb3 \strokec6 lock_timeout\cb3 \strokec5  = \cb3 \strokec7 0\cb3 \strokec5 ;\
\cb3 \strokec6 SET\cb3 \strokec5  idle_in_transaction_session_timeout = \cb3 \strokec7 0\cb3 \strokec5 ;\
\cb3 \strokec6 SET\cb3 \strokec5  client_encoding = \cb3 \strokec8 'UTF8'\cb3 \strokec5 ;\
\cb3 \strokec6 SET\cb3 \strokec5  standard_conforming_strings = \cb3 \strokec6 on\cb3 \strokec5 ;\
\cb3 \strokec6 SELECT\cb3 \strokec5  pg_catalog.set_config(\cb3 \strokec8 'search_path'\cb3 \strokec5 , \cb3 \strokec8 ''\cb3 \strokec5 , false);\
\cb3 \strokec6 SET\cb3 \strokec5  check_function_bodies = false;\
\cb3 \strokec6 SET\cb3 \strokec5  xmloption = content;\
\cb3 \strokec6 SET\cb3 \strokec5  client_min_messages = warning;\
\cb3 \strokec6 SET\cb3 \strokec5  row_security = \cb3 \strokec6 off\cb3 \strokec5 ;\
\
\cb3 \strokec6 DROP\cb3 \strokec5  \cb3 \strokec6 DATABASE\cb3 \strokec5  periodic_table;\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: periodic_table; Type: DATABASE; Schema: -; Owner: postgres\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 CREATE\cb3 \strokec5  \cb3 \strokec6 DATABASE\cb3 \strokec5  \cb3 \strokec9 periodic_table\cb3 \strokec5  \cb3 \strokec6 WITH\cb3 \strokec5  TEMPLATE = template0 \cb3 \strokec6 ENCODING\cb3 \strokec5  = \cb3 \strokec8 'UTF8'\cb3 \strokec5  LC_COLLATE = \cb3 \strokec8 'C.UTF-8'\cb3 \strokec5  LC_CTYPE = \cb3 \strokec8 'C.UTF-8'\cb3 \strokec5 ;\
\
\
\cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 DATABASE\cb3 \strokec5  periodic_table \cb3 \strokec6 OWNER\cb3 \strokec5  \cb3 \strokec6 TO\cb3 \strokec5  postgres;\
\
\\\cb3 \strokec6 connect\cb3 \strokec5  periodic_table\
\
\cb3 \strokec6 SET\cb3 \strokec5  statement_timeout = \cb3 \strokec7 0\cb3 \strokec5 ;\
\cb3 \strokec6 SET\cb3 \strokec5  \cb3 \strokec6 lock_timeout\cb3 \strokec5  = \cb3 \strokec7 0\cb3 \strokec5 ;\
\cb3 \strokec6 SET\cb3 \strokec5  idle_in_transaction_session_timeout = \cb3 \strokec7 0\cb3 \strokec5 ;\
\cb3 \strokec6 SET\cb3 \strokec5  client_encoding = \cb3 \strokec8 'UTF8'\cb3 \strokec5 ;\
\cb3 \strokec6 SET\cb3 \strokec5  standard_conforming_strings = \cb3 \strokec6 on\cb3 \strokec5 ;\
\cb3 \strokec6 SELECT\cb3 \strokec5  pg_catalog.set_config(\cb3 \strokec8 'search_path'\cb3 \strokec5 , \cb3 \strokec8 ''\cb3 \strokec5 , false);\
\cb3 \strokec6 SET\cb3 \strokec5  check_function_bodies = false;\
\cb3 \strokec6 SET\cb3 \strokec5  xmloption = content;\
\cb3 \strokec6 SET\cb3 \strokec5  client_min_messages = warning;\
\cb3 \strokec6 SET\cb3 \strokec5  row_security = \cb3 \strokec6 off\cb3 \strokec5 ;\
\
\cb3 \strokec6 SET\cb3 \strokec5  default_tablespace = \cb3 \strokec8 ''\cb3 \strokec5 ;\
\
\cb3 \strokec6 SET\cb3 \strokec5  default_table_access_method = heap;\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: elements; Type: TABLE; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 CREATE\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  \cb3 \strokec9 public\cb3 \strokec5 .\cb3 \strokec6 elements\cb3 \strokec5  (\
    atomic_number \cb3 \strokec6 integer\cb3 \strokec5  \cb3 \strokec6 NOT NULL\cb3 \strokec5 ,\
    symbol \cb3 \strokec6 character varying\cb3 \strokec5 (\cb3 \strokec7 2\cb3 \strokec5 ) \cb3 \strokec6 NOT NULL\cb3 \strokec5 ,\
    \cb3 \strokec6 name\cb3 \strokec5  \cb3 \strokec6 character varying\cb3 \strokec5 (\cb3 \strokec7 40\cb3 \strokec5 ) \cb3 \strokec6 NOT NULL\cb3 \strokec5 \
);\
\
\
\cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  public.elements \cb3 \strokec6 OWNER\cb3 \strokec5  \cb3 \strokec6 TO\cb3 \strokec5  freecodecamp;\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: properties; Type: TABLE; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 CREATE\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  \cb3 \strokec9 public\cb3 \strokec5 .properties (\
    atomic_number \cb3 \strokec6 integer\cb3 \strokec5  \cb3 \strokec6 NOT NULL\cb3 \strokec5 ,\
    atomic_mass \cb3 \strokec6 numeric\cb3 \strokec5  \cb3 \strokec6 NOT NULL\cb3 \strokec5 ,\
    melting_point_celsius \cb3 \strokec6 numeric\cb3 \strokec5  \cb3 \strokec6 NOT NULL\cb3 \strokec5 ,\
    boiling_point_celsius \cb3 \strokec6 numeric\cb3 \strokec5  \cb3 \strokec6 NOT NULL\cb3 \strokec5 ,\
    type_id \cb3 \strokec6 integer\cb3 \strokec5  \cb3 \strokec6 NOT NULL\cb3 \strokec5 \
);\
\
\
\cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  public.properties \cb3 \strokec6 OWNER\cb3 \strokec5  \cb3 \strokec6 TO\cb3 \strokec5  freecodecamp;\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: types; Type: TABLE; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 CREATE\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  \cb3 \strokec9 public\cb3 \strokec5 .types (\
    type_id \cb3 \strokec6 integer\cb3 \strokec5  \cb3 \strokec6 NOT NULL\cb3 \strokec5 ,\
    \cb3 \strokec6 type\cb3 \strokec5  \cb3 \strokec6 character varying\cb3 \strokec5 (\cb3 \strokec7 50\cb3 \strokec5 ) \cb3 \strokec6 NOT NULL\cb3 \strokec5 \
);\
\
\
\cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  public.types \cb3 \strokec6 OWNER\cb3 \strokec5  \cb3 \strokec6 TO\cb3 \strokec5  freecodecamp;\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: types_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 CREATE\cb3 \strokec5  \cb3 \strokec6 SEQUENCE\cb3 \strokec5  \cb3 \strokec9 public\cb3 \strokec5 .types_type_id_seq\
    \cb3 \strokec6 AS\cb3 \strokec5  \cb3 \strokec6 integer\cb3 \strokec5 \
    \cb3 \strokec6 START\cb3 \strokec5  \cb3 \strokec6 WITH\cb3 \strokec5  \cb3 \strokec7 1\cb3 \strokec5 \
    INCREMENT \cb3 \strokec6 BY\cb3 \strokec5  \cb3 \strokec7 1\cb3 \strokec5 \
    \cb3 \strokec6 NO\cb3 \strokec5  MINVALUE\
    \cb3 \strokec6 NO\cb3 \strokec5  MAXVALUE\
    CACHE \cb3 \strokec7 1\cb3 \strokec5 ;\
\
\
\cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  public.types_type_id_seq \cb3 \strokec6 OWNER\cb3 \strokec5  \cb3 \strokec6 TO\cb3 \strokec5  freecodecamp;\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: types_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 SEQUENCE\cb3 \strokec5  public.types_type_id_seq OWNED \cb3 \strokec6 BY\cb3 \strokec5  public.types.type_id;\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: types type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  ONLY public.types \cb3 \strokec6 ALTER\cb3 \strokec5  COLUMN type_id \cb3 \strokec6 SET\cb3 \strokec5  \cb3 \strokec6 DEFAULT\cb3 \strokec5  nextval(\cb3 \strokec8 'public.types_type_id_seq'\cb3 \strokec5 ::regclass);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Data for Name: elements; Type: TABLE DATA; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.elements \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 1\cb3 \strokec5 , \cb3 \strokec8 'H'\cb3 \strokec5 , \cb3 \strokec8 'Hydrogen'\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.elements \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 2\cb3 \strokec5 , \cb3 \strokec8 'He'\cb3 \strokec5 , \cb3 \strokec8 'Helium'\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.elements \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 3\cb3 \strokec5 , \cb3 \strokec8 'Li'\cb3 \strokec5 , \cb3 \strokec8 'Lithium'\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.elements \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 4\cb3 \strokec5 , \cb3 \strokec8 'Be'\cb3 \strokec5 , \cb3 \strokec8 'Beryllium'\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.elements \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 5\cb3 \strokec5 , \cb3 \strokec8 'B'\cb3 \strokec5 , \cb3 \strokec8 'Boron'\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.elements \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 6\cb3 \strokec5 , \cb3 \strokec8 'C'\cb3 \strokec5 , \cb3 \strokec8 'Carbon'\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.elements \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 7\cb3 \strokec5 , \cb3 \strokec8 'N'\cb3 \strokec5 , \cb3 \strokec8 'Nitrogen'\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.elements \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 8\cb3 \strokec5 , \cb3 \strokec8 'O'\cb3 \strokec5 , \cb3 \strokec8 'Oxygen'\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.elements \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 9\cb3 \strokec5 , \cb3 \strokec8 'F'\cb3 \strokec5 , \cb3 \strokec8 'Fluorine'\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.elements \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 10\cb3 \strokec5 , \cb3 \strokec8 'Ne'\cb3 \strokec5 , \cb3 \strokec8 'Neon'\cb3 \strokec5 );\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Data for Name: properties; Type: TABLE DATA; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.properties \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 9\cb3 \strokec5 , \cb3 \strokec7 18\cb3 \strokec5 .\cb3 \strokec7 998\cb3 \strokec5 , -\cb3 \strokec7 220\cb3 \strokec5 , -\cb3 \strokec7 188\cb3 \strokec5 .\cb3 \strokec7 1\cb3 \strokec5 , \cb3 \strokec7 3\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.properties \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 10\cb3 \strokec5 , \cb3 \strokec7 20\cb3 \strokec5 .\cb3 \strokec7 18\cb3 \strokec5 , -\cb3 \strokec7 248\cb3 \strokec5 .\cb3 \strokec7 6\cb3 \strokec5 , -\cb3 \strokec7 246\cb3 \strokec5 .\cb3 \strokec7 1\cb3 \strokec5 , \cb3 \strokec7 3\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.properties \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 1\cb3 \strokec5 , \cb3 \strokec7 1\cb3 \strokec5 .\cb3 \strokec7 008\cb3 \strokec5 , -\cb3 \strokec7 259\cb3 \strokec5 .\cb3 \strokec7 1\cb3 \strokec5 , -\cb3 \strokec7 252\cb3 \strokec5 .\cb3 \strokec7 9\cb3 \strokec5 , \cb3 \strokec7 3\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.properties \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 2\cb3 \strokec5 , \cb3 \strokec7 4\cb3 \strokec5 .\cb3 \strokec7 0026\cb3 \strokec5 , -\cb3 \strokec7 272\cb3 \strokec5 .\cb3 \strokec7 2\cb3 \strokec5 , -\cb3 \strokec7 269\cb3 \strokec5 , \cb3 \strokec7 3\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.properties \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 3\cb3 \strokec5 , \cb3 \strokec7 6\cb3 \strokec5 .\cb3 \strokec7 94\cb3 \strokec5 , \cb3 \strokec7 180\cb3 \strokec5 .\cb3 \strokec7 54\cb3 \strokec5 , \cb3 \strokec7 1342\cb3 \strokec5 , \cb3 \strokec7 1\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.properties \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 4\cb3 \strokec5 , \cb3 \strokec7 9\cb3 \strokec5 .\cb3 \strokec7 0122\cb3 \strokec5 , \cb3 \strokec7 1287\cb3 \strokec5 , \cb3 \strokec7 2470\cb3 \strokec5 , \cb3 \strokec7 1\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.properties \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 5\cb3 \strokec5 , \cb3 \strokec7 10\cb3 \strokec5 .\cb3 \strokec7 81\cb3 \strokec5 , \cb3 \strokec7 2075\cb3 \strokec5 , \cb3 \strokec7 4000\cb3 \strokec5 , \cb3 \strokec7 2\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.properties \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 6\cb3 \strokec5 , \cb3 \strokec7 12\cb3 \strokec5 .\cb3 \strokec7 011\cb3 \strokec5 , \cb3 \strokec7 3550\cb3 \strokec5 , \cb3 \strokec7 4027\cb3 \strokec5 , \cb3 \strokec7 3\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.properties \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 7\cb3 \strokec5 , \cb3 \strokec7 14\cb3 \strokec5 .\cb3 \strokec7 007\cb3 \strokec5 , -\cb3 \strokec7 210\cb3 \strokec5 .\cb3 \strokec7 1\cb3 \strokec5 , -\cb3 \strokec7 195\cb3 \strokec5 .\cb3 \strokec7 8\cb3 \strokec5 , \cb3 \strokec7 3\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.properties \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 8\cb3 \strokec5 , \cb3 \strokec7 15\cb3 \strokec5 .\cb3 \strokec7 999\cb3 \strokec5 , -\cb3 \strokec7 218\cb3 \strokec5 , -\cb3 \strokec7 183\cb3 \strokec5 , \cb3 \strokec7 3\cb3 \strokec5 );\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.types \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 1\cb3 \strokec5 , \cb3 \strokec8 'metal'\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.types \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 2\cb3 \strokec5 , \cb3 \strokec8 'metalloid'\cb3 \strokec5 );\
\cb3 \strokec6 INSERT INTO\cb3 \strokec5  public.types \cb3 \strokec6 VALUES\cb3 \strokec5  (\cb3 \strokec7 3\cb3 \strokec5 , \cb3 \strokec8 'nonmetal'\cb3 \strokec5 );\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: types_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 SELECT\cb3 \strokec5  pg_catalog.setval(\cb3 \strokec8 'public.types_type_id_seq'\cb3 \strokec5 , \cb3 \strokec7 16\cb3 \strokec5 , true);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: elements elements_atomic_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  ONLY public.elements\
    \cb3 \strokec6 ADD\cb3 \strokec5  \cb3 \strokec6 CONSTRAINT\cb3 \strokec5  elements_atomic_number_key \cb3 \strokec6 UNIQUE\cb3 \strokec5  (atomic_number);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: elements elements_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  ONLY public.elements\
    \cb3 \strokec6 ADD\cb3 \strokec5  \cb3 \strokec6 CONSTRAINT\cb3 \strokec5  elements_pkey \cb3 \strokec6 PRIMARY KEY\cb3 \strokec5  (atomic_number);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: properties properties_atomic_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  ONLY public.properties\
    \cb3 \strokec6 ADD\cb3 \strokec5  \cb3 \strokec6 CONSTRAINT\cb3 \strokec5  properties_atomic_number_key \cb3 \strokec6 UNIQUE\cb3 \strokec5  (atomic_number);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: properties properties_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  ONLY public.properties\
    \cb3 \strokec6 ADD\cb3 \strokec5  \cb3 \strokec6 CONSTRAINT\cb3 \strokec5  properties_pkey \cb3 \strokec6 PRIMARY KEY\cb3 \strokec5  (atomic_number);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  ONLY public.types\
    \cb3 \strokec6 ADD\cb3 \strokec5  \cb3 \strokec6 CONSTRAINT\cb3 \strokec5  types_pkey \cb3 \strokec6 PRIMARY KEY\cb3 \strokec5  (type_id);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: elements unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  ONLY public.elements\
    \cb3 \strokec6 ADD\cb3 \strokec5  \cb3 \strokec6 CONSTRAINT\cb3 \strokec5  unique_name \cb3 \strokec6 UNIQUE\cb3 \strokec5  (\cb3 \strokec6 name\cb3 \strokec5 );\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: elements unique_symbol; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  ONLY public.elements\
    \cb3 \strokec6 ADD\cb3 \strokec5  \cb3 \strokec6 CONSTRAINT\cb3 \strokec5  unique_symbol \cb3 \strokec6 UNIQUE\cb3 \strokec5  (symbol);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: properties properties_atomic_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  ONLY public.properties\
    \cb3 \strokec6 ADD\cb3 \strokec5  \cb3 \strokec6 CONSTRAINT\cb3 \strokec5  properties_atomic_number_fkey \cb3 \strokec6 FOREIGN KEY\cb3 \strokec5  (atomic_number) \cb3 \strokec6 REFERENCES\cb3 \strokec5  public.elements(atomic_number);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: properties properties_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  ONLY public.properties\
    \cb3 \strokec6 ADD\cb3 \strokec5  \cb3 \strokec6 CONSTRAINT\cb3 \strokec5  properties_type_id_fkey \cb3 \strokec6 FOREIGN KEY\cb3 \strokec5  (type_id) \cb3 \strokec6 REFERENCES\cb3 \strokec5  public.types(type_id);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- PostgreSQL database dump complete\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\
}