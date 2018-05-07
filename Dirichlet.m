function error = Dirichlet(x, y, m, n, k, T0, T1, L, H)
t = T0;
if y == H
    for i=0:k
        n1 = 4*(T1-T0)/((2*i+1)*pi);
        m1 = n1*sin((2*i+1)*pi*x/L);
        t = t + m1;
    end
    v = t;
    return
end
for i=0:k
    b = sinh((2*i+1)*pi*y/L)/sinh((2*i+1)*pi*H/L);
    n1 = 4*(T1-T0)/((2*i+1)*pi);
    m1 = b*n1*sin((2*i+1)*pi*x/L);
    t = t + m1;
end
v = t;
w = poisson(0,1,0,1,m,n);
estimate = t;

matr = size(w);
reality = w(ceil(matr(1)*x), ceil(matr(2)*y));
error = reality - estimate

