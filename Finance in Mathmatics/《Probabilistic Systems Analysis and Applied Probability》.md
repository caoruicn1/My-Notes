# 《Introduction to Probability》
**Edition**: Second
, **Author**: Dimitri P. Bertsekas and John N. Tsitsiklis 

**Video**: Probabilistic Systems Analysis and Applied Probability

* [MIT Opencourse in bilibili](http://www.bilibili.com/video/av6182731/) & [MIT Opencourseware](http://ocw.mit.edu/6-041SCF13)



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
##CHAPTER 1 Sample Space and Probability

### Sets
* Set, elements, subset.
* **Universal set**: denoted by $\Omega$, which contains all objects.
* **Complement of a set**: denoted by $\Omega^c=\emptyset$
* Union: $\bigcup$ & Intersection:  $\bigcap$
* Disjoint & partition

### Probabilistic Models
* **Elements of a Probabilistic Model**: Sample space $\Omega$, probability law, P(A), event
* **Sequential Models**: Pair of rolls, Tree-based sequential description
* **Probability Axioms**
	1. Nonegativity: $P(A)\geq 0$ for every event A
	2. Additivity: If A and B are two disjoint events, $$P(A\bigcup B)=P(A)+P(B)$$ $$P(A_1 \bigcup  A_2 \bigcup \dots)=P(A_1)+P(A_2)+\dots$$
	3. Normalization: $P(\Omega)=1$
* **Discrete Models**: ${H,T},{H},{T},\emptyset$
	* Discrete Probability Law: finite number of possible outcomes, $$P({s_1,s_2,\dots,s_n})=P(S_1)+P(S_2)+\dots+P(s_n)$$
	* Discrete Uniform Probability Law: $$P(A)=\frac{number\ of\ elements\ of\ A}{n}$$
* **Continuous Models**: 
	* Infinite outcomes
	* Probability of proportion
	* The probability of singular point is Zero. But zero probability things do happen though the it's extremely unlikely.

### Conditional Probability
* Conditional probability of A given B. denoted by $P(A|B)$    
$$P(A|B)=\frac{P(A\bigcap B)}{P(B)}=\frac{number\ of\ elements\ of\ A\bigcap B}{number\ of\ elements\ of\ B}$$
 
### Total Probability Theorem and Bayes's Rule
* **Total Probability Theorem**
	* $$ \begin{align} P(B) &=P(A_1 \bigcap B)+ \dots+P(A_n \bigcap B) \\ &=P(A_1)P(B|A_1)+\dots+P(A_n)P(B|A_n) \end{align}$$
* **Bayes's Rule**
	* $$\begin{align} P(A_i|B) &=\frac{P(A_i)P(B|A_i)}{P(B)} \\ &=\frac{P(A_i)P(B|A_i)}{P(A_1)P(B|A_1)+\dots P(A_n)P(B|A_n)} \end{align}$$


### Independence
### Counting
### Summary and Discussion Problems






## CHAPTER 2 Discrete Random Variables
## CHAPTER 3 General Random Variables
## CHAPTER 4 Further Topics on Random Variables
## CHAPTER 5 Limit Theorems
## CHAPTER 6 The Bernoulli and Poisson Processes
## CHAPTER 7 Markov Chains
## CHAPTER 8 Bayesian Statistical Inference
## CHAPTER 9 Classical Statistical Inference  