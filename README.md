# Numerical-method-Julia-set-for-c-i-


Let us consider the transformation $z_{i+1}$ = $z_i^2$ + c, where all quantities are complex.
Depending on the value of c and $z_0$, the sequence of $z_i$ will either remain bounded or diverge to infinity. We can show that the critical radius which differentiates these two behaviors is given by R(c) = max (2,|c|): as soon as a $z_i$ exceeds this radius, the following terms tend inexorably to infinity. For a given c, we can therefore map the $z_0$ that will give a bounded or divergent sequence. The boundary between these two sets defines the Julia set associated to the constant c.

To refine this description, we can in fact distinguish the points $z_0$ whose sequence exceeds the critical radius R(c) after one iteration, two iterations, etc. This distinction leads us to define the following sets: $Q_c^{(-k)}$ = [ $z_0$ tq | $z_k$ | <= R(c)]

The set of prisoner points (i.e., the z0 that give a bounded sequence) corresponds to the limit where k tends to infinity.

In the following figure, we have illustrated (by a gray level "k+1") the sets Qc(-k) associated to the constant c=i:


<p align="center">
<img src="https://github.com/gipi333/Numerical-method-Julia-set-for-c-i-/blob/main/Julia_set_c_equal_i.png">
</p>
