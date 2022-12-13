#calcular el termino 10 de la sucesion
l(n) = (3n^2 + n)/(6n^2 - 1)
print([l(n) for n = 1:10])

#¿cual de las siguientes graficas corresponde a esta?
using Plots
z(n) =  n == 1 ? 3 : sqrt(2+z(n-1))  #x1 = 3     xn+1 = sqrt(2+z(n-1))
scatter([z(n) for n = 1:50], legend=false)

#¿crees que la sucesion converge?
using SymPy
@syms n::(interger, positive)
a(n)=(2^n)/factorial(n)
print([a(n) for n=1:20])
d=limit(a(n), n=>oo) #Converge a 0

#¿crees que la sucesion converge?
using SymPy
@syms n::(interger, positive)
a(n)=(n^n)/factorial(n)
print([a(n) for n=1:20])
j=limit(a(n), n=>oo) #Converge a 0

#¿crees que la sucesion converge?
using Plots
m(n) =  n == 1 ? 1 : sqrt(2+m(n-1)) 
scatter([m(n) for n = 1:20], legend=false)


#¿cual es el limite de la sucesion?
using SymPy
@syms n::(interger, positive)
s(n)=(1+2/n)^n
print([s(n) for n=1:20])
o=limit(s(n), n=>oo) #Converge 