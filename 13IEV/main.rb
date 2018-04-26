# 1. AA-AA 100%
# 2. AA-Aa 100%
# 3. AA-aa 50%
# 4. Aa-Aa 75%
# 5. Aa-aa 50%
# 6. aa-aa 0%

x1, x2, x3, x4, x5 = 18355, 18697, 16616, 18872, 19886
y1, y2, y3, y4, y5 = 2, 2, 2, 2 * 0.75, 2 * 0.50

# E(x) = sum_{k=1}^{n} {k * Pr(x = k)}
# k - num of valid offspring
result = x1 * y1 + x2 * y2 + x3 * y3 + x4 * y4 + x5 * y5
puts result
