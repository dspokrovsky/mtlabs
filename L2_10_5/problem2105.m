f=@(x,y)log(x*y)-sin(y*x*x);
e=10.^-7;
a =1;
b=5;
h =0.5;
x0=a;
vecx =[];
vecy =[];
while x0 ~= 5
    vecx = [vecx,x0];
    x0 =x0 + h;
    g=@(x)f(x0,x);
    gp=@(x)x0/x-x0*x0*cos(x*x0*x0);
    disp(x0);
    z = newton(g,(a+b)/2,e,gp);
    vecy = [vecy,z];
end
plot(vecx,vecy,'o-');
