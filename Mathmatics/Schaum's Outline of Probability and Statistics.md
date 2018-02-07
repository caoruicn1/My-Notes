# 《Introduction to Probability》
**Edition**: Third

**Author**: Murray Spiegel, Jason Schiller and Alu Srinivasan

## Content
* [CHAPTER 1 Sample Space and Probability](#1)
* [CHAPTER 2 Discrete Random Variables](#2)
* [CHAPTER 3 General Random Variables](#3)
* [CHAPTER 4 Further Topics on Random Variables](#4)
* [CHAPTER 5 Limit Theorems](#5)
* [CHAPTER 6 The Bernoulli and Poisson Processes](#6)
* [CHAPTER 7 Markov Chains](#7)
* [CHAPTER 8 Bayesian Statistical Inference](#8)
* [CHAPTER 9 Classical Statistical Inference](#9)


---

<span id="1"></span>
##CHAPTER 1 Basic Probability

### Concepts
* Sample Spaces, Sample point, Discrete sample space, Nondiscrete sample
* Event, mutually exclusive(互斥)
* Set, elements, subset.
* **Universal set**: denoted by $\Omega$, which contains all objects.
* **Complement of a set**: denoted by $\Omega^c=\emptyset$
* Union: $\bigcup$ & Intersection:  $\bigcap$
* Disjoint & partition

### Important Theorem

* **Theorem 1-6**: If A and B are any two events, then $$P(A\bigcup B)=P(A_1)+P(A_2)+P(A_3)$$  More generally, if $A_1,A_2,A_3$ are any three events, then  $$ \begin{align} P(A_1 \bigcup A_2 \bigcup A_3) =&P(A_1)+P(A_2)+P(A_3) \\ &- P(A_1\bigcap A_2)-P(A_2 \bigcap A_3)-P(A_3\bigcap A_1) \\ &+P(A_1\bigcap A_2\bigcap A_3) \end{align}$$

* **Conditional probability**
	* **Conditional probability** of A given B. denoted by $P(A|B)$    
$$P(A|B)=\frac{P(A\bigcap B)}{P(B)}=\frac{number\ of\ elements\ of\ A\bigcap B}{number\ of\ elements\ of\ B}$$ 
We call $P(B|A)$ the *conditional probabbility* of B given A
	* **Theorems on Conditional Probablity**
		* $P(A \bigcap B)=P(A)P(B|A)$
		* If an event A must result in one of the mutually exclusive events $A_1,A_2,...,A_n$, then
$$ \begin{align} P(A) &=P(A_1 \bigcap A)+ \dots+P(A_n \bigcap A) \\ &=P(A_1)P(A|A_1)+\dots+P(A_n)P(A|A_n) \end{align}$$

* **Indenpendent Events**: $P(A \bigcup B)=P(A)P(B)$
* **Bayes's Rule**
$$P(A_k|A) =\frac{P(A_k)P(A|A_k)}{\sum_{j=1}^{n}P(A_j)P(A|A_j)}$$

* **Permutations & Combinations**
	* $$_nP_r=n(n-1)(n-2) \dots (n-r+1)$$
	* $$\begin{pmatrix} n\\r \end{pmatrix} =\ _cC_r= \frac{n!}{r!(n-r)!} = \frac{_nP_r}{r!}$$

* **Binomial Coefficient**
	* $(x+y)^n=x^n+ 
\begin{pmatrix} n\\1 \end{pmatrix}x^{n-1}y+ 
\begin{pmatrix} n\\2 \end{pmatrix}x^{n-2}y^2 + \dots + \begin{pmatrix} n\\3 \end{pmatrix}y^n$

* **Stirling's Approximation to n!**: $n!$ ~ $\sqrt{2\pi n}n^ne^{-n}$
* **Important trick**
	* (有相同元素)In general, the number of different arrangements of n objects of which $n_1$ are alike, $n_2$ are alike, ..., then $$\frac{n!}{n_1!n_2! \dots n_k!}$$,where $n_1+n_2+ \dots n_k=k$
	* （0-1分布，大量重复）In general, if $p=P(A)$ and $q=1-p=P(A')$, then the probability is $$_nC_x p^x q^{n-x}= \begin{pmatrix} n\\x \end{pmatrix} p^x q^{n-x}$$
	* $_nC_1+\ _nC_2 +\ _nC_3 + \dots +\ _nC_n=2^n -1$
	* $_nC_r=\ _{n-1}C_r +\ _{n-1}C_{r-1}$



## CHAPTER 2 Discrete Random Variables
## CHAPTER 3 General Random Variables
## CHAPTER 4 Further Topics on Random Variables
## CHAPTER 5 Limit Theorems
## CHAPTER 6 The Bernoulli and Poisson Processes
## CHAPTER 7 Markov Chains
## CHAPTER 8 Bayesian Statistical Inference
## CHAPTER 9 Classical Statistical Inference  