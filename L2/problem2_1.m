f=@(x)x.^4-7*x.^2+10;
e = 10.^(-10);
disp('function')
disp(f)
disp('e')
disp(e)
solve(f)
a=0;
b=2;
bisec(f,a,b,e);
a=-2;
b=0;
bisec(f,a,b,e);
a=2;
b=3;
bisec(f,a,b,e);
a=-3;
b=-2;
bisec(f,a,b,e);
g = @(x)x.^4-4*x*x+4;
disp('function')
disp(g)
disp('e')
disp(e)
solve(g)
a=0;
b=2;
bisec(g,a,b,e);
