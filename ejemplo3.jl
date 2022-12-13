function ejercicio1(n,i)
    return (1+i)^n
end
ejercicio1(12,1/12)
ejercicio1(365,1/365)
using SymPy
@syms x::(integer, positive)
b(x)=(1+1/x)^x
limit(b(x),x=>oo) 


#calcular los limites
using SymPy
@syms n::(integer, positive)
a(n) = (sin(n)-cos(n))/(1-tan(n))
limit(a(n), n=>Sym(pi)/4)

#calcular los limites
using SymPy
@syms x::(integer, positive)
k(x) = sqrt(x^2+x+1)-sqrt(x^2-2x-1)
limit(k(x), x=>oo)

#calcular los limites
g(x)=x^x - 1 /x
@vars x real=true
ld = limit(g(x), x=>0, dir="+")
println("Límite por la derecha: ", ld)

#calcular los limites
using SymPy
@syms ñ x::(integer, positive)
k(x) = (ñ^(1-x)-1)/(1-x)
limit(k(x), x=>1)

#¿Cuáles de las siguientes rectas son asíntotas de la función?
using Plots, SymPy, MTH229
@vars x real=true
f(x)=(x^2+1)/(3*x+3)
solve(3*x+3)
plot(rangeclamp(f), ylims=(-10,15), label="Funcion")
limit(f(x), x=>-1, dir="-")
limit(f(x), x=>-1, dir="+")
vline!([-1], label="Asindota vertical")
limit(f(x), x=>-oo)
m=limit(f(x)/x, x=>oo)
println(m)
n=limit(f(x)-m*x, x=>oo)
println(n)
plot!(m*x+n, label="Asindota oblicua")

#¿Cuándo debería valer la función h(x) para que fuese continua en x=0.
h(x)= (ℯ^x-ℯ^-x)/x
limit(h(x), x=>0)

#¿Qué valor debe tomar  para que la función sea continua en todo su dominio?
using SymPy
@syms a
h(x)= x^3-x-2 
limit(h(x), x=>0, dir = "-")
hm(x)= cos(x-Sym(pi)/2)+a 
limit(hm(x), x=>0, dir = "-")

#¿Qué tipo de discontinuidad presenta la función g(x)
g(x)=1/(ℯ)^(1/(x^2-1))
limit(g(x), x=>-1, dir = "-")
limit(g(x), x=>-1, dir = "+")


#Calcular de forma aproximada con el algoritmo de bisección una solución de la ecuación e^-x=cos(x) en el intervalo [1,2] con un error menor de 10^-15.
function raices_biseccion(f, a, b, error=10^-15)
    if f(a) == 0 return(a) end
    if f(b) == 0 return(b) end
    if f(a) * f(b) > 0 error("Las imágenes de los extremos del intervalo no tienen signo distinto.") end
    c = (a+b)/2
    while abs(b-a) > error
      if f(c) == 0 return(c) end
      if f(a) * f(c) < 0
         b = c
      else
         a = c
      end
      c = (a+b)/2
    end
    c
  end
  
  f(x)=ℯ^-x-cos(x)
  print(raices_biseccion(f, 1, 2))
 