{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;\red88\green137\blue67;
\red203\green203\blue202;\red141\green213\blue254;\red194\green125\blue100;\red212\green213\blue153;\red183\green111\blue179;
\red71\green138\blue206;\red167\green197\blue151;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c99985\c0;\cssrgb\c41481\c59899\c33082;
\cssrgb\c83320\c83320\c83112;\cssrgb\c61545\c86704\c99884;\cssrgb\c80772\c56796\c46790;\cssrgb\c86247\c86215\c66392;\cssrgb\c77407\c52698\c75307;
\cssrgb\c34146\c61677\c84338;\cssrgb\c71035\c80830\c65726;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec4 #!/bin/bash\cb3 \strokec5 \
\
\cb3 \strokec4 # remove trailing zeros from atomic mass\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 PSQL\cb3 \strokec5 =\cb3 \strokec7 "psql -X --username=freecodecamp --dbname=periodic_table -c"\cb3 \strokec5 \
\
\cb3 \strokec6 VALUES\cb3 \strokec5 =\cb3 \strokec7 $(\cb3 \strokec6 $PSQL\cb3 \strokec7  "SELECT atomic_number, atomic_mass FROM properties ORDER BY atomic_number")\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec8 echo\cb3 \strokec5  \cb3 \strokec7 "\cb3 \strokec6 $VALUES\cb3 \strokec7 "\cb3 \strokec5  | \cb3 \strokec9 while\cb3 \strokec5  \cb3 \strokec8 read\cb3 \strokec5  \cb3 \strokec10 -r\cb3 \strokec5  \cb3 \strokec7 NUM\cb3 \strokec5  \cb3 \strokec7 BAR\cb3 \strokec5  \cb3 \strokec7 VALUE\cb3 \strokec5 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec9 do\cb3 \strokec5 \
  \cb3 \strokec9 if\cb3 \strokec5  [[ \cb3 \strokec6 $NUM\cb3 \strokec5  =~ ^[\cb3 \strokec11 0\cb3 \strokec5 -9] ]]; \cb3 \strokec9 then\cb3 \strokec5 \
    \cb3 \strokec4 # echo $NUM - $VALUE\cb3 \strokec5 \
\
    \cb3 \strokec6 NEW_VALUE\cb3 \strokec5 =\cb3 \strokec7 $(\cb3 \strokec8 echo\cb3 \strokec7  "\cb3 \strokec6 $VALUE\cb3 \strokec7 " \cb3 \strokec5 |\cb3 \strokec7  \cb3 \strokec8 sed\cb3 \strokec7  's/\\.\\?0*$//')\cb3 \strokec5 \
    \cb3 \strokec8 echo\cb3 \strokec5  \cb3 \strokec7 NEW_VALUE\cb3 \strokec5  \cb3 \strokec7 =\cb3 \strokec5  \cb3 \strokec6 $NEW_VALUE\cb3 \strokec5 \
\
    \cb3 \strokec6 CHANGE_RESULT\cb3 \strokec5 =\cb3 \strokec7 $(\cb3 \strokec6 $PSQL\cb3 \strokec7  "UPDATE properties SET atomic_mass=\cb3 \strokec6 $NEW_VALUE\cb3 \strokec7  WHERE atomic_number=\cb3 \strokec6 $NUM\cb3 \strokec7 ")\cb3 \strokec5 \
  \cb3 \strokec9 fi\cb3 \strokec5 \
\cb3 \strokec9 done\cb3 \strokec5 \
\
}