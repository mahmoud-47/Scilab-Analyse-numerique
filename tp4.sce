function[y] = f(x)
    y = x**3-x+1
endfunction

function[y] = f1(x)
    y = 3*x**2-1
endfunction

function[y] = f2(x)
    y = 6*x
endfunction

function[y] = tang(x,x0)
    y = f1(x0)*(x-x0)+f(x0)
endfunction

function[sol] = newton(a, b, eps)
    if f(a)*f2(a)>0 then
        x0 = a
    elseif f(b)*f2(b)>0 then
        x0 = b
    else
        x0 = a
    end
    m = -2:0.1:-1
    plot(m,tang(m,x0),'r')
    x1 = x0-f(x0)/f1(x0)
    plot(m,tang(m,x1),'r')
    while abs(x0-x1)>eps
        x0 = x1
        x1 = x0-f(x0)/f1(x0)
    end
    sol = x1
    plot(m,tang(m,sol),'r')
endfunction

sol = newton(-2,-1,0.0001)
disp(sol)

x = -2:0.01:-1
plot(x,f(x))
plot(sol, f(sol),'*-r')

