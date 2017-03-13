function y=secant(x0,x1,f,tol,maxn)
x(1)=x0;
x(2)=x1;
for i=2:maxn
    if abs(x(i)-x(i-1))<tol
        break
    else
        x(i+1)=x(i)-(f(x(i)).*(x(i)-x(i-1)))./(f(x(i))-f(x(i-1)));
    end
end
 y=x(i);
end
