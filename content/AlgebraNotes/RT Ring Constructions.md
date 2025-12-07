---
title: RT Ring Constructions
draft: false
tags: []
description: ""
---

# RT Ring Constructions
- Given two rings $R$ and $S$, the **Cartesian product** of $R \times S$ can be endowed with a ring structure via $$\begin{align*} + : (R \times S) \times (R \times S ) &\to R \times S \\ (r_1, s_1)  + (r_2, s_2)&\mapsto  (r_1 +_R r_2, s_1 +_S s_2) \end{align*}  $$ $$ \begin{align*} \cdot : (R \times S) \times (R \times S ) &\to R \times S \\ (r_1, s_1)  \cdot (r_2, s_2)&\mapsto  (r_1 \cdot_R r_2, s_1 \cdot_S s_2) \end{align*}$$ (The ring axioms can be verified)
- Given a ring $R$, the set $R[X] = \{ \sum_{i=0}^n a_i x^i : n \ge 0, a_i \in R, a_n \ne 0 \}$ is a ring (**a polynomial ring**) under addition defined by $$ \begin{align*} + : R[X] \times R[X] &\to R[X] \\ \left( \sum_i a_i X^i \;,\; \sum_{j} b_jX^j \right) &\mapsto \sum_{i} (a_i + b_i) X^i \end{align*} $$ and multiplication defined by $$\begin{align*} \cdot: R[X] \times R[X] &\to R[x] \\  \left( \sum_i a_i X^i \;,\; \sum_{j} b_jX^j \right) &\mapsto \sum_k c_k X^k \end{align*}$$ where $c_k = \sum_{l=0}^k a_l b_{k-l}$.
	- Note that we can view each element $p(X) = \sum_{i=0}^n a_i X^i$ as an infnite series $p(X) = \sum_{k>0} a_k X^k$ with $a_k = 0$ for $k > n$.
	- We have an *embedding* $$ \begin{align*} R &\hookrightarrow R[X] \\ a &\mapsto a + 0X + 0X^2 + \cdots \end{align*}$$ similar to $$\begin{align*} \mathbb{R} &\hookrightarrow \mathbb{C} \\ x &\mapsto x + 0i\end{align*}$$
	- For a domain $R$, $0 \ne p(X), q(X) \in R[X]$, we have:
		- $\deg(p(X) q(X)) = \deg(p(X)) + \deg(q(X))$ where $\deg\left( \sum_{k=0}^n a_k x^k \right) = n$  is the **degree** of the polynomial 
		- $U(R[X]) = U(R)$
		- $R[X]$ is a domain
	- for a ring $R$, we have $Z(R[x]) = Z(R)[x]$
	- for a field $F$, $F[X]$ is a domain
- Given a ring $R$, integer $n \ge 1$, then the set $$M_n(R) = \left\{ \underbrace{ \left[\begin{array}{rrr} a_{11} & \cdots & a_{1n} \\ \vdots &  & \vdots \\ a_{n1} & \cdots & a_{nn}\end{array}\right]}_{(a_{ij})} : a_{ij} \in R \right\} $$ with addition defined by $(a_{ij}) + (b_{ij}) = (a_{ij}+b_{ij})$  and $(a_{ij}) \cdot (b_{ij}) = (c_{ij})$ where $c_ij = \sum_{k=1}^n a_{ik} b_{kj}$ is a ring (a **matrix ring**) with multiplicative identity is the identity matrix of size $n \times n$ and additive identity is the all zero matrix.
	- Generally, matrix multiplication is *not commutative*
	- Similarly, $M_n(R)$ is not a domain (e.g. take $\left[ \begin{array}{rr} 0 & 1 \\ 0 & 0 \end{array}\right]^2 = \left[ \begin{array}{rr} 0 & 0 \\ 0 & 0 \end{array}\right]$)
- For a ring $R$, its **center** is the set of all elements that commute with all other elements (i.e. $Z(R) = \{ a \in R : \forall b \in R \; (a b  = b a) \}$ )
	- for a field $F$, $Z(M_n(F))  = \{ t I_n : t \in F\}$; more generally, $Z(M_n(R)) = \{ t I_n : t \in Z(R) \}$ 
	- $U(M_n(F)) = \{ A \in M_n(F) : \det(A) \ne 0 \} = \text{GL}(M_n(F))$
- Let $G$ be a group, $R$ be a ring. Then a **G-algebra** is a ring on the set $$RG = \left\{ \sum_{g \in G} a_g g: g \in G: a_g \in R \right\}$$ with addition defined via $$\left( \sum_{g \in G} a_g g \right) + \left( \sum_{g \in G} b_g g\right) = \left(\sum_{g \in G} (a_g + b_g) g \right)$$ and multiplication defined via $$\left( \sum_{g \in G} a_g g\right) \cdot \left( \sum_{g \in G} b_g g\right) = \sum_{g \in G} c_g g$$ where $c_g = \sum_{\substack{ h,k \in G \\ hk=g} } a_h b_k$
	- $RG \text{ commutative} \iff R \text{ commutative}, G \text{ commutative}$ 
	- Examples
		- $R = \mathbb{Z}, G = \mathbb{Z}_2 \cong \{ x : x^2 = 1\}$ - then $RG = \{ a+bx : x^2 = 1\}$, $$ \begin{align*} (3+2x) \cdot (5+3x) &= 15 + 9x - 10x - 6x^2 \\ &= 9 - x\end{align*}$$
		- $R = \mathbb{Z}, G = \mathbb{Z} \cong \langle x \rangle$ - then $RG = \left\{ \sum_{k \in \mathbb{Z}} a_k x^k : a_k \in \mathbb{Z} \right\}$
			- generally, if $G = \mathbb{Z}$, then $RG \cong R[x, x^{-1}]$, the ring of *Laurent polynomials* with coefficients in $R$
	- Note if $g \in G$ has finite order, then $$\begin{align*} 0 &= 1-g^n \\ &= \underbrace{ (1-g) }_{\ne g} \underbrace{ (1 + g + g^2 + \cdots + g^{n-1})}_{\ne g}\end{align*}$$ Therefore, any group algebra where $G$ has an element of finite order is *not* an integral domain
	- For a finite group $G$, $z = \sum_{g \in G} g \in Z(G)$ 
-  An **algebra** over a field $F$ is a ring $R$ that contains of copy of $F$ in its center $Z(R)$
	- For example, we have $$\begin{align*} F &\hookrightarrow F[x] \\ a &\mapsto a+0x+0x^2+ \cdots\end{align*}$$ Since $a \in F$ commutes with all elements of $F[x]$, we have $F \subseteq Z(F[x])$ and therefore $F[x]$ is the *algebra of polynomials over $F$.*
	- Similarly, we have $$\begin{align*} F &\hookrightarrow M_n(F) \\ a &\mapsto a \cdot I_n\end{align*}$$and so $M_n(F)$ is the *algebra of matrices over $F$*
	- We also have the embedding $$\begin{align*}F \hookrightarrow FG  \\ a \mapsto a\cdot 1_G\end{align*}$$and so $FG$ is the *group algebra of $G$ over $F$*.
- Advantage of group rings over group algebra is that we can construct it in a more concrete way
	- Let $R$ be a *vector space* over $F \subseteq Z(R)$ with basis $B = \{ x_1, x_2, \cdots \}$ 
	- We only need to define multiplication in $R$ via multiplication of the basis elements (we can extend to $R$ via linearity), we have relations of the form $$ x_i x_j = \sum_k \alpha_{ij}^k x_k $$ for some coefficients $\alpha_{ij}^k \in R$
	- We then determine relations between the $\alpha_{ij}^k$ that make multiplication associative
- Examples of the above construction
	- $F[x] = \text{span} \left\{ 1, x, x^2, \cdots \right\}$ subject to the relations $x^i x^j = x^{i+j} \; \forall i,j \ge 0$ 
	- $M_2(F) = \text{span} \left\{  \underbrace{ \left[ \begin{array}{rr} 1 & 0 \\ 0 & 0 \end{array}\right]}_{e_{11}}, \underbrace{ \left[ \begin{array}{rr} 0 & 1 \\ 0 & 0 \end{array}\right]}_{e_{12}}, \underbrace{ \left[ \begin{array}{rr} 0 & 0 \\ 1 & 0 \end{array}\right]}_{e_{21}}, \underbrace{ \left[ \begin{array}{rr} 0 & 0 \\ 0 & 1 \end{array}\right]}_{e_{22}}  \right\}$; here, we can define relations $e_{ij} e_{kl} = \delta_{jk} e_{il}$
	- The **free algebra** over $F$ in two indeterminates $x$ and $y$ is the vector space $$ F\langle x,y \rangle = \text{span} \left\{ \text{all non-commutative monomials in $x$ and $y$}\right\} $$ where multiplication is given by concatenation.
	- The **Weyl algebra**: A $F$-vector space $F\langle x,y \rangle$ where basis elements multiply like $y x = x y + 1$. For example, we have: $$ \begin{align*} y x^2 y &= y x x y \\ &= (xy+1) xy \\ &= xyxy + xy \\ &= x(xy+1)y + xy \\ &=  (x^2 y + x)y + xy \\ &= x^2y^2 + 2xy  \end{align*}$$
	- The **quantum plane**: $\mathbb{C}_q[x,y] = \text{span} \{ x^i y^j : i,j \ge 0\}$ subject to $yx = qxy$ where $q \in \mathbb{C} \setminus \{0,1 \}$; for example, we have $$\begin{align*} yx^2y &= y x x y \\ &= q xyxy \\ &= qx(qxy)y \\ &=q^2 x^2 y^2  \end{align*}$$
	- The group algebra $FG = \left\{ \sum_{g \in G} a_g g: a_g \in F \right\} = \text{span}_{F} G$ with multiplication defined by basis elements $g \cdot h = gh \in G$ 
	- $R = \text{span}_F \left\{ x^i y^j : i,j \ge 0\right\}$ subject to relations $yx = xy - x$; for example, we have: $$\begin{align*} y^2x = yyx &= y(xy+x^2) \\ &= yxy + yx \\ &=(xy+x)y + (xy+x) \\ &= xy^2 + xy + xy+ x = xy^2 + 2xy+x \end{align*}$$
	- $R = F\langle x, y | yx=xy+x\rangle$ is the *Universal Enveloping Algebra* of the unique 2-dimensional solvable Lie algebra
- A **Lie algebra** is a vector space $L$ over a field $F$ with a multiplication $[\cdot, \cdot]: L \times L \to L$ such that 
	- $[\cdot, \cdot]$ is bilinear - i.e. we have $[ax+by, z] = a[x,z]+b[y,z]$ and $[z, ax+by] = a[z,x] + b[z,y]$ for all $a,b \in F, x,y,z \in L$
	- $[\cdot, \cdot]$ is antisymmetric: we have $[x,y] = -[y,x]$ for all $x,y \in L$
	- the *Jacobi identity*, for all $x,y,z \in L$, we have $[x, [y,z]] + [y,[z,x]] + [z,[x,y]] = 0$
	- Note: Lie algebras are not necessarily associative
- 
  
 