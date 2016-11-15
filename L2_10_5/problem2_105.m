f=@(x,y)log(x*y)-sin(x*x*y);
disp('function')
disp(f)
a=1;
b=2.5;
h=0.5;
e=10.^-7;
vx =[];
vy =[];
x0=1;
while x0<5.1
    vx=[vx,x0];
    g=@(x)f(x0,x);
    gp=@(x)1/x-x0*x0*cos(x0*x0*x);
    t = newton(g,x0,e,gp);
    fprintf('step: %f \n',x0);
    disp(t);
    vy=[vy,t];
    x0= x0+h;
end
plot(vx,vy);
disp(vx)
disp(vy)