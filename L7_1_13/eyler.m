function r = eyler(f,y0,t0,h,N)
rez = [];
rez(1)=y0;
for j=2:N
    rez(j)= rez(j-1)+h*f(t0+(j-1)*h,rez(j-1));
end
r = rez';