#para que valores la funcion es derivable en todo R
#PRIMERO MIRAR QUE ES CONTINUA
#HACERLO A PAPEL
using SymPy
@syms a b c x
f1(x)=sin(x)^2
f2(x)=a*x^2+b
f3(x)=ln(x)
m1=diff(f1(x),x)
m2=diff(f2(x),x)
m3=diff(f3(x),x)


#¿Cuál es la derivada de orden n de la función f(x)=1/(sqrt(x+1))?
f(x)=1/(sqrt(x+1))
d1=diff(f(x),x)


# Dadas las funciones f(x)=ln(sqrt(x^2/2)) y g(x)=x^3+1, 
#¿en qué puntos la recta normal a f y la recta tangente a g con paralelas?
using SymPy, Plots
f(x)=log(sqrt(x^2/2))
g(x)=x^3+1
plot(f, xlims=(-1,3), ylims=(-1,2), aspect_ratio=1)
tg = f(1)+diff(f)(1)*(x-1)
plot!(tg)
nm = f(1)-1/diff(f)(1)*(x-1)
plot!(nm)

diff(f)
diff(g)
