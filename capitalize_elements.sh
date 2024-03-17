{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;\red88\green137\blue67;
\red203\green203\blue202;\red142\green213\blue255;\red194\green125\blue100;\red212\green213\blue153;\red184\green111\blue179;
\red204\green172\blue105;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c99971\c0;\cssrgb\c41436\c59847\c32956;
\cssrgb\c83411\c83411\c83099;\cssrgb\c61729\c86919\c100000;\cssrgb\c80765\c56762\c46655;\cssrgb\c86232\c86184\c66253;\cssrgb\c77483\c52772\c75312;
\cssrgb\c84135\c72677\c48439;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec4 #!/bin/bash\cb3 \strokec5 \
\
\cb3 \strokec4 # capitalize the first letter of the elements\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 PSQL\cb3 \strokec5 =\cb3 \strokec7 "psql -X --username=freecodecamp --dbname=periodic_table -c"\cb3 \strokec5 \
\
\cb3 \strokec6 NAMES\cb3 \strokec5 =\cb3 \strokec7 $(\cb3 \strokec6 $PSQL\cb3 \strokec7  "SELECT symbol FROM elements")\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec8 echo\cb3 \strokec5  \cb3 \strokec7 "\cb3 \strokec6 $NAMES\cb3 \strokec7 "\cb3 \strokec5  | \cb3 \strokec9 while\cb3 \strokec5  \cb3 \strokec8 read\cb3 \strokec5  \cb3 \strokec7 NAME\cb3 \strokec5 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec9 do\cb3 \strokec5 \
  \cb3 \strokec9 if\cb3 \strokec5  [[ \cb3 \strokec6 $NAME\cb3 \strokec5  != \cb3 \strokec7 "symbol"\cb3 \strokec5  && ! \cb3 \strokec6 $NAME\cb3 \strokec5  == -* && ! \cb3 \strokec6 $NAME\cb3 \strokec5  =~ ^\cb3 \strokec10 \\(\cb3 \strokec5  ]]; \cb3 \strokec9 then\cb3 \strokec5 \
    \cb3 \strokec6 NEW_NAME\cb3 \strokec5 =\cb3 \strokec7 $(\cb3 \strokec8 echo\cb3 \strokec7  \cb3 \strokec6 $NAME\cb3 \strokec7  \cb3 \strokec5 |\cb3 \strokec7  \cb3 \strokec8 sed\cb3 \strokec7  's/\\b\\([a-z]\\)/\\u\\1/g')\cb3 \strokec5 \
\
    \cb3 \strokec6 CHANGE_NAME\cb3 \strokec5 =\cb3 \strokec7 $(\cb3 \strokec6 $PSQL\cb3 \strokec7  "UPDATE elements SET symbol='\cb3 \strokec6 $NEW_NAME\cb3 \strokec7 ' WHERE symbol='\cb3 \strokec6 $NAME\cb3 \strokec7 '")\cb3 \strokec5 \
    \cb3 \strokec8 echo\cb3 \strokec5  \cb3 \strokec6 $NEW_NAME\cb3 \strokec5 \
  \cb3 \strokec9 fi\cb3 \strokec5 \
\cb3 \strokec9 done\cb3 \strokec5 \
}