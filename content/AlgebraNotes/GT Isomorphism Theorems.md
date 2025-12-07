---
title: GT Isomorphism Theorems
draft: false
tags: []
description: ""
---

# GT Isomorphism Theorems
 - given groups $H \le G, g \in G$ we can define **left/right cosets** $$\begin{align*} gH &= \{ gh: h \in H \} \\ Hg &= \{hg: h \in H \} \end{align*}$$
 - the collection of all left cosets of $H$ in $G$ is denoted $G/H = \{ gH: g \in G \}$ and collection of all right cosets of $H$ in $G$ is denoted $H \backslash G = \{Hg:  g\in G \}$ 
 - given a subgroup $N \le G$, if $gN = Ng\; \forall g \in G$, then we say that $N$ is a **normal subgroup** of $G$, denoted $N \trianglelefteq G$
	 - for any abelian group, any subgroup is normal
 - let $G,H$ be groups with $\phi: G \to H$ a group homomorphism. the **kernel** of $\phi$ is defined to be $$\ker(\phi) = \{ g \in G : \phi(g) = e_H \}$$ and the **image** of $\phi$ is defined to be $$\text{im}(\phi) = \{ \phi(g) : g \in  G \}$$
	 - a homomorphism is an injection iff its kernel is trivial (i.e. $\ker(\phi) = \{e_G\}$)
 - let $G$ be a group with $N \trianglelefteq G$ - we can define a product operation on $G/N$ via $$ \begin{align*} \cdot : G/N \times G/N &\to G/N \\ (xN) \cdot (yN) &= (xy)N \end{align*}$$ this endows $G/N$ with a group structure - we call this the **quotient group** of $G$ by $N$ 
 - let $N \trianglelefteq G$ - then the function $$\begin{align*} \varphi: G &\to G/N \\ x &\mapsto xN \end{align*}$$ is a group homomorphism (the *canonical quotient homomorphism*) with $\ker\varphi = N$. 
	 - $\implies$ a subgroup $N$ of $G$ is normal iff $N = \ker\varphi$  for some group homomorphism $\varphi: G \to H$ 
 - cosets form a partition of the group - i.e. for groups $H \le G$, we have that $G = \bigcup_{g \in G} gH$ with either $xH \cap yH = \emptyset$ or $xH = yH$ for all $x,y \in G$ 
	 - from this, we can define the **index of a subgroup** $[G : H] = |G / H|$ to be the number of left cosets
	 - from this, we can derive ***Lagrange's Theorem*** - for $G$ finite, $H \le G$, we have that $|G| = [G : H] \cdot |H|$
	 - corollaries of Lagrange's Theorem
		 - order of element divides order of group
		 - any group of prime order is cyclic
		 - any subgroup of index 2 is normal
 - given two subgroups $A,B \le G$, let $AB = \{ ab : a \in A, b \in B\}$
	 - $AB \le G \iff AB=BA$
	 - if $A,B$ finite, then $|A||B| = \frac{|A| \cdot |B|}{|A \cap B|}$
 - isomorphism theorems
	 - *induced homomorphism*: let $\varphi: G \to H$ be a group homomorphism, $N \trianglelefteq G$ such that $N \le \ker\varphi$ and let $\pi: G \to G/N$ be the canonical quotient homomorphism - we then have that the following diagram commutes: ![[Pasted image 20251203155034.png | center | 256]]i.e. we have that there exists a group homomorphism $\Phi: G/N \to H$ such that $\Phi \circ \pi = \varphi$ (i.e. $\Phi(gN) = \varphi(g) \; \forall g \in G$)
	 - ***First Isomorphism Theorem***: Let $\varphi: G \to H$ be a group homomorphism. Then the function $$\begin{align*} \phi: G / \ker(\varphi) &\to \text{im}(\varphi)  \\ g \cdot \ker(\varphi) &\mapsto \varphi(g) \end{align*}$$ is a well-defined group isomorphism. We therefore have that $G/\ker(\varphi) \cong \text{im}(\varphi)$ 
		 - we can use this theorem to show two groups are isomorphic - for example, we can show that if $G = \langle x \rangle$ with $|G| = n$, then $G \cong \mathbb{Z}/n\mathbb{Z}$; we show this by defining $$\begin{align*}\varphi: \mathbb{Z} &\to G \\ m &\mapsto x^m \end{align*}$$ and then showing that $\varphi$ is a surjective homomorphism with $\ker\varphi = n\mathbb{Z}$  
	 - **Second Isomorphism Theorem**: Let $G$ be a group, $A,B \le G$ with $A \le N_G(B)$. Then $AB \le G$, $B \trianglelefteq AB$, $(A \cap B) \trianglelefteq A$ and $$A/(A \cap B) \cong (AB)/B$$
	 - **Third Isomorphism Theorem**: Let $G$ be a group, and let $H, K \trianglelefteq G$ such that $H \le K$. Then $$G/K \cong (G/H)/(K/H)$$
	 - **Lattice Isomorphism Theorem**: Let $N \trianglelefteq G$ and let $\varphi: G \to G/N$ be the canonical quotient homomorphism. Then the functions $$ \begin{align*} \Phi: \{  A: A \le G , N \le A \} &\to \{B : B \le G /N\} \\ A &\mapsto A/N \end{align*} $$ and $$ \begin{align*} \Psi: \{ B: B \le G/N \} &\to \{ A : A \le G, N \le A \} \\ B &\mapsto \varphi^{-1}(B) \end{align*} $$ are inclusion-preserving inverse bijections. Moreover, given $A_1, A_2$ in the domain of $\Psi$, we have $$\begin{align*} A_1 \le A_2 & \iff \Phi(A_1) \le \Phi(A_2) \\ A_1 \le A_2 &\implies [A_2 : A_1] = [\Phi(A_2) : \Phi(A_1)]  \\ \Phi(\langle A_1, A_2 \rangle)&= \langle \Phi(A_1), \Phi(A_2) \rangle \\ \Phi(A_1 \cap A_2 ) &=  \Phi(A_1) \cap\Phi(A_2) \\ A_1 \trianglelefteq G&\iff \Phi(A_1) \trianglelefteq G/N  \end{align*}$$
 - composition series / Holder program
	 - a nontrivial group $G$ is **simple** if it has no nontrivial proper normal subgroups (i.e. the only normal subgroups of $G$ are $\{ e\}$ and $G$)
		 - for $p$ prime, $Z_p$ is simple
		 - the alternating group $A_n$ is simple for $n \ge 5$
	 - for a group $G$, a **normal series** for $G$ is a finite sequence $\{e\} = N_0, N_1,  \cdots, N_{k-1}, N_k = G$ of subgroups of $G$ such that $$ \{e\} = N_0 \trianglelefteq N_1 \trianglelefteq \cdots \trianglelefteq N_k \trianglelefteq N_k = G$$ The corresponding quotient groups $N_{i+1}/N_i$ are called the *quotients*/*factors* of the normal series. A **composition series** is a normal series where all quotients are simple groups
		 - composition series are not necessary unique - for example, for $G = \mathbb{Z}_3 \times \mathbb{Z}_5$, we have $$ \begin{align*}\{ e \} \trianglelefteq \mathbb{Z}_3 \times \{ e \} \trianglelefteq \mathbb{Z}_3 \times \mathbb{Z}_5 \\ \{ e \} \trianglelefteq \{ e \} \times \mathbb{Z}_5 \trianglelefteq \mathbb{Z}_3 \times \mathbb{Z}_5  \end{align*} $$
	 - *Jordan Holder Theorem*: Let $G$ be a non-trivial finite group. Then $G$ has a composition series, and the composition factors of $G$ are unique up to isomorphism and reordering. 
	 - A group $G$ is **solvable** if there exists a normal series for $G$, $$ \{ e\} = G_0 \trianglelefteq G_1 \trianglelefteq G_2 \cdots G_s = G $$ such that each quotient group $G_i / G_{i-1}$ is abelian.
		 - for example, $\mathbb{Z}_3 \times \mathbb{Z_5}$, $S_3$ $\mathbb{Z}_6$ are all solvable
		 - $G$ is solvable iff there exists a composition series for $G$ such that each quotient group is cyclic of prime order
