function t = log2List()

init = 4
t = zeros(1,6)
for z = 1 : 6
    t(z) = 2^(z-1) * init
end