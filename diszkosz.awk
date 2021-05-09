#!/bin/awk -f

BEGIN {
	FS=";"
	versenyzoszam=0;
	legjobb="";
	legnagyobb=-1;
printf("A diszkosdobo verseny eredmenyei:\n");
}

{
	printf("A versenyzo orszaga: %20s\n", $2);
	printf("A versenyzo neve: %20s\n", $1);
	printf("Dobasainak szama: %5d\n", (NF-2)); # 1. nev, 2. orszag, a tobbi dobasok
	ervenyes=0;
	max=-1;
	for (i=3; i<=NF; i++) {
		if ($i !~  /x/) {
			ervenyes++;
#			gsub(/\./, ",",$i);
			if ($i > max) {
				max = $i;
			}
		}
	}
	printf("Ervenyes dobasainak szama: %5d\n", ervenyes);
	printf("Legjobb dobasa: %7.2f\n", max);
	if (max>legnagyobb) {
		legnagyobb = max;
		legjobb=$1;
	}
	tomb[NR]=max";"$1;
	#versenyzoszam++;
	versenyzoszam=NR;
}

END {
	printf("A versenyzok szama: %5d\n", versenyzoszam);
	printf("A verseny gyoztese: %20s, %7.2f meteres dobassal.\n", legjobb, legnagyobb);
	for (i=1; i<=NR; i++) {
	    for (j=i+1; j<=NR; j++) {
	        if (tomb[i]<tomb[j]) {
	            tmp = tomb[i];
	            tomb[i] = tomb[j];
	            tomb[j] = tmp;
	        }
	    }
		#printf("%20s\n", tomb[i]);
	}
	for (i=1; i<4; i++) {
	    split(tomb[i], masik, ";");
	    printf("%d. helyezett: %20s, %7.2f m\n", i, masik[2], masik[1]);
	}
	#for (a in tomb) {
	#    printf("%20s\n", a);
	#}
}
