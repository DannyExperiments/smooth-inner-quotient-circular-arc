"""Exact Möbius identities and deterministic quadrature samples."""
from fractions import Fraction as F
from math import exp, sin, pi, tan


def average(function, samples=512):
    total = weighted = 0.0
    for k in range(samples):
        u = (k + 0.5) / samples
        t = 1.25 + u / 2
        weight = exp(-1 / (u * (1 - u)))
        total += weight
        weighted += weight * function(t)
    return weighted / total


def h(x):
    return average(lambda t: (sin(t*x)/x)**2 if x else t*t)


for n in range(-60, 61):
    t = F(n, 31)
    real = (t*t - 1) / (t*t + 1)
    imag = -2*t / (t*t + 1)
    assert real*real + imag*imag == 1
    assert real*t - imag == t
    assert imag*t + real == -1

for n in range(-64, 65):
    assert h(n/4) > 0
for theta in (0.02, 0.01, 2*pi-0.01, 2*pi-0.02):
    x = -1/tan(theta/2)
    deriv = h(x)*(1+x*x)/2
    assert abs(deriv - 0.25) < 0.005
print("PASS: 121 exact Möbius fixtures, 129 positivity samples and 4 endpoint-slope samples.")
