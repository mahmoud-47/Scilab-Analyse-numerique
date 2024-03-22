function[fx] = f(x)
    fx = 2*x**3-x-5
endfunction

function[iter, sol] = dicho(a,b,eps,N)
    iter=1
    while iter<N
        sol = (b+a)/2
        if f(sol)==0 or (b-a)/2<eps
            disp("solution :")
            disp(sol)
            disp("iterations")
            disp(iter)
            break
        end
        if f(sol)*f(a)>0
            a = sol
        else
            b = sol
        end
        iter=iter+1
    end
endfunction


[i,s]=dicho(1,2,0.0001,1000)
x = 1:0.01:2
plot(x, f(x))
plot(s, f(s),'*-r')
xs = [s s]
ys = [f(1) 0]
x=1:0.01:s
plot(x,0,'r')

//y = f(a):0.01:f(b)]
//plot(xs,ys,'-r')
q = gca()
q.x_location="origin"
