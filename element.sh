{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;\red88\green137\blue67;
\red203\green203\blue202;\red71\green138\blue206;\red212\green213\blue153;\red141\green213\blue254;\red194\green125\blue100;
\red183\green111\blue179;\red167\green197\blue151;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c99985\c0;\cssrgb\c41481\c59899\c33082;
\cssrgb\c83320\c83320\c83112;\cssrgb\c34146\c61677\c84338;\cssrgb\c86247\c86215\c66392;\cssrgb\c61545\c86704\c99884;\cssrgb\c80772\c56796\c46790;
\cssrgb\c77407\c52698\c75307;\cssrgb\c71035\c80830\c65726;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
#!/bin/bash\
\
\pard\pardeftab720\partightenfactor0
\cf2 function IS_NAME()\{\
  # check if input is a name\
  NAME=$($PSQL "SELECT name FROM elements WHERE name='$INPUT'")\
\
  # if the name is not found in the database\
  if [[ -z $NAME ]]; then\
    echo "I could not find that element in the database."\
\
  # else if the name is found\
  else\
    ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE name='$NAME'")\
    SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE atomic_number=$ATOMIC_NUMBER")\
    MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number=$ATOMIC_NUMBER")\
    TYPE=$($PSQL "SELECT type FROM types INNER JOIN properties ON types.type_id = properties.type_id WHERE properties.atomic_number=$ATOMIC_NUMBER")\
    MELT_P=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number=$ATOMIC_NUMBER")\
    BOIL_P=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number=$ATOMIC_NUMBER")\
\
    echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT_P celsius and a boiling point of $BOIL_P celsius."\
  fi\
\}\
\
\pard\pardeftab720\partightenfactor0
\cf2 #------------------------------------------------------------------------|\
\
\pard\pardeftab720\partightenfactor0
\cf2 function IS_SYMBOL()\{\
\
  #check if it's a valid symbol with just 2 letters\
  if [[ $INPUT =~ ^[a-zA-Z]\{1,2\}$ ]]; then\
\
    # check if input is a symbol\
    SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE symbol='$INPUT'")\
\
    # if it's not in the database\
    if [[ -z $SYMBOL ]];then\
      echo "I could not find that element in the database."\
\
    # if it's found\
    else\
      ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE symbol='$SYMBOL'")\
      NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number=$ATOMIC_NUMBER")\
      MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number=$ATOMIC_NUMBER")\
      TYPE=$($PSQL "SELECT type FROM types INNER JOIN properties ON types.type_id = properties.type_id WHERE properties.atomic_number=$ATOMIC_NUMBER")\
      MELT_P=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number=$ATOMIC_NUMBER")\
      BOIL_P=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number=$ATOMIC_NUMBER")\
\
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT_P celsius and a boiling point of $BOIL_P celsius."\
    fi\
\
  # else check if the input is a name\
  else\
    IS_NAME\
  fi\
\}\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 #------------------------------------------------------------------------|\
\
\pard\pardeftab720\partightenfactor0
\cf2 function IS_NUMBER()\{\
  # check if input is an atomic number\
\
  # if it's a number look for a match\
  if [[ $INPUT =~ ^[0-9]+$ ]]; then\
    ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number=$INPUT")\
\
\
    # if there's no match\
    if [[ -z $ATOMIC_NUMBER ]]; then\
      echo "I could not find that element in the database."\
\
    # if it's found\
    else\
      SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE atomic_number=$ATOMIC_NUMBER")\
      NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number=$ATOMIC_NUMBER")\
      MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number=$ATOMIC_NUMBER")\
      TYPE=$($PSQL "SELECT type FROM types INNER JOIN properties ON types.type_id = properties.type_id WHERE properties.atomic_number=$ATOMIC_NUMBER")\
      MELT_P=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number=$ATOMIC_NUMBER")\
      BOIL_P=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number=$ATOMIC_NUMBER")\
\
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT_P celsius and a boiling point of $BOIL_P celsius."\
    fi\
\
  # else check if it's a symbol\
  else\
    IS_SYMBOL\
  fi\
\}\
\
\pard\pardeftab720\partightenfactor0
\cf2 #------------------------------------------------------------------------|\
\
\pard\pardeftab720\partightenfactor0
\cf2 PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"\
\
if [[ -z $1 ]]; then\
  echo "Please provide an element as an argument."\
\
else\
  INPUT=$1\
  IS_NUMBER   \
fi\
\
\
\
\
\
\
}