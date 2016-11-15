function z = newton(f,x0,e,p)
n=0;
x1=x0;
while n<1000
    x0=x1;
    x1=x1-f(x1)/p(x1);
    opop = abs(x1-x0);
    if abs(x1-x0)<e
        break;
    end
    n=n+1;
end
r = (x1+x0)/2;
res = [vpa(r),n];
disp(res);
z = vpa(r);
