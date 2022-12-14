#sucesion 10 terminos
x(n) = (1 + 1 / n)^n
print([x(n) for n = 1:10])

#sucesion 10 terminos
x(n) = n == 1 ? 1 : sqrt(1+x(n-1))
print([x(n) for n = 1:10])

#dibujar la grafica de la sucesion
using Plots
x(n) = n / (4n + 2)
scatter([x(n) for n = 1:50], legend=false)

#dibujar la grafica de la sucesion
using Plots
x(n) =  n == 1 ? 0.5 : 3/(2+x(n-1))
scatter([x(n) for n = 1:50], legend=false)

#calcular el limite de la sucesion
using SymPy
@syms n::(integer, positive)  # Declaración de la variable simbólica n.
x(n) = 1/n
limit(x(n), n=>oo)





#dibujar la grafica de la tabla
using Plots
horas = 0:7
bacterias = [1, 2, 4, 8, 16, 32, 64, 128]
scatter(horas, bacterias, xlab="Horas", ylab="Bacterias", title="Evolución de la población de bacterias", legend=false)
#dibujar la grafica de la tabla
using Plots
plot!(x -> 2^x)


#dibujar la grafica de la gravedad
using Plots, SymPy
@vars t  #Declaramos t como una variable simbólica
y₀ = 5
v₀ = 10
const gravedad = -9.8  #Declaramos la gravedad como una constante
y0(t) = y₀+v₀*t+ 1/2*gravedad*t^2
plot(y0, xlims=(0,3), ylims=(0,15), label="Pelota", xlab="Tiempo (s)", ylab="Altura (m)")


#dibujar la grafica en el intervalo 3,4
using Plots, LaTeXStrings
f(x) = 2x^3-3x^2-12x+4
plot(f, -3, 4, label=L"$f(x) = 2x^3-3x^2-12x+4$")
    #raices
    using SymPy
    @syms x
    f(x) = 2x^3-3x^2-12x+4
    raices = solve(f(x))  # Solución exacta
    print(raices)
    N(raices)  # Solución aproximada con decimales


#grafica a trozos h(x)=-2x si x<=0, x^2 si 0<=x<=2, 4 si x>2
using Plots
h(x) = x<=0 ? -2x : x<=2 ? x^2 : 4
plot(h, legend = false)




#Calcular los polinomios de taylor hasta grado 10 de las siguientes funciones en los puntos indicados.
# f(x)=cos(x) en x=pi/2

using SymPy
@vars x real=true
f(x) = cos(x)
series(f(x), x, Sym(pi)/2, 10)

#g(x)=ln(x) en x=1
g(x) = log(x)
series(g(x), x, 1, 10)

#h(x)=e^x en x=0
h(x) = exp(sin(x))
series(h(x), x, 0, 10)