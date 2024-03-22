function[y] = f(x)
    y = 1-x*exp(x)
endfunction

function[y] = solution(u, v)
    y = (u*f(v) - v*f(u))/(f(v) - f(u))
endfunction

function[sol] = FaussePosition(a, b, eps)
    u0 = a
    v0 = b
    x0 = solution(u0, v0)
    while abs(f(x0))>=eps
        if(f(u0)*f(x0) < 0)
            v0 = x0
        else
            u0 = x0
        x0 = solution(u0, v0)
        end
    end
    sol = x0
endfunction

x=0,0.1,1
plot(x, x**2)
disp(FaussePosition(0, 1, 0.00001))