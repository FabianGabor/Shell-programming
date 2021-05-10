#!/usr/bin/awk -f
BEGIN {
for (i=0; i < 10; i++) {
    printf "%4d\t%4d\n", i,negyzet(i)
}
print "\na főprogramból látható negy:" negy
}
function negyzet(i) {
negy=i*i
return negy
}
