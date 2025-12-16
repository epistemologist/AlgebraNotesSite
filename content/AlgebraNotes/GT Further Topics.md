---
title: GT Further Topics
draft: false
tags: []
description: ""
---

# GT Further Topics
 - for a group $G$, $a,b \in G$, the **commutator** of $a$ and $b$ is defined to be $$ [a.b]= aba^{-1}b{-1} \in G$$ Given subgroups $A,B \le G$, we have that the **commutator of $A$ and $B$** is the subgroup $$[A,B] = \{ [a,b] : a \in A, b \in B\}$$The **commutator subgroup of $G$** is $[G,G]$. The group $G$ is **perfect** if $G = [G,G]$.
 - For a group $G$ and subgroup $H \le G$,  we have $[G, G] \subseteq H$ iff $H \trianglelefteq G$ and $G/H$ is abelian. In particular, we have that $[G,G]$ is the smallest normal subgroup of $G$ such that $G/[G,G]$ is abelian - we call $G/[G,G]$ the **abelianization** of $G$
 - For a group $G$, the **derived/commutator series** $G^{(0)}, G^{(1)}, G^{(2)}, \cdots$ is defined recursively via $$ \begin{cases} G^{(0)} = G \\ G^{(n)} = [G^{(n-1)}, G^{(n-1)}]\end{cases}$$ We say that $G$ is **solvable** if there exists integer $n$ such that $G^{(n)} = \{ e\}$ (and therefore $G^{(m)}=\{e \}$ for any $m > n$). If $n$ is the smallest such integer, we say that $G$ is **solvable of class $n$**
 - The **lower central / descending central series** $G^{[0]}, G^{[1]}, G^{[2]}, \cdots$ of a group $G$ is defined recursively via $$ \begin{cases} G^{[0]} = G \\ G^{[n]} = [G, G^{[n-1]}]\end{cases}$$ We say that $G$ is **nilpotent** if there exists integer $n$ such that $G^{[n]} = \{e\}$ (and all integers $m > n$). If $n$ is the smallest such integer, we say that $G$ is **nilpotent of class $n$**
 - some facts/examples about solvable / nilpotent groups
	 - $G$ solvable of class 1 iff G nilpotent of class 1 iff G abelian; G nilpotent of class 2 iff $[G,G] \le Z(G)$
	 - $G$ abelian $\implies$ G nilpotent $\implies$ G solvable (reverse implications do not hold)
	 - $Q_8$ is nilpotent of class 2 - $$\begin{aligned} Q_8^{[1]} &= [Q_8, Q_8] = Z(Q_8) = \{ \pm 1\} \\ Q_8^{[2]} &= [Q_8, Z(Q_8)] = \{ e\}  \end{aligned}$$
	 - $S_3$ is solvable: $$\begin{aligned}S_3^{(1)} &= [S_3, S_3] = A_3\\ S_3^{(2)} &= [A_3, A_3] = \{ e\} \end{aligned}$$ however, $S_3$ is not nilpotent: $$ \begin{aligned} S_3^{[1]} &= [S_3, S_3] = A_3 \\ S_3^{[n]} &= [S_3, A_3] = A_3 && (\forall n>1) \end{aligned} $$
	 - other examples: $S_4, A_4$ solvable but not nilpotent; $S_5, A_5$ not solvable
	 - **Burnside Theorem**: If $|G| = p^m q^n$, then $G$ solvable
	 - **Feit-Thompson Theorem**: If $|G|$ is odd, then $G$ is solvable
	 - for any integer $n$, we have $(A \times B)^{(n)} = A^{(n)} \times B^{(n)}, (A \times B)^{[n]} = A^{[n]} \times B^{[n]}$ 
	 - $G$ simple, solvable $\implies$ $G = \mathbb{Z}_p$ for some prime $p$
	 - for a finite $p$-group $G$
		 - any subgroup $H$ of $G$ is also a $p$-group
		 - $G$ has non-trivial center if $G$ non-trivial
		 - $G$ nilpotent
		 - if $H \le G$ and $[G : H] = p$, then $H \trianglelefteq G$
		 - if $H$ is a proper subgroup of $G$, then there exists $K \le G$ such that $H \le K$ with $[K : H] = p$
 