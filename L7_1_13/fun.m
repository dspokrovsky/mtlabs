function rez = eyler(f,y0,t0,h,N)
rez = [];
y=[];
y=x0;
for m=1:k
    x=y;
    for i=1:n
        u=0;
        j=1;
        while (j<i)
            u=u+B(i,j)*y(j,1);
            j=j+1;
        end
        j=i+1;
        while(j<=n)
            u=u+B(i,j)*x(j,1);
            j=j+1;
        end
        y(i,1)=u+c(i,1);
    end
    for i=1:n
        rez(m,i)=y(i,1);
    end
end
rez = rez' ;