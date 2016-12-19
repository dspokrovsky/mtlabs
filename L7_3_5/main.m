clear;
f=@(t,y)-2*t*y+2*(t*y).^3;
T=1;
t0=0;
y0=sqrt(2);
h=0.1;
N=(T-t0)/h+1;
h2 = h/2;
N2=N*2+1;

%tspan = [t0 1.8];
tspan = t0:h:T;
[q,w] = ode45(f, tspan, y0);
disp([q,w])
tspan2= t0:h2:T;
[q2,w2] = ode45(f, tspan2, y0);
disp([q2,w2])
plot(q,w,'-o');
hold;
plot(q2,w2,'-+');

zE2 =[];
for i=1:N
    zE2(i) = abs(w(i)-w2(2*(i-1)+1));
end
disp(max(zE2))
%погрешность
ep=[];
for i=1:N
    ep(i)=(w2(2*i-1)-w(i))/15;
end
w2_n=[];
for i=1:N
    w2_n(i)=w2(2*i-1)+ep(i);
end
disp('погрешность для Рунге-Кутта')
disp(ep')
disp(w2_n')
plot(q,w2_n,'-o');

%runge3(f,h,t0,y0,N)
q3 = runge(f,h,t0,y0,N);
q32 = runge(f,h2,t0,y0,N2);
w3 = q3(:,2);
w32 = q32(:,2);
disp('q3')
disp(q3)
disp(w3)
%погрешность
ep3=[];
for i=1:N
    ep3(i)=(w32(2*i-1)-w3(i))/(2^.2-1);
end
w3_n=[];
for i=1:N
    w3_n(i)=w3(i)+ep3(i);
end
disp('погрешность для Рунге-Кутты 3 порядка 2')
disp(max(abs(ep3')))

plot(q,w3_n,'-*');

disp('погрешность для Рунге-Кутта порядка 4')
disp(max(abs(ep')))
