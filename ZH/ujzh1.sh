#!/bin/bash

# 1.
# Készítsen szkriptet ujzh1.sh névvel, amely paraméterként két alkönyvtár nevét várja.
# A szkript az aktuális könyvtárban lévő megadott két alkönyvtár nevét cserélje fel.
# Mindkét könyvtár jogosultságait állítsa be úgy, hogy csak a felhasználónak legyen olvasási és végrehajtási
# jogosultsága, a többieknek csakolvasási. Ha kevés a paraméter, vagy nem létezik valamelyik paraméterben megadott
# alkönyvtár, akkor azt írjuk ki.

# Ha kevés a paraméter
if [ $# -ne 2 ]
then
	echo "Tul keves parameter" 1>&2 #redirect to stderr
	echo "$0 <alkonyvar1> <alkonyvar2>"
	exit 1
fi

# nem létezik valamelyik paraméterben megadott alkönyvtár
if ( ! test -d $1 )
then
	echo "Nem letezik" $1
fi
if ( ! test -d $2)
then
	echo "Nem letezik" $2
fi

if ( (test -d $1) && (test -d $2) )
then
  dir1=$1
  dir2=$2
  tmp=`tr -dc A-Za-z0-9 </dev/urandom | head -c 16` # 16 random karakter konyvtarnevnek, nagy esellyel nem letezik mar

  mv $1/ tmp/
  mv $2/ $dir1/
  mv tmp/ dir2/
	chmod 544 $1/
	chmod 544 $2/
fi
