function graphError = kError()
t = log2List();
x = zeros(1, 6);
for i = 1:6
    error = Dirichlet(1/4, 1/4, t(i), t(i), 100, 0, 10, 1, 1)
    x(i) = abs(error)
end

loglog(t, x)