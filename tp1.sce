x = 1:.1:100;
//plot(x,sin(x),'-r')
//plot(x,cos(x))
/*xlabel('abs')
ylabel('ord')
title('Mon titre')
legend('sinus')
for i=1:10
    disp(i)
end
for i=[1,2,3]
    disp(i)
end
*/
//calculer le factoriel d'un nombre
n = 5;fact = 1
/*for i=1:n
    fact=fact*i
end*/
/*
i=1
while(i<=n)
    fact = fact*i
    i=i+1
end
disp(fact)
*/
x = 1;i=0
/*while(1+x>1)
    x = x/2
    i=i+1
end
disp(i)
disp(x)

n=8,i=1,c=0
while(i<=n)
    if modulo(n,i)==0 then
        c = c+1
    end
    i=i+1
end
if c==2 then
    disp('premier')
else
    disp('non premier')
end
//x = int(-5/2)
//disp(x)

x = 5
if x==1 then
    disp('on a 1')
elseif x==3
    disp('on a 3')
elseif(x==5)
    disp("on a 5")
else
    disp('else')
end
*/
function[ret1,ret2] = maFonc(inp1)
    ret1 = inp1*2
    ret2 = inp1*3
endfunction
[s1,s2]=maFonc(5)

function[fact] = facto(n)
    fact=1
    for i=1:n
        fact=fact*i
    end
endfunction
//disp(facto(5))

function[fact] = graph(a,b)
    x = a:0.1:b
    y1=cos(x)
    y2=sin(x)
    plot(x,y1,'-r')
    plot(x,y2)
    f=1
endfunction
graph(1,2)
