#!/bin/awk -f

BEGIN {
print "BEGIN";
print szam;
darab=0;
szo=0;
}

{
	if ($1 ~ /^Ed/){
	print "KIRALY";
	print $0;
	darab++;
	szo=szo+NF;
	}	
}

END {
printf("A sorok szama: %5d\n", darab);
printf("A szavak szama: %5d\n", szo);
printf("Atlagos szoszam: %5.2f\n", (szo/darab));
print "END";
}
