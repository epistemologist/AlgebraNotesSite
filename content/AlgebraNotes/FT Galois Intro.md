---
title: FT Galois Intro
draft: false
tags: []
description: ""
---

# FT Galois Intro
- An isomorphism $\sigma$ of a field $K \to K$ is called an **automorphism** of $K$. We denote the set of automorphisms on $K$ as $\text{Aut}(K)$ . We say that an automorphism $\sigma \in \text{Aut}(K)$ *fixes* $\alpha \in K$ if $\sigma \alpha = \alpha$ and similarly we say $\sigma$ *fixes* $F \subseteq K$ if $\sigma \alpha = \alpha \; \forall \alpha \in F$.
	- Any field has at least one automorphism - the identity map; in particular we have that $\text{Aut}(\mathbb{Q}) = \text{Aut}(F_p) = \{1\}$ have only the identity map as automorphisms
- For a field extension $F \subseteq K$, denote $\text{Aut}(K/F)$ to be the set of automorphisms of $K$ that fix $F$
	- Note that we have that in such a case, we have that $\text{Aut}(K)$ is a *group under composition* with $\text{Aut}(K/F)$ as *a subgroup*
- Given a field extension $F \subseteq K$ and an automorphism $\sigma \in \text{Aut}(K/F)$, we have that $\sigma$ *permutes the roots of irreducible polynomials*
	- Proof: Let $f(x) = x^n + a_{n-1} x^{n-1} + \cdots + a_1 x + a_0 \in F[x]$ irreducible with $f(\alpha) = 0$. Applying $\sigma$ and using the fact that $\sigma$ is a field homomorphism, we have: $$\begin{align*} \sigma(f(\alpha)) &= \sigma(0) = 0 \\ &\implies \sigma(\alpha^n + a_{n-1} \alpha^{n-1}+\cdots+a_1\alpha+a_0) = 0 \\ &\implies (\sigma(\alpha))^n + a_{n-1}(\sigma(a))^{n-1} + \cdots + a_1 \sigma(\alpha) + a_0 = 0 \end{align*}$$ We therefore have that $\sigma(\alpha)$ is also a root of $f(x)$.
	- For example, let $K = \mathbb{Q}(\sqrt{2})$, $\tau \in \text{Aut}(K/\mathbb{Q})$ permutes the roots of the minimal polynomial of $x^2-2$; we therefore have that $\tau(\sqrt{2}) = \pm\sqrt2 \implies \tau(a+b\sqrt2)=a\pm b\sqrt2$  and the automorphism group is cyclic of order 2.
	- Let $K = \mathbb{Q}(\sqrt[3]{2})$. We have that $\tau \in \text{Aut}(K / \mathbb{Q})$ sends $\sqrt[3]{2}$ to one of the three roots of $x^3-2$. However, we can only have $\tau(\sqrt[3]{2}) = \sqrt[3]{2}$ as the other 2 roots of the minimal polynomial are complex and therefore not in the field. We therefore have that $\text{Aut}(K/\mathbb{Q}) = \{1\}$ contains only the identity map.
- For a subgroup $H \le \text{Aut}(K)$, the collection $F$ of elements from $K$ fixed by all elements of $H$ is a subfield of $K$ - we denote this the **fixed field** of $H$.  
	- We have that if $F_1 \subseteq F_2 \subseteq K$ are subfields, then $\text{Aut}(K/F_2) \le \text{Aut}(K/F_1)$; similarly, if $H_1 \le H_2 \le \text{Aut}(K)$ are subgroups with associated fixed fields $F_1, F_2$ respectively, then $F_2 \subseteq F_1$ (note the reversal of inclusion!)
- Galois extensions
	- for the field extension $\mathbb{Q} \subseteq K = \mathbb{Q}(\sqrt{2})$, the automorphism group $\text{Aut}(K/\mathbb{Q})$ has size 2 with fixed field $\mathbb{Q}$ equivalent to the base field; however for the field extension $\mathbb{Q} \subseteq K = \mathbb{Q}(\sqrt[3]{2})$, the automorphism group $\text{Aut}(K/\mathbb{Q})$ is trivial and the fixed field is the entire field $K$
	- for the splitting field $E$ of a polynomial $f(x) \in F[x]$, we have that $|\text{Aut}(E/F)| \le [E:F]$ with equality if $f(x)$ separable over $F$; more generally, we have that $|\text{Aut}(K/F)| \le [K:F]$ for *any finite extension* $F \subseteq K$
	- this motivates the following definition: for a field extension $F \subseteq K$, this extension is said to be a **Galois extension** if $|\text{Aut}(K/F)| = [K:F]$. If $F \subseteq K$ is a Galois extension, the group of automorphisms $\text{Aut}(K/F)$ is called the **Galois group of $K/F$** denoted $\text{Gal}(K/F)$
	- any splitting field of a separable polynomial is Galois
- examples of Galois groups
	- the extension $\mathbb{Q} \subseteq \mathbb{Q}(\sqrt2)$ is Galois with Galois group $\text{Gal}(\mathbb{Q}(\sqrt2)/\mathbb{Q}) = \{1, \sigma\} \cong \mathbb{Z}_2$ where $\sigma(a + b\sqrt2) = a - b\sqrt2$ 
		- more generally, any quadratic extension of a field $F$ of $\text{char} \ne 2$ is Galois
	- the extension $\mathbb{Q} \subseteq \mathbb{Q}(\sqrt2, \sqrt3)$ is Galois since it is the splitting field of the polynomial $(x^2-2)(x^2-3)$. Any automorphism $\sigma$ is determined by where it sends $\sqrt2, \sqrt3$. It can be shown that $\text{Gal}(\mathbb{Q}(\sqrt2, \sqrt3), \mathbb{Q}) = \{1, \sigma, \tau, \sigma\tau\} \cong \mathbb{Z}_2^2$ where $\sigma: \begin{cases} \sqrt2 \mapsto -\sqrt2 \\ \sqrt3 \mapsto \sqrt3 \end{cases}, \tau: \begin{cases} \sqrt2 \mapsto \sqrt2 \\ \sqrt3 \mapsto -\sqrt3\end{cases}$  (See discussion on D&F p563 for more details)
	- we have that the splitting field of $x^3-2$ over $\mathbb{Q}$ is Galois - we let this field be $\mathbb{Q}(\sqrt[3]{2}, \sqrt[3]{2}\omega)$  where $\omega^3=1$ is a primitive cube root of unity. We have that any automorphism maps each of these two elements to one of the three roots of $x^3-2$ giving $3^2=9$ possibilities; however this cannot be the case as $[\mathbb{Q}(\sqrt[3]{2}, \sqrt[3]{2}\omega):\mathbb{Q}] = 6 \le 9$; it turns out some of these choices are not automorphisms and the Galois group here is the $S_3$ (see D&F p564-5)
- 