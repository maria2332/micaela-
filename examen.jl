#
        # using Plots, SymPy
        # @vars x real=true
        # f(x)= ℯ^(atan(x/2))
        # plot(f)
        # solve(diff(f,2))

#suma de los 50 primeros terminos
        # x(n) = n == 1 ? 2 : sqrt(x(n-1)/2)
        # sum([x(n) for n = 1:50])

#asintota horixontal
        # f(x)= (1+ (3/x))^(x/3)
        # print(limit(f(x), x=>oo))
        # print("\n")
        # print(limit(f(x), x=>-oo))

# periodo y amplitud (amplitud menos de 2, periodo 2pi)
        # f(x)=sin(3x)-cos(2x)
        # plot(f,xlims=(0,10))

#
        # f(x)=(x^x -x)/(ln(x)-x+1)

#polinomio de Taylor 
        # using SymPy
        # @vars x real=true
        # f(x)=sqrt(x/2) 
        # float(series(f(x), x, 2, 15).removeO()(1))

# using SymPy
# @syms n::(integer, positive)  # Declaración de la variable simbólica n.
# z(n) = ((n+3)/n)^2n
# N(limit(z(n), n=>oo))

# using SymPy
# @syms n::(integer, positive)  # Declaración de la variable simbólica n.
# w(n) = ((n-Sym(pi)/2)/cos(n))
# N(limit(w(n), n=>Sym(pi)/2))

#polinomio de Taylor 
        # using SymPy
        # @vars x real=true
        # f(x)=log(sqrt(x))
        # N(series(f(x), x, 1, 10).removeO()(1.2))

        # f(x)=sin(3x)*cos(2x)
        # plot(f,xlims=(0,10))

#suma de los 50 primeros terminos
        # k(n) = (((-1)^n)/n)
        # sum([k(n) for n = 1:1000])

# recta normal
        using Plots, SymPy
        @vars x real=true
        f(x) = log(sqrt((x^2)/2))
        plot(f, -1, 3, xlims=(-1,3), ylims=(-1,2))
        nm = f(2)-1/diff(f)(2)*(x-2)
    
# using Plots, SymPy
#         @vars x real=true
#         f(x)=(2x)^(2/x)
#         plot(f)
#         solve(diff(f,2))

         # using Plots, SymPy
        # @vars x real=true
        # f(x)= ℯ^(atan(x/2))
        # plot(f)
        # solve(diff(f,2))