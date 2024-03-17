{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;\red88\green137\blue67;
\red203\green203\blue202;\red141\green213\blue254;\red194\green125\blue100;\red212\green213\blue153;\red183\green111\blue179;
\red205\green172\blue105;}
{\*\expandedcolortbl;;\cssrgb\c0\c1\c1;\cssrgb\c100000\c100000\c99985\c0;\cssrgb\c41481\c59899\c33082;
\cssrgb\c83320\c83320\c83112;\cssrgb\c61545\c86704\c99884;\cssrgb\c80772\c56796\c46790;\cssrgb\c86247\c86215\c66392;\cssrgb\c77407\c52698\c75307;
\cssrgb\c84195\c72766\c48633;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec4 #!/bin/bash\cf2 \cb3 \strokec5 \
\
\cf2 \cb3 \strokec4 # takes each type from the properties table and adds it to the types table\cf2 \cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 PSQL\cf2 \cb3 \strokec5 =\cf2 \cb3 \strokec7 "psql -X --username=freecodecamp --dbname=periodic_table -c"\cf2 \cb3 \strokec5 \
\
\cf2 \cb3 \strokec6 RESULT\cf2 \cb3 \strokec5 =\cf2 \cb3 \strokec7 $(\cf2 \cb3 \strokec6 $PSQL\cf2 \cb3 \strokec7  "SELECT DISTINCT type FROM properties")\cf2 \cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec8 echo\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec7 "\cf2 \cb3 \strokec6 $RESULT\cf2 \cb3 \strokec7 "\cf2 \cb3 \strokec5  | \cf2 \cb3 \strokec9 while\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec8 read\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec7 TY\cf2 \cb3 \strokec5 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec9 do\cf2 \cb3 \strokec5 \
  \cf2 \cb3 \strokec9 if\cf2 \cb3 \strokec5  [[ \cf2 \cb3 \strokec6 $TY\cf2 \cb3 \strokec5  != \cf2 \cb3 \strokec7 "type"\cf2 \cb3 \strokec5  && ! \cf2 \cb3 \strokec6 $TY\cf2 \cb3 \strokec5  == -* && ! \cf2 \cb3 \strokec6 $TY\cf2 \cb3 \strokec5  =~ ^\cf2 \cb3 \strokec10 \\(\cf2 \cb3 \strokec5 ]]; \cf2 \cb3 \strokec9 then\cf2 \cb3 \strokec5 \
    \cf2 \cb3 \strokec6 INSERTION\cf2 \cb3 \strokec5 =\cf2 \cb3 \strokec7 $(\cf2 \cb3 \strokec6 $PSQL\cf2 \cb3 \strokec7  "INSERT INTO types(type) VALUES('\cf2 \cb3 \strokec6 $TY\cf2 \cb3 \strokec7 ')")\cf2 \cb3 \strokec5 \
  \cf2 \cb3 \strokec9 fi\cf2 \cb3 \strokec5 \
\cf2 \cb3 \strokec9 done\cf2 \cb3 \strokec5 \
}