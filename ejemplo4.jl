#para que valores la funcion es derivable en todo R
#PRIMERO MIRAR QUE ES CONTINUA
#HACERLO A PAPEL
using SymPy
@syms a b x
f1(x)=sin(x)^2
f2(x)=a*x^2+b
f3(x)=ln(x)
m1=diff(f1(x),x)
m2=diff(f2(x),x)
m3=diff(f3(x),x)
