---
title: GT Direct+Semidirect Products
draft: false
tags: []
description: ""
---

# GT Direct+Semidirect Products
 - if $G, H$ are groups, the Cartesian product $G \times H$ inherits a group structure called the **direct product** of $G$ and $H$ via $(g_1, h_1) \star (g_2, h_2) = (g_1 g_2, h_1 h_2)$ (i.e. component wise)
 - for a group $G$, with $A,B \le G$, we say that $G$ is the **internal direct product of $A$ and $B$** if $G = AB = \{ ab : a \in A, b \in B \}$, $A \cap B = \{e\}$ and $A,B \trianglelefteq G$
	 - for a group $G$, subgroups $A,B \le G$ such that $G = AB$, we have:
		 - $A \cap B = \{e\} \iff$ each $g \in G$ can be uniquely factored as a product of elements of $A$ and $B$
		 - $A, B \trianglelefteq G \iff ab = ba \; \forall a \in A, \forall b \in B$ 
		 - $A \cap B = \{ e \} \implies |G|= |A| \cdot |B|$ 
	 - for example, we have $V_4 = \{ e, (12)(34), (13)(24), (14)(23) \}$ is an internal direct product of $\langle (12)(34) \rangle \cong \mathbb{Z}_2$  and $\langle (13)(24)\rangle \cong \mathbb{Z}_2$ 
	 - for groups $A$ and $B$, we have that $A \times B$ is the internal direct product of the subgroups $A' = A \times \{ e_B\}$ and $B' = \{e_A\} \times B$ ; moreover, if $G$ the internal direct product of $A$ and $B$, then $G \cong A \times B$
- classifying finite abelian groups
	- *Chinese Remainder Theorem*: for $m,n \in \mathbb{Z}^+$, we have the function $$\begin{aligned} \varphi: \mathbb{Z}_{mn} &\to \mathbb{Z}_{m} \times \mathbb{Z}_n \\ a+mn\mathbb{Z} &\mapsto (a+m\mathbb{Z}, a+n\mathbb{Z}) \end{aligned}$$ is a ring homomorphism. If $\gcd(m,n) = 1$, then $\varphi$ is a ring isomorphism - in this case, we have that $\mathbb{Z}_{mn} \cong \mathbb{Z}_m \times \mathbb{Z}_n$.
	- moreover, if $\gcd(m,n) = 1$, we have that $(\mathbb{Z}_{mn})^\times \cong (\mathbb{Z}_m)^\times \times (\mathbb{Z}_n)^\times$ (use the above ring isomorphism)
	- group structure of $(\mathbb{Z}_n)^\times$: we have $$\begin{aligned}(\mathbb{Z}_p)^\times &\cong \mathbb{Z}_{p-1} \\ (\mathbb{Z}_4)^\times &\cong \mathbb{Z}_2 \\ (\mathbb{Z}_{2^m})^\times &\cong \mathbb{Z}_2 \times \mathbb{Z}_{2^{m-2}} \\ (\mathbb{Z}_{p^m})^\times &\cong \mathbb{Z}_{p-1} \times \mathbb{Z}_{p^m-1} \cong \mathbb{Z}_{(p-1)p^{m-1}} \end{aligned}$$
	- ***Fundamental Theorem of Finite Abelian Groups***: Let $G$ be a finite abelian group. Then $G$ is isomorphic to a direct product of cyclic groups of prime power orders $G \cong \mathbb{Z}_{p_1^{n_1}} \times \mathbb{Z}_{p_2^{n_2}} \times \cdots \times \mathbb{Z}_{p_s^{n_s}}$ for primes $p_1 \cdots p_s$ and integers $n_1 \cdots n_s$. Moreover, this is unique up to reordering of the factors
- semidirect products
	- For groups $A, B$ and a group homomorphism $\varphi: B \to \text{Aut}(A)$, we define the product $$\begin{aligned} (A \times B) \times (A \times B)&\to (A \times B) \\ (a_1, b_1) \cdot (a_2, b_2)&\mapsto (a_1, ( \; \varphi(b_1) a_2 \; ), b_1 b_2) \end{aligned}$$This equips the set $A \times B$ with a group structure, in this case we denote this group $A \rtimes_\varphi B$  and call it the **(external) semidirect product of $A$ and $B$ with respect to $\varphi$**
		- if $\varphi(b) = \text{id}_A \; \forall b \in B$, then $A \rtimes_\varphi B$ reduces to the ordinary direct product $A \times B$
		- if $\varphi(b)(a) \ne a$ for some $b \in B, a \in A$ , then $A \rtimes_\varphi B$ is *not abelian* (direct calculation)
		- let $G$ be a group, with $A, B \le G$ such that $G = AB = \{ ab:  a \in A, b \in B\}, A \cap B = \{ e\}$, and  $A \trianglelefteq G$ - then, there exists a group homomorphism $\varphi: B \to \text{Aut}(A)$  such that $G \cong A \rtimes_\varphi B$, in this case, we say that $G$ is the **internal semidirect product** of $A$ and $B$
- examples of semidirect products
	- if $A$ is abelian, the function $$\begin{aligned} \iota: A &\to A \\ a &\mapsto a^{-1} \end{aligned}$$ is an automorphism of order 2. Therefore, the function $$ \begin{aligned} \varphi: \mathbb{Z_2} = \{ \pm 1\} &\to \text{Aut}(A) \\ 1 &\mapsto \text{id}_A \\ -1 &\mapsto \iota  \end{aligned} $$ is a group homomorphism, and we can form the semidirect product $A \rtimes_\iota \mathbb{Z}_2$ 
	- for example, $$S_3 \cong \underbrace{ \langle (123) \rangle}_{\cong{\mathbb{Z}_3}} \rtimes \underbrace{ \langle (23) \rangle}_{\cong{\mathbb{Z}_2}}$$ as we have: $$ \begin{aligned} (23)(123)(23)^{-1} &= (132) &= (123)^{-1} &= \iota((123)) \\ (23)(132)(23)^{-1} &= (123) &= (132)^{-1} &= \iota((132))\end{aligned}$$
	- $D_{2n} \cong \langle r \rangle \rtimes \langle s\rangle \cong \mathbb{Z}_n \rtimes \mathbb{Z}_2$ as $sr^is^{-1} = sr^{i}s = r^{-i}ss = r^{-i} = \iota(r^i)$
- applications of Sylow's Theorem
	- let $|G| = pm$ with $m < p$ and let $P \in \text{Syl}_p(G)$. Then $P \trianglelefteq G$. Moreover, if $H \le G$ with $|H| = m$, then $G$ is a semidirect product of $P$ and $H$. If $\gcd(p-1, m)=1$, then this semidirect product is a direct product (i.e. $G \cong P \times H$)
		- Corollary: if $|G| = pq$ with $p,q$ prime and $q < p$, then $G \cong \mathbb{Z}_p \rtimes_{\varphi} \mathbb{Z}_q$ for some group homomorphism $\varphi: \mathbb{Z}_q \to \text{Aut}(\mathbb{Z}_p)$. If $q \not| (p-1)$, then $G \cong \mathbb{Z}_p \times \mathbb{Z}_q \cong \mathbb{Z}_{pq}$ 
  
 