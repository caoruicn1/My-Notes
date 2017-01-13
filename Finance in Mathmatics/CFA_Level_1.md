# Quantitative Methods
## 6. The Time Value of money
* r = Real risk-free interest rate + Infulation premium + Default risk premium + Liquidity premium + Maturity premium
	* Nominal risk-free interest rate = real risk-free interest rate + inflation premium
* **Concept**
	* interest rate: required rate of return; discount rate; opportunity cost
	* Simple interest, Principal, Compounding
	* stated annual interest rate / quoted interest rate
	* annuity, ordinary annuity, annuity due, perpetuity
		* Annuity due = Present value of an immediate cash flow + ordinary Annuity
		* A lump sum can be seen as equivalent to an annuity
	
* Future Value
	* $FV_N = PV(1+r)^N$ 
	* $FV_N = PV(1+ \frac{r_S}{m})^{mN}$ *// m=periods, N=years*
	* $FV_N = PVe^{r_sN}$ *// infinite*
	* $FV_N = A[\frac{(1+r)^N-1}{r}]$

* Present Value
	* $PV = FV_N(1+r)^{-N}$
	* $PV = FV_N(1+\frac{r_s}{m})^{-mN}$
	* $PV = A[\frac{1-\frac{1}{(1+r)^N}}{r}]$
	* $PV = \frac{A}{r}$ *// infinite*
	* Present Value indexed at Times other than t=0,即要将期末现值当成终值算期初现值

* Growth Rate
	* $g = (FV_N / PV)^\frac{1}{N}-1$
	* 等于各年相乘

* Effective Annunal Rate
	* 就是将一年复利N次的利率换成一年复利一次的利率
	* $EAR = (1 + Periodic\ interest\ rate)^m-1$
	* $EAR = e^{r_s}-1$  *// continuous compounding*


## 7. Discounted Cash Flow Applications
* **Concepts**
	* Capital budgeting, Capital structure, Working capital management
	* IRR and NPV rules rank projects differently: **size & timing**
	* The NPV rules is more realistic.
	* money market, pure discount instruments
		* HPY: 期内真实收益率，含利息
		* EAY: 365年化的HPY
		* $r_{BD}$: 360的年化收益，不含利息
		* $r_{MM}$: 360的年化收益，含利息

* **NPV rules**
	* $NPV = \sum_{t=0}^N \frac{CF_t}{(1+r)^t}$ *// CF_t is the expected net cash flow at time t*

* **The internal rate of return(IRR) rule:**
	* Accept projects or investments for which the IRR is greater than the opportunity cost of capital.
	* $NPV = CF_0 + \frac{CF_1}{(1+IRR)^1} + \frac{CF_2}{(1+IRR)^2} + ... + \frac{CF_N}{(1+IRR)^N} = 0$
	* $Investment = \frac{CF_1}{(1+IRR)^1} + \frac{CF_2}{(1+IRR)^2} + ... + \frac{CF_N}{(1+IRR)^N} > opportunity\ cost$

* **Portfolio return measurement**
	* **Money-Weight Rate of Return:** $PV(outflows)=PV(inflows)$
		* affected when clients add funds
	* **Time-Weighted Rate of Return:** $r_{TW}=[(1+r_1) \times (1+r_2) \times ... \times (1+r_N)]^{\frac{1}{N}}$
	* **Day's holding period return:** $r_t= \frac{MVE_t-MVB_t}{MVB_t}$ *// End, beginning*
	* **Bank discount basis:** $r_{BD} = \frac{D}{F} \frac{360}{t}$ *// D=dollar discount, F=face value, t=number of days, 总收益／总年数*
		* Drawbacks：1.based on the face value; 2.annualized based on a 360-day year; 3.ignores the opportunity to earn interest on interest.
		* The bank discount yield is less than the effective annual yield.
	* **Holding period yeild:** $HPY = \frac{P_1 - P_0 + D_1}{P_0}$ *// P_1=maturity price, P\_0=purchase price, D\_1=cash distribution*
	* **Effective annual yield:** $EAY = (1+HPY)^{\frac{365}{t}}-1$
	* **Money market yeild:** $r_{MM}=\frac{360r_{BD}}{360-(t)(r_{BD})}$

	
## 8. Statistical Concepts and Market Returns

* **Concepts:**
	* central tendency: weighted mean, arithmetic mean > geometric mean > harmonic mean, median, mode,
	* Absolute dispersion: range, mean absolute deviation, variance, standard deviation
	* Relative dispersion: coefficient of variation, 
	* , skewness, kurtosis
	* Descriptive statistics, Statistical inference
	* Moment, Parameter, sample
	* Measurement Scales: Nominal scales, Ordinal scales, Interval scales, Ratio scales
	* interval, 
	* Absolute frequency: the actual number of observations
	* Relative frequency: the absolute frequency of each interval
	* Cumulative relative frequency

* **Frequency distribution:**
	* **Holding Period Return Formula:** $R_t= \frac{P_t-P_{t-1}+D_t}{P_{t-1}}$

* **Measures of central tendency**
	* **Arithmetic mean & Sample Mean:** $\mu=\frac{\sum_{i=1}^N {N}X_i}{N}$
	* **Weighted mean:** $\overline{X}_w= \sum_{i=1}^{n} w_i X_i$
	* **Geometric mean:** $G=\sqrt[n]{X_1 X_2 X_3 ... X_n}$, with $X_i \geq 0$ for $i=1,2,...,n$
	* **Harmonic Mean:** $\overline{X}_H=\frac{n}{\sum_{i=1}^{n}{n}(1/X_i)}$, with $X_i >0$ for $i=1,2,...,n$

* **Other Measures of Location:** 
	* Quantiles: Quartiles, Quintiles, Deciles, Percentiles
	* $L_y=(n+1)\frac{y}{100}$
		* exp. $L_y=12.75$, $P_{75}=X_{12}+(12.75-12)(X_{13}-X_{12})$

* **Measures of Dispersion**
	* $Range=Maximum\ value-Minimum\ value$
	* **Mean Absolute Deviation(MAD):** $MAD=\frac{\sum_{i=1}^{n}|X_i-\overline{X}|}{n}$
	* **Varance:** $\sigma^2=\frac{\sum_{i=1}^{N}(X_i-\mu)^2}{N}$
	* **Standard Deviation:** $\sigma=\sqrt{\frac{\sum_{i=1}^{N}(X_i-\mu)^2}{N}}$
	* **Sample Variance:** $s^2=\frac{\sum_{i=1}^{n}(X_i-\overline{X})^2}{n-1}$ *//n-1 is known as the number of degrees of freedom*
	* **Sample Standard Deviation:** $s=\sqrt{\frac{\sum_{i=1}^{n}(X_i-\mu)^2}{n-1}}$
	* **Semivariance:** $\sum_{for\ all\ X_i \leq \overline{X}}\frac{(X_i-\overline{X})^2}{n-1}$
	* **Semideviation:** the positive square root of semivariation
	* **Target Semivariance:** $\sum_{for\ all\ X_i \leq B}\frac{(X_i-B)^2}{n-1}$
	* **Target Semideviation:**the positive square root of target semivariation
	* **Coefficient of variation:** $CV=\frac{s}{\overline{X}}$ *//measures the amount of risk per unit of mean return, scale-free measure*
	* **Sharpe Ratio:** $S_h=\frac{\overline{R}_p-\overline{R}_F}{s_p}$ *//when positive, ratio + risk -, when negative, ratio + risk +*
		* Relately, an investment strategy may produce frequent small gains but have the potential for infrequent but extremely large losses. This type of strategy would have a high Sharpe ratio.

* **Chebyshev's Inequality**
	* $P(|x-u| \leq k\sigma) \geq 1-\frac{1}{k^2}, k>1$
	* 75%: $\overline{X} \pm 2s$, 89%: $\overline{X} \pm 3s$

* **Symmetry and Skewness in return distributions**
	* **Normal distribution:** 68%~$\sigma$, 95%~$2\sigma$, 99%~$3\sigma$,
	* **Skewed distribution:** 左偏，右偏
	* **Sample skewness:** $S_K=[\frac{n}{(n-1)(n-2)}]\frac{\sum_{i=1}^{n}(X_i-\overline{X})^3}{s^3}$

* **Kurtosis in return distributions**
	* leptokurtic(more peak), platykurtic(less peak), mesokurtic
	* For normal distributions, Kurtosis = 3
	* Excess kurtosis = kurtosis - 3
	* **Same excess kurtosis**: $K_E=[\frac{n(n+1)}{(n-1)(n-2)(n-3)} \frac{\sum_{i=1}^{n}(X_i-\overline{X})^4}{s^4}] - \frac{3(n-1)^2}{(n-2)(n-3)}$
	* Most equity return series have been found to be leptokurtic.

* **Tips**
	* Arithmetic mean > Geometric mean > Harmonic mean
	* One-period horizon~arithmetic mean, more than one~geometric mean
	* **Semilogarithmic** is more apporiate when graphing past performance.
