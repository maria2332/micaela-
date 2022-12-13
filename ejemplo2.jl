#¿Cuál es el periodo y la amplitud de la función 2cos(x/2)?
using Plots
f1(x)=2*cos(x/2)
plot([f1], xlims=(0,20) , ylims=(-2,4))

#¿Cuál de las gráficas corresponde a la siguiente función paramétrica?
using Plots
u1(t)=sin(2t)-cos(t)
v1(t)=sin(t)+cos(t)
plot(u1, v1, 0, 4pi, aspect_ratio=1.0, legend = false)