# Q1346: An inner quotient parametrizing any proper circular arc

## Source and claim

Emmanuel Fricain, Sophie Grivaux and Maëva Ostermann, *Hypercyclicity of Toeplitz operators with smooth symbols*, [arXiv v3, Question 8.19, printed/PDF p. 64](https://arxiv.org/pdf/2502.03303v3#page=64), begins:

> Do there exist two inner functions u, v on the unit disk, and a function

The remainder asks for a map ξ from the closed interval [0,2π] into the unit circle, of class C^{1+ε}, injective, with nowhere-zero derivative including at both endpoints, whose values almost everywhere for 0<θ<2π equal the boundary quotient u(e^{iθ})/v(e^{iθ}).

**Answer: Yes.** The map can be C∞ and can parametrize any nondegenerate proper closed circular arc, in either orientation. Endpoints are distinct one-sided values at the cut point of the unit circle, not two values of a single-valued function at that point.

## 1. A real, regular parameter with a prescribed tail

Choose a nonnegative smooth density ρ with compact support in (1,2), positive on a subinterval and of integral 1. Let
\[
h(w)=\int_1^2\rho(t)\left(\frac{\sin(tw)}{w}\right)^2\,dt,
\qquad g(w)=\int_0^w h(\zeta)\,d\zeta.
\]
The integrand has its removable value at zero, is entire in w and locally uniformly bounded as t varies. Hence h and its normalized primitive g are entire. On the real axis h is even and strictly positive: for any nonzero real x, the zeros of sin(tx) as a function of t are discrete, and at zero the integrand factor is t². Also h(x)=O(x^{-2}) at infinity. Thus A=∫_0^∞h(x)dx is finite and positive, and g increases strictly on the real line from −A to A.

Using sin²(tx)=(1−cos(2tx))/2 gives, for |x|≥1,
\[
h(x)=\frac{1}{2x^2}+r(x).
\]
Every derivative of r decays faster than any power of |x|: derivatives of the Fourier cosine integral are Fourier sine or cosine integrals of smooth compactly supported functions proportional to t^kρ(t), and repeated integration by parts gives arbitrary inverse powers. Integrating this expansion at either infinity, and differentiating the integrated remainder when needed, gives
\[
g(x)=\operatorname{sgn}(x)A-\frac{1}{2x}+R(x),
\]
where R and each derivative are again rapidly decreasing as x→±∞.

The upper-half-plane Cayley map w(z)=i(1+z)/(1−z) has boundary value x(θ)=−cot(θ/2) for 0<θ<2π, increasing from −∞ to +∞. Set s(θ)=g(x(θ)). Near each endpoint the term −1/(2x(θ)) is (1/2)tan(θ/2), a smooth local function with derivative 1/4 at the endpoint. Every derivative of R(x(θ)) goes to zero there: derivatives of x grow at most polynomially in the reciprocal of the endpoint distance, while each derivative of R decays faster than all such powers. Thus s extends to a C∞ function on the closed interval with s(0)=−A and s(2π)=A, and both one-sided endpoint derivatives equal 1/4. Equivalently, the flat remainders extend by zero across their respective endpoint neighborhoods. On the open interval s′=h(x(θ))x′(θ)>0.

## 2. Bounded analytic factors and an exact quotient

For y=Im w≥0 and |w|≥1, the bound |sin(tw)|≤exp(ty) gives |h(w)|≤exp(4y). On the compact half-disk |w|≤1 the entire extension is bounded, so globally |h(w)|≤C exp(4y). Integrating up a vertical segment from x, using boundedness of g(x) on the real line, gives |g(x+iy)|≤C′exp(4y).

Fix any λ>0. The functions
\[
F_\pm(z)=e^{4iw(z)}\bigl(\lambda g(w(z))\pm i\bigr)
\]
are nonzero as elements of H∞ of the disk; the bound follows since |exp(4iw)|=exp(−4 Im w). At each θ in the open interval their boundary values have equal modulus, since g(w(e^{iθ}))=s(θ) is real. By canonical inner–outer factorization, their normalized outer factors coincide (they are determined by the common boundary modulus). Thus F_−=uO and F_+=vO for inner u,v and the same outer O, after absorbing constant phases. Radial quotient equality holds almost everywhere, since the outer function has nonzero boundary values almost everywhere and the inner denominator has boundary modulus one there. The required function is
\[
\xi(\theta)=\frac{\lambda s(\theta)-i}{\lambda s(\theta)+i},
\quad 0\le\theta\le2\pi.
\]
The real Möbius parameter is injective with nonzero derivative on the compact range [−λA,λA]; composing with s gives the regularity, injectivity and endpoint conditions. A continuous argument of (t−i)/(t+i) on that range is π+2 arctan(t). The image arc length is therefore 4 arctan(λA), which takes every value strictly between 0 and 2π as λ varies. A unit-modulus multiple rotates the image, and exchanging u and v reverses orientation (then rotate if needed to obtain the specified arc).

## 3. Version and prior work, checked November 27, 2026

The [publisher's Memoirs list](https://ems.press/books/mems) marks this title forthcoming, and [Fricain's publication list](https://pro.univ-lille.fr/emmanuel-fricain/publications) marks it in press and links HAL v3. The [arXiv history](https://arxiv.org/abs/2502.03303) identifies January 14, 2026 v3 as the latest author revision; no version of record was located. The exact question is quoted from that full PDF, not inferred from the abstract or a proxy.

[Douglas–Rudin's approximation theorem](https://doi.org/10.2140/pjm.1969.31.313) supplies uniform approximation of unimodular boundary data by inner quotients, not an exact representation of an injective smooth one-jump arc. Even uniform convergence of approximants need not preserve exact membership in the set of inner quotients. The standard factorization argument does give exact representation once the bounded-type meromorphic function with equal boundary moduli has been built; it does not supply the nonvanishing endpoint derivative. Here the averaged sinc square removes the oscillatory tail while retaining the 1/x correction in its primitive. Searches for the exact question, single-jump smooth inner quotients, and bounded-type entire parametrizations did not find an exact prior answer. This is a dated search, not a priority or peer-review guarantee. No general Toeplitz hypercyclicity conclusion is claimed.
