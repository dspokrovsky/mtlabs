f=@(x)exp(x)+1-sqrt(9-x*x);
p=@(x)exp(x)+x/sqrt(9-x*x);
e = 10.^-6;
disp('function')
disp(vpa(f))
disp('derivative')
disp(vpa(p))
disp('e')
disp(vpa(e))
ezplot(f);
ans = solve(f);
disp(ans);
disp('bisec')
bisec(f,0,1,e);
disp('newton')
newton(f,(0+1)/2,e,p);
