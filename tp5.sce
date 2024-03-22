function[fx] = f(x)
    fx = 2*x**3-x-5
endfunction

function[y] = sol_sec(xn_1, xn)
    y = xn - ( f(xn)*(xn-xn_1) )/( f(xn)-f(xn_1) )
endfunction

function[y] = droite_sec(x, x0, x1)
    y = f(x1) + (x-x1)*(f(x1)-f(x0))/(x1-x0)
endfunction

function[sol] = secante(a, b, eps)
    x0 = a
    x1 = b
    x = 1:.01:2
    plot(x, droite_sec(x, x0, x1), 'r')
    i = 0
    while abs(x1-x0)>=eps
        i = i+1  
        if i==2
            plot(x, droite_sec(x, x0, x1), 'g')
        end
        m = sol_sec(x0, x1)
        x0 = x1
        x1 = m
    end
    plot(x, droite_sec(x, x0, x1), 'r')
    sol = x1
endfunction

x = 1:.01:2
plot(x, f(x))

disp(secante(1, 2, 0.0001))