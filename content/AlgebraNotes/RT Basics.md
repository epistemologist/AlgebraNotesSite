---
title: RT Basics
draft: false
tags: []
description: ""
---

# RT Basics
 - A set $R$ is a **ring** if it has two operations $+, \cdot: R \times R \to R$ such that
	 - $(R, +)$ is a commutative group
	 - $\cdot$ is associative (i.e. $(R, \cdot)$ is a *monoid*)
	 - $$ \begin{align*} a \cdot (b+c) &= a \cdot b + a\cdot c \\ (a+b) \cdot c &= a \cdot c  + b \cdot c \end{align*} \; \; \forall a,b,c \in R$$
	 - if $\cdot$ has neutral element $1_R$, the ring is called **unitary**
	 - if $\cdot$ is commutative, then the ring is **commutative**
- The set of invertible elements under multiplication in a unitary ring is called the set of **units** (i.e. $U(R) = \{ a \in R :  \exists b \in R \; (a \cdot b = b \cdot a = 1_R) \}$) 
- An element $a \ne 0$ of a ring $R$ is a **zero-divisor** if $\exists b \ne a$ in $R$ such that $ab = 0$
- A commutative ring where every non-zero element is invertible is called a **field**. 
	- A non-commutative ring with the same property is called a **division ring**
- A commutative ring $R$ with no zero divisors is called an **integral domain**.
- Examples
	- $\mathbb{Z} \subseteq \mathbb{Q} \subseteq \mathbb{R} \subseteq \mathbb{C}$ are commutative unitary rings
	- $U(\mathbb{Z}) = \{ \pm 1 \}$ , so $\mathbb{Z}$ is not a field; howeve $U(\mathbb{Q}) = \mathbb{Q} \setminus \{0\}$, so $\mathbb{Q}$ are fields (as are $\mathbb{R}$ and $\mathbb{C}$)
	- $\mathbb{Z}_n$ with addition/multiplication of congruence classes is a commutative unitary ring
	- $\mathbb{Z}, \mathbb{Q}, \mathbb{R}, \mathbb{C}$ have no zero-divisors, so they are all integral domains
	- $a \in \mathbb{Z}_n \text{ zero divisor} \iff \gcd(a,n) \ne 1$; so $\mathbb{Z}_n$ has no zero divisors $\iff$ $n$ prime
	- *Claim*: all fields are integral domains
	- the *quaternion ring* is $\mathbb{H} = \text{span}_\mathbb{R}(Q_8) = \{ a+bi+cj+dk : a,b,c,d \in \mathbb{R} \}$ (here, $i,j,k \in Q_8$ are elements of the quaternion ring)
	- For ring $A$, set $X$, the set $R = A^X = \{f : X \to A \}$ with pointwise addition and multiplication is a ring
	- $2\mathbb{Z}$ is a commutative ring without 1
	- $S = \{ f: [0,1] \to \mathbb{R}, f \text{ continuous}\}$ w/ pointwise addition and multiplication is a commutative unitary ring
	- let $D \in \mathbb{Q}$ with $\sqrt{D} \not\in \mathbb{Q}$ - then the set $\mathbb{Q}[\sqrt{D}]= \{ a+b\sqrt{D}: a,b \in \mathbb{Q} \}$ is a *field*
	- *Claim*: any subring of a field is an integral domain
- For any ring $R$, we have $$\forall a,b \in R: \begin{align*} 0 \cdot a = a \cdot 0 = 0 \\ (-a)b = a(-b) = -(ab) \\ (-a)(-b) = ab \\ 1 \in R \implies (-1)(-a) = a \end{align*}$$
- A subset $S \subseteq R$ ring is a **subring** if $(S, +_R, \cdot_R)$ is a ring.
	- $\mathbb{Z} \subseteq \mathbb{Q} \subseteq \mathbb{R} \subseteq \mathbb{C}$ are subrings, $\mathbb{Q} \subseteq \mathbb{Q}[\sqrt{D}] \subseteq \mathbb{C}$
	- A subset $S \subseteq R$ is a subring iff $(S, +) \le (R, +)$ is a subgroup and $(S, \cdot) <  (R, \cdot)$ is a subsemigroup
	- $R = \{ \frac{a}{2^k} : a \in \mathbb{Z}, k \in \mathbb{Z}_{\ge 0}\} \subseteq \mathbb{Q}$  is a subring
- **cancellation property**: For $a,b,c \in R$ with $a$ a non-zero divisor, we have $a b = a c \implies b = c$
- A **domain** is a ring in which $ab = 0 \implies a=0$ or $b=0$.
- Every finite domain is a field (proof: simple), moreover every finite division ring is a field (*Wedderburn's Theorem*, proof is more complicated)