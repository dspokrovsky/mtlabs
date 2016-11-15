function z = newton(f,x0,e,p)
n=0;
x1=x0;
while n<100000
    x1=x0-f(x0)/p(x0);
    
    if abs(x1-x0)<e
        break;
    end
    x0=x1;
    n=n+1;
end
r = (x1+x0)/2;
res = [vpa(r),n];
disp(res);
z = vpa(r);
