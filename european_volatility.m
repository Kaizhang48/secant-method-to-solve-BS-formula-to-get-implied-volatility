function sigma=european_volatility(id,V,K,T,S,q,r,s0,s1,tol,maxn)
    f=@(x)BS_european(id,K,T,S,x,q,r)-V;
    sigma=secant(s0,s1,f,tol,maxn);
end