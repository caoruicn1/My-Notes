# 《Introduction to LINEAR ALGEBRA》
**Edition**: Fourth
, **Author**: GILBERT STRANG
, **Video**: [MIT Opencourse in 163](http://open.163.com/special/opencourse/daishu.html) & [MIT Opencourseware](https://ocw.mit.edu/courses/mathematics/18-700-linear-algebra-fall-2013/)



## Content
* [CHAPTER 1 Introduction to Vectors](#1)
* [CHAPTER 2 Solving Linear Equations](#2)
* [CHAPTER 3 Vector Spaces and SubSpaces](#3)
* [CHAPTER 4 Orthogonality]()* [CHAPTER 5 Determinants]()
* [CHAPTER 6 Eigenvalues and Eigenvectors]()* [CHAPTER 7 Linear Transformations]()
* [CHAPTER 8 Applications]()
* [CHAPTER 9 Numerical Linear Algebra]()
* [CHAPTER 10 Complex Vectors and Matrices]()

---

<span id="1"></span>
##CHAPTER 1 Introduction to Vectors 

* **Vector addition:** $v+w$ and 
* **linear combinations**: $Ax_1+Bx_2=b$* **The dot product:** $v·w$ of two vectors
	* **Perpendicular vectors**: Dot product is zero.
	* **The length** = $||v||= \sqrt{v·v} $
		* **A unit vector**: $u = \frac{v}{||v||}$  length = 1,
* **Fomular**
	* $\frac{v·w}{||v||\ ||w||} = cos \theta$
	* Schwar inequality: $|v·w| \leq ||v||\ ||w||$
	* Triangle inequality: $||v+w|| \leq ||v||+||w||$
* **linear equations** $Ax = b$, **solutions** $x = A^{-1}b$. when A is invertible
* **The Inverse Matrix**: $AA^{-1}=I$
	* **Independent** columns: $Ax=0$ has one solution. $A$ is an **invertible** matrix
	* **Dependent** columns: $Ax = 0$ has many solutions. $A$ is a **singular** matrix.
* **Expample**: If there are 9 columns, but not all of them are independent and it's actually 8 columns. Then they will not cover all the 9 dimensions, then not all b have solutions.
* All solutions of a linear equation is a plane

* **Two ways to think** $Ax=b$
	1. Dot product
	2. combination of the columns of the matrix

<span id="2"></span>
##CHAPTER 2 Solving Linear Equations 

### Vectors and Linear Equations

* **Coefficient matrix**: On the left side of the equations
* $A = LU =(lower\ triangle)(upper\ triangle)$
	* Elimination goes from $A$ to a triangular $U$ by a sequence of matrix steps   $E_{ij}$.
	* The inverse matrices $E_{ij}^{-1}$ in **reverse** order bring $U$ back to the original $A$.

###  The Idea of Elimination
* **Pivot**: first nonzero in the row that does the elimination
* **Multiplier**: $l_{ij}=\frac{entry\ to\ eliminate\ in\ row\ i}{pibot\ in\ row\ j}$

* **Singular**：Just one pivot. $Determinent = 0$
* **Nonsingular**: A full set of pivots and One solution.

* **Identity matrix**: $I = \begin{bmatrix}1 & 0 & 0 \\ 0 & 1 & 0\\0&0&1\end{bmatrix} $

### Elimination Using Matrices

* **Matrix Multiplication**
	* Associative law is **true**: $A(BC)=(AB)C$
	* Commutative law is **false**: Often $AB \neq BA$

* **Elimination matrix**: Subtract row j from row i we use $E_{ij}$
* **Permutation matrix**: Exchange rows we use $P_{ij}$
	* To exchange equations 1 and 3 multiply by $P_{13}=\begin{bmatrix}0&0&1 \\ 0&1&0 \\ 1&0&0 \end{bmatrix}$

* **Augmented matrix**: $ [A\ b] = \begin{bmatrix}2&4&-2&2 \\ 4&9&-3&8 \\ -2&-3&7&10 \end{bmatrix}$

* **Rules for Matrix Operation**: If $A$ has $n$ columns, $B$ must have $n$ rows.

* To do row operations, it multiplies on the left
* To do column operation, the matrix multiplies on the right

* **Block multiplication** is allowed when the block shapes match correctly.
* **Block elimination** produces the *Schur complement* $D-CA^{-1}B$

### Inverse Matrices 
* 
	* If invertible, exist $A^{-1}A=I$ and $AA^{-1}=I$
	* The **inverse exists** if and only if elimination produces **n pivots**
	* If $A$ is invertble, the solution of $Ax=b$ is $x=A^{-1}b$
	* If $A$ is invertible, then $Ax=0$ can only have zero solution $x=A^{-1}0=0$
	* 2 by 2 Inverse: $\begin{bmatrix}a&b \\ c&d \end{bmatrix}^{-1} = \frac{1}{ad-bc}\begin{bmatrix}d&-b \\ -c&a \end{bmatrix}^{-1}$ 
	* If $A = \begin{bmatrix}d_1& \\ &\ddots \\ &&d_n\end{bmatrix}^{-1}$, then $A^{-1}= \begin{bmatrix}\frac{1}{d_1}& \\ &\ddots \\ &&\frac{1}{d_n}\end{bmatrix}^{-1}$
	* $(AB)^{-1}=B^{-1}A^{-1}$ because $ABB^{-1} A^{-1} = A(BB^{-1})A^{-1}=I$
	* Reverse order: $(ABC)^{-1}=C^{-1}B^{-1}A^{-1}$
	* $E^{-1}F^{-1}$ is quick and more beautiful than directly $FE$

* **Calculating Inverse：**
	* Gauss—Jordan Elimination：$[A\ I] = [I\ A^{-1}]$, because $E[A\ I] = [I\ A^{-1}]$
	
### Elimination = Factorization: $A = LU$

* 
	* No row exchange, The factors L and U are **triangular matrices**.
	* The lower triangular L contains the numbers $l_{ij}$ that multiply pivot rows, going from $A$ to $U$ . The product $LU$ adds those rows back to recover $A$.
	* L include all inverses of $E_{ij}$ in opposite order.
$$
\begin{align}
E_{32}E_{31}E_{21}A & = U \\ 
 A & = (E_{21}^{-1}E_{31}^{-1}E_{32}^{-1})U \\ A & =LU
\end{align}
$$
* $$A = \begin{bmatrix}2&1&0 \\ 1&2&1 \\ 0&1&2 \end{bmatrix} = \begin{bmatrix}1&0&0 \\ \frac{1}{2}=l_{21}&1&0 \\ 0&\frac{2}{3}=l_{32}&1 \end{bmatrix} \begin{bmatrix}2&1&0 \\ 0&\frac{3}{2}&1 \\ 0&0&\frac{4}{3} \end{bmatrix} = LU$$
	* When a **row/column** of $A$ starts with **zeros**, so does that row of **$L$ / $U$**.
	* $A=LDU$, D is **diagonal** and U has **1's** on the diagonal.

* **One Square System = Two Triangular Systems**
	* One Square System:
		1. Factor (into L and U, by elimination on the left side matrix A)
		2. Solve (forward elimination on $b$ using $L$, then back subsititution for $x$ using $U$)
	* Two Triangular Systems
		* Solve $Lc=b$ (forward), and then solve $Ux=c$ (backward)

* **The Cost of Elimination**
	* **Factor**: Elimination on $A$ requiares about $\frac{1}{3}n^3$ multiplications and $\frac{1}{3}n^3$ subtractions.
	* **Solve**: There are n2 multiplications and subtractions on the right side.
	* **Band matrix**: A band matrix has only $w$ nonzero diagonals below and also above its main diagonal.
		* For a band matrix, change $\frac{1}{3}n^3$ to $nw^2$ and change $n^2$ to $2wn$.
	* If a zero shows up in the pivot position, it will need **row exchange**.

### Transposes and Permutations

* **Transpose**: If $A = \begin{bmatrix}1&2&3 \\ 0&0&4 \end{bmatrix}$, then $A^T=\begin{bmatrix}1&0 \\ 2&0 \\3&4 \end{bmatrix}$。 $(A^T)_{ij}=A_{ij}$

* $(Ax)^Ty=x^T(A^Ty)$
	* $(x_2-x_1)y_1+(x_3-x_2)y_2,$ $A = \begin{bmatrix}-1&1&0 \\ 0&-1&1 \end{bmatrix}$, $x = \begin{bmatrix}x_1 \\ x_2 \\ x_3 \end{bmatrix}$, $y = \begin{bmatrix}y_1 \\y_2 \end{bmatrix}$
	* $x_1(-y_1)+x_2(y_1-y_2)+(x_3-x_2)y_2, $ $A = \begin{bmatrix}-1&0 \\ 1&-1 \\ 0&1 \end{bmatrix}$,  $y = \begin{bmatrix}y_1 &y_2 \end{bmatrix}$, $x = \begin{bmatrix}x_1 \\ x_2 \\ x_3 \end{bmatrix}$
	* **The difference matrix changes to a derivative**: $$Transpose:\ (\frac{dx}{dt},y)=(x,\frac{-dy}{dt})$$

* $R^TR$ and $RR^T$ are always symmetric.
* When A is symetric, $A=LDU=LDL^T$

* **Permutation**: 
	* Has the rows of the identity $I$ in any order. 
	* Make pivot not zero.
	* $PA=LU$, A is invertible

 <span id="3"></span>
## CHAPTER 3 Vector Spaces and SubSpaces
 
### Spaces of Vectors

* **Vector Space Definition**: 
	* The space $R^n$ consists of all column vectors v with n components (n rows).
	* Satisfy $v+w$ and $cv$ and $cv+cw$
	* **Must go through the origin**

* **Subspace** of $R^2$ 
	1. $R^2$
	2. Any line vector through $\begin{bmatrix}0 \\ 0 \end{bmatrix}$
	3. Zero Vector only
* **Subspace** of $R^3$
	1. $R^3$
	2. Plane through origin
	3. Line through orign
	4. Zero Vector only

* **Subspace S and T**: $S \bigcap T$ is subspace, $S \bigcup T$ may not.

* **Column Space**: $C(A)$
	* Consists all the combinations of the columns to form a Subspace

* $Ax=b$ can be solved when b is in $C(A)$
	* $A = \begin{bmatrix} 1&1&2 \\ 2&1&3 \\ 3&1&4 \\ 4&1&5 \end{bmatrix} \begin{bmatrix}x_1 \\ x_2 \\ x_3 \end{bmatrix} = \begin{bmatrix}\\ b \\ \\ \end{bmatrix}$
	* Column 1 and 2 are **Pivot Columns**, because column 3 doesn't comtribute

### The Nullspace of A: Solving Ax = 0
* **Make the matrix simpler**
	1. Produce zeros above the pivots, by **eliminating upward**
	2. Produce ones in the pivots, by **dividing the whole tow by its pivot**.
* **The reduced form** $R=\begin{bmatrix}I&F \end{bmatrix}$

### Solving Ax=0 by Elimination

* **The reduced row echelon form** $R$
* The **nullspace** $N(A)$ contains all solutions to $Ax=0$
* **Two stages**
	1. **Forward elimination** takes $A$ to a triangular $U$(or its reduced form $R$)
	2. **Back substitution** in $Ux =0$ or $Rx =0$ produces $x$ 

$$Rx=0, R = \begin{bmatrix}I&F \\ 0&0 \end{bmatrix}$$

$$RN=0, N = \begin{bmatrix}-F \\ I \end{bmatrix}$$

$$Rx=\begin{bmatrix}I&F \end{bmatrix} \begin{bmatrix}x_{pivot} \\ x_{free} \end{bmatrix} = 0, x_{pivot}=Fx_{free}$$

* **Example**:
$$A = \begin{bmatrix} 1&2&3 \\ 2&4&6 \\ 2&6&8 \\ 2&8&10 \end{bmatrix} \rightarrow \begin{bmatrix} 1&2&3 \\ 0&2&2 \\ 0&0&0 \\ 0&0&0 \end{bmatrix}\rightarrow \begin{bmatrix} 1&0&1 \\ 0&1&1 \\ 0&0&0 \\ 0&0&0 \end{bmatrix} =R $$
$$x=C\begin{bmatrix}-1 \\ -1 \\ 1 \end{bmatrix} =C\begin{bmatrix}-F\\I \end{bmatrix}$$


* The **Rank** of A: number of pivot
* **Number of Free variables** in a $m \times n$: $n-r$

### The Complete Solution to Ax=b
* Augmented matrix
* Solvability Combination on b
	1. $Ax=b$ solvable when b is in $C(A)$
	2. If a combination of rows of $A$ gives zero row, the same combination of entries of $b$ must give $0$.

* **To find completed solutions** to $Ax=b$
	* $x=x_p+x_n,\ A(x_p+x_n)=b$
	* $Ax_p=b,\ x_{particular}$:
		1. Set all **free varivables** to zero
		2. Solve $Ax=b$ for pivot variables
	* $Ax_n=0,\ x_{nullspace}$

* **The rank tell you everything about the number of solutions.**
* **$m$ by $n$** matrix A of **rank $r$**
	1. $r=m=n$
		* $R=\begin{bmatrix}I \end{bmatrix}$
		* 1 solution to $Ax=b$
	2. $r=n<m$, full column rank
		* $R=\begin{bmatrix}I\\0 \end{bmatrix}$
		* 0 or 1 solution
	3. $r=m<n$, full row rank
		* $R=\begin{bmatrix}I&F\end{bmatrix}$
		* $\infty$ solution
	4. $r<m,\ r<n$
		* $R=\begin{bmatrix}I&F \\ 0&0 \end{bmatrix}$
		* 0 or $\infty$ solutions



### Independence, basis and Dimension
* **Independence**
	* **One way:** Vecotrs $x_1,x_2,\dots, X_n$ are independent if no combination gives **zero vectors**(except the Zero combination, all $C_n=0$) 
$$C_1x_1+c_2x_2+\dots +C_nx_n \neq 0$$
	* **Another way:** Repeat when $V_1,V_2,\dots , V_n$ are columns of $A$, 
		* They are independent if nullspace of $A$, $N(A)$ is **Zero vector**. **rank=n**
		* They are dependent if $Ac=0$ for some nonzero $c$. **rank<n**
	* Three vectors in one plane are dependent.

* **Basis**
	1. They are independent
	2. They span the space
* The columns of every **invertible and singular** $n$ by $n$ matrix give a basis for $R^n$

* **Dimension**
	* Every basis for the space has the same number of vector.
	* This number of vectors in a basis is the dimension of the space.

* $rank(A)= number\ of\ pivot\ columns = dim\ C(A)$
* $dim\ N(A) = number\ of\ free\ varibles = n-r$

### Dimensions of the Four Subspaces

![Four fundamental Subspaces](https://raw.githubusercontent.com/Chandlercjy/My-Notes/Chandler/Pictures/线性代数，四个子空间.png)

* The matrix A is m by n

* **Four Fundamental Subspaces**
	1. The $row\ space$ is $C(A^T)$, a subspace of $R^n$, $r$ dimensions
	2. The $column\ space$ is $C(A)$, a subspace of $R^m$, $r$ dimensions
	3. The $nulls\ space$ is $N(A)$, a subspace of $R^n$, $n-r$ dimensions
	4. The $left\ nullspace$ is $N(A^T)$, a subspace of $R^m$. $m-r$ dimensions. This is our new space.
* The row space and column space have the same dimension $r$

* **The Four Subspaces for R**


	* $$E\begin{bmatrix} A&I \end{bmatrix} \rightarrow \begin{bmatrix} R&E \end{bmatrix}$$
$$EA=R$$
	* in CHAPTER 2, $R$ was $I$. Then $E$ was $A^{-1}$.

* **Key ideas**	1. The $r$ pivot rows of $R$ are a basis for the row spaces of $R$ and $A$ (same space).	2. The $r$ pivot columns of $A$  are a basis for its column space.	3. The $n - r$ special solutions are a basis for the nullspaces of $A$ and $R$ (same space). 
	4. The last $m-r$ rows of $I$ are a basis for the left null space of $R$.	5. The last $m-r$ rows of $E$ are a basis for the left null space of $A$.

* **New vector space**
	* All $3\times 3$ matrix
$$Subspaces\ of\ M < upper\ trangular < Symmetric < Diagonal$$
$$\begin{bmatrix}1&0&0 \\ 0&3&0 \\ 0&0&0 \end{bmatrix},\begin{bmatrix}1&0&0 \\ 0&0&0 \\ 0&0&0 \end{bmatrix},\begin{bmatrix}0&0&0 \\ 0&0&0 \\ 0&0&7 \end{bmatrix}$$
	* Rank 1 matrix: $A=uv^T$
	* Subset of rank 1 matrices not a subspace.

* **Expample**:
	* In $R^4$, $v=\begin{bmatrix} v_1\\v_2\\v_3\\v_4 \end{bmatrix}$
	* $S=$ all $ v\ $in $R^4$ 
	* $Av=0$ $\rightarrow$ $v_1+v_2+v_3+v_4=0$ 
	* $S=$ nullspace of $A=\begin{bmatrix} 1&1&1&1 \end{bmatrix}$ 
	* $rank = 1, dimN(A)=n-r=3$
	* Basis for S: $\begin{bmatrix} -1\\1\\0\\0 \end{bmatrix},\begin{bmatrix} -1\\0\\1\\0 \end{bmatrix},\begin{bmatrix} -1\\0\\0\\1 \end{bmatrix}$

### Graph
* $Graph=\{nodes, edges\}$
* Incidence matrix: a matrix that tells you what the graph tells you.
* $Ax=0 \rightarrow$ Ohm's Law
* $A^Ty=0 \rightarrow$ Kirchoff's Current Law(KCL)
* **Euler Formula**: $\#nodes-\#edges+\#loops=1$
* **Balance equation**: $A^TCAx=f$
	* $e=Ax$, Potential differences,Ohm's Law
	* $y=Ce$, The current come from the potential difference
	* $A^Ty=f$, f means current source, KCL

* $N(CD)=N(D)$ if C is invertible.
* $B^2=0$ doesn't mean $B=0$

## CHAPTER 4 Orthogonality



## CHAPTER 5 Determinants
## CHAPTER 6 Eigenvalues and Eigenvectors## CHAPTER 7 Linear Transformations
## CHAPTER 8 Applications
## CHAPTER 9 Numerical Linear Algebra
## CHAPTER 10 Complex Vectors and Matrices