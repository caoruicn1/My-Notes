# The Foundations of Mathematics
Second Edition (Ian Stewart and David Tall)
## Numeber System：
* F、Z、N、Q、R。
* 1+（-1）和1-（+1）的意义是不同的，虽然结果相同。
* 有理数和无理数是相互混杂的，有理数之间一定有无理数，无理数之间一定有有理数。
* 数字与数字之间有精确度的问题，这在于小数点后面扩展多少位，而两个长得差不多的数字，它们之间的大小相差绝对不超过正负$\frac{1}{10^n}$.
* 引入R是必要的，不然在一些地方会具有局限性。

## Sequence：
* 三角不等式，极限，convergent，divergent
* **Archimedes's Condition**：Given a positive real number $\epsilon$, there exists a positive integer n such that $\frac{1}{10^n} < \epsilon$
* 利用$\frac{1}{10^n}$左逼近和右逼近，证明bounded，而且有最bounded值。
* 无限逼近，其实0.99999...=1

## Sets：
* In set theory, *differnet letters* may represent *the same element*.
* Subject, Predicate
* Member用$\in,\notin$, Subsets用$\subseteq,\subseteq$
* 不存在Universe：$\Omega$,因为会产生Paradox，但是用$U$表示Universe of current purposes
* $A$\ $B=\{x \in A | x \notin B \}$, $B^c=U$\ $B$
* The *power set* of $X$ includes all subsets of $X$: $P(X)$
* Union of S: $\bigcup S$, Intersection of S: $\bigcap S$

## Relations
* **The Ordered Pair**: $(x,y)=(u,v)$ if and only if $x=u$ and $y=v$
* **Kuratowski definition**: $(x,y) = \{\{x \}, \{x,y \} \}$ *//???*
* Crystalline concept: 人类倾向于大脑中的直觉性知识，而数学则深挖每一个具体的细节并试图推导和定义。
* **The Cartesian product**: $A \times B = \{(x,y)| x \in A, y \in B \}$
	* For all sets A,B,C,D: $(A \times B) \bigcap (C \times D)=(A \bigcap C) \times (B \bigcap D)$

* **Relations**:  
	* Let A and B be sets. A *relation between* A and B is a subset $R$ of $A\times B$
		* $R= \{(a,b) \in R| a \in A, b \in B \}$

	* **Restriction**: $R'$ is the restriction of $R$ to $A'$ and $B'$

* **Equivalence relation**: A relation ~ on a set $X$ is an *equivalence relation* if it has the following properties for $x,y,z \in X$:
	* $(E_1)$ $x$~$x$ for all $x \in X$ (~ is reflexive)
	* $(E_2)$ If $x$~$y\ then\ y$~$x$ (~ is symetric)
	* $(E_3)$	If $x$~$y$ and $y$~$x$ then $x$~$z$ (~is transitive)
	* PS:重点有$x,y,z$

* **Order Relations**
	* Weak order: $a\ R\ b$
		* (WO$_1$) $a\ R\ b$ and $b\ R\ c$ imply $a\ R\ c$
		* (WO$_2$) either $a\ R\ b$ or $b\ R\ a$ (or both)
		* (WO$_3$) $a\ R\ b$ and $b\ R\ a$ imply $a=b$
		* exp. $\leq, \geq$
		* the *reserve* pf R: $a\ R'\ b$ means $b\ R\ a$
		* *Partial order*: only satisfy (WO$_1$) and (WO$_3$)

	* Strict order: $a\ S\ b$
		* (SO$_1$) $a\ S\ b$ and $b\ S\ c$ imply $a\ S\ c$
		* (SO$_2$) Given $a,b \in A$, then precisely one of the following hold (and not the other two): $a\ S\ b$, $b\ S\ a$, $a=b$
		* exp. $<,>$
	* $a \leq b$ means precisely $a<b$ or $a=b$
	* $a\ R\ b$ to mean $a\ S\ b$ or $a=b$

## Functions

* We call A the *domain* of $f$ and B the *codomain*. We write $$f: A \rightarrow B$$ 

* **Functions**: Let A and B be sets. A *function* $f: A \rightarrow B$ is subset $f$ of $A \times B$ such that
	* (F$_1$) Ff $x \in A$ there exits $y \in B$ such that $(x,y) \in f$
	* (F$_2$) Such an element $y$ is unique: in other words, if $x\in A$ and $y,z\in B$ are such that $(x,y)\in f$ and $(x,z)\in f$,it follows that $y=z$.
	* A function is also called a *map* or *mapping*.		
* **Image**: if $f: A \rightarrow B$ is a function, then the *image* of $f$ is the subset $$f(A)= \{ f(x)|x \in A \}$$

--

* **Three functions**
	* **Surjection**: A function $f: A \rightarrow B$ is a *surjection* (to B) is *onto* B if each element of B is of the form $f(x)$ for some $x\in A$. 即每一个B对应多个A
	* **Injection**: A function $f: A \rightarrow B$ is an *injection*, *one-one*, or *one-to-one*, if for all $x,y\in A$, $f(x)=f(y)$ implies $x=y$.即每一个A对应唯一一个B
	* **Bijection**: A function $f: A \rightarrow B$ is a *bijection* if it is both an injection and a surjection(to B).即A只对应B，B只对应A。一一对应。

* **Identity function** $i_A: A \rightarrow A$ is defiend by $i_A (a)=a$ for all $a\in A$.
* **Composition**: If $f: A \rightarrow B$ and $g: C \rightarrow D$ are functions and $a(A) \subseteq C$, the *composition* $$g \circ f: A \rightarrow D$$ for which $$g \circ f(x)=g(f(X))$$

--

* **Inverse Functions**
	* *left inverse* for $f$ if $g(f(x))=x$ for all $x\in A$,即 $g\circ f=i_A$,
		* if and only if it is injective
	* *right inverse* for $f$ if $f(g(y))=y$ for all $y\in B$,即$f\circ g=i_B$,
		* if and only if it is surjective
	* *inverse* for $f$ if it is both a left and a right inverse for $f$,即$g\circ f=i_A$ and $f \circ g=i_B$
		* if and only if it is bijective
		* This inverse function is unique, and every left or right inverse is equal to it.
		* $f^{-1} :B\rightarrow A$.

--

* **Restriction**: If $f: A \rightarrow B$ is a function and $X\subseteq A$, the *restriction* of $f$ to $X$ is the function $$f|_x: X\rightarrow B$$ for which $$f|_x(x)=f(x)\ (for\ x\in X)$$.

* **Inclusion function**: Restricting the *identity function* $i_A:A\rightarrow A$ to a subset $X \subseteq A$ gives the *inclusion* function $$i_A|_X:X\rightarrow A$$ for which $$i_A|_X(x)=x(x\in X)$$

--
		
* **Sequences and n-tuples**: Let $X_n$ be the set $\{ 1,2,3,...,n \}= \{x\in N | 1 \leq x \leq n \}$. if $S$ is a set then an *n-tuple* of elements of $S$ is defined to be a function $$f: X_n \rightarrow S$$.

* **Binary Operations**: A *binary operation* on a set $A$ is a function $f:A\times A \rightarrow A$.
	* Usually, it appear in the form $x*y$ for some symbol $*$
	* **Commutative**: If $x*y=y*x$ for all $x,y\in A$, then $*$ is *commutative*.
	* **Associative**: If $(x*y)*z=x*(y*z)$ for all $x,y,z\in A$, then $*$ is *associative*.

* **Index set**: If A is *any* set, every element of S is a set, and $f:A \rightarrow S$ is a bijection, then we say that S is an *indexed family of sets*, and write $$S=\{ S_{\alpha} | \alpha \in A \}$$
	* $\bigcup S = \{x | x\in S_\alpha$ for some $\alpha \in A \}$ denoted by $$\bigcup_{\alpha \in A} S_\alpha$$
	* $\bigcap S = \{x | x\in S_\alpha$ for all $\alpha \in A \}$ denoted by $$\bigcap_{\alpha \in A} S_\alpha$$






## 哈哈哈
* Induction
	* To prove statement of the form $\forall n A(n)$ where $n$ ranges over the natrual number.
	* **Summary**
		1. You want to prove $A(n)$ is valid for all natural numbers n.
		2. First prove $A(1)$. Usually a matter of simple observation.
		3. Give an algebraic argument to establish the conditional $(\forall n)[A(n) \Rightarrow A(n+1)]$
			* Reduce $A(n+1)$ to $A(n)$
		4. Conclusion: By the *principle of mathematical induction*, the proves $\forall n A(n)$
	* PS: Assuming A(n) is ture first

 
* Prime number Definition: A primer number is a positive integer $n$, greater than 1, whose only exact divisors are 1 and $n$.
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		