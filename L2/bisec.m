function z = bisec(f,a,b,e)
an = a;
bn = b;
k=0;
while (bn - an) > 2*e
    xn = (an+bn)/2;
    fa = f(an);
    fb = f(bn);
    fxn = f(xn);
    if fa*fxn < 0
        bn = xn;
    else
        an = xn;
    end
    k=k+1;
end 
xn = (an+bn)/2;
res = [xn,k];
disp(res);
z = xn;
end