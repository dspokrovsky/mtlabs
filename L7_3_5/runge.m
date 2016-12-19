function r = runge(f,h,t0,y0,N)
y = [];
y(1)=y0;
t(1) = t0;
for i=1:(N-1)
    k1=h*f(t(i),y(i));
    k2=h*f(t(i)+h/3,y(i)+k1/3);
    k3=h*f(t(i)+2*h/3,y(i)+2*k2/3);
    y(i+1)= y(i)+1/4*(k1+3*k3);
    t(i+1)=t(i)+h;
end
r =[t',y'];

