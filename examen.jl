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

#periodo y amplitud
        # f(x)=sin(3x)-cos(2x)
        # plot(f,xlims=(0,10))

#
        # f(x)=(x^x -x)/(ln(x)-x+1)

#polinomio de Taylor 
        # using SymPy
        # @vars x real=true
        # f(x)=sqrt(x/2) 
        # float(series(f(x), x, 2, 15).removeO()(1))
