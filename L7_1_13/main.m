clear;
f=@(t,y)y/t-2*log(t)/t;
T=2;
t0=1;
y0=1;
h=0.000001;
N=(T-t0)/h+1;

te = eyler(f,y0,t0,h,N);
disp(te)
%5 v -2
%tspan = [t0 1.8];
tspan = t0:0.1:T;
y0 = 1;
[q,w] = ode45(f, tspan, y0);
disp([q,w])

plot(q,w,'-o');
hold;
%точное решение
fy=@(t)-t+2*log(t)+2; 
for i =1:N
    t(i)=t0+(i-1)*h;
    yt(i)=fy(t(i));
end
disp(yt')

plot(t,yt,'-+');

plot(t,te,'-*');

%вычисление погрещностей 
h2=h/2;
N2=(T-t0)/h2+3;
te2 = eyler(f,y0,t0,h2,N2);
tspan = t0:0.05:T;
y0 = 1;
[q2,w2] = ode45(f, tspan, y0);
zE =[];
for i=1:N
    zE(i) = abs(te(i)-te2(2*(i-1)+1));
end
disp('погрешности эйлер')
disp(max(zE))
zE2 =[];
for i=1:10
    zE2(i) = abs(w(i)-w2(2*(i-1)+1));
end
disp('погрешности Рунге-Кутт')
disp(max(zE2))
disp('h* = ')
disp(h)

