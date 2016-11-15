format shortg
A=[];
B=[13;13;13;13;13];
i=1;
j=1;
while j<6
    i=1;
    while i<6         
        c = 0.1*13*i*j;
        A(i,j)=1/(1+c);
        i=i+1;
    end
    
    j=j+1;
end;
disp(A)
disp('solution');
X = A\B;
disp(vpa(X))
disp('condition number');
con = cond(A);
disp(vpa(con));
B1=[15;13;13;13;13];
B2=[13;15;13;13;13];
B3=[13;13;15;13;13];
B4=[13;13;13;15;13];
B5=[13;13;13;13;15];
X1=A\B1;
X2=A\B2;
X3=A\B3;
X4=A\B4;
X5=A\B5;
d1=max(X-X1)/max(X);
d2=max(X-X2)/max(X);
d3=max(X-X3)/max(X);
d4=max(X-X4)/max(X);
d5=max(X-X5)/max(X);
d = [d1;d2;d3;d4;d5];
disp('d');
disp(d);
al1=max(B1-B)/max(B);
al2=max(B2-B)/max(B);
al3=max(B3-B)/max(B);
al4=max(B4-B)/max(B);
al5=max(B5-B)/max(B);

al=[al1;al2;al3;al4;al5];

disp(al);
bet1=d1/al1;
bet2=d2/al2;
bet3=d3/al3;
bet4=d4/al4;
bet5=d5/al5;
bet=[bet1;bet2;bet3;bet4;bet5];
disp(z);
deltax1=cond(A)*al1;
deltax2=cond(A)*al2;
deltax3=cond(A)*al3;
deltax4=cond(A)*al4;
deltax5=cond(A)*al5;
delt=[deltax1;deltax2;deltax3;deltax4;deltax5];
disp(vpa(delt));