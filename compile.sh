

var=`echo $1 | sed  's/\.s//g'`
as $1 -o "$var.o"
ld "$var.o" -o "a.out"
