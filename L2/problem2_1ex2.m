x=[810,115,26,1158,964,710,138,535,593,1011];
i=1;
y1=x(2)-x(1);
y2=x(3)-x(2);
y3=x(4)-x(3);
a1=-187517;
b1=x(i+1)-a1*x(i);
x2=a1*x(i+1)+b1;
m=abs(x2-x(i+2));
p = 0;
while p~=1 
    a1 = mod(a1,m);
    %disp(a1);
    b1= mod(b1,m);
    %disp(b1);
    x2=mod(a1*x(i+1)+b1,m);
    %disp(x2);
    m2=mod(abs(x2-x(i+2)),m);
    %disp(m2);
    m=gcd(m2,m);
    %disp(m);
    i=i+1;
    %disp(111111111111111111);
end
disp(m)