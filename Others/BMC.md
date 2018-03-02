# Bloomberg Market Concepts Notes
## 1. Economic Indicators

- **Command Line**
	- world GDP(ESNP)
	- ECST S
	- ECOW
	- US REAL GDP GROWTH(GP)
	- ECOS
	- PMI INDICATOR
	- WORLD ECONOMIC CALENDER(WECO)
	- ECONOMIC FORECASTS（ECFC）
	- ECONOMICS SURPRISE MONITOR（ECSU）
	
- **Event**
	- US Recession

- **Essential Economic Indicators**
	- Economic Growth
		- GDP = C + I + G + (X-M)
			- C = Personal consumption
			- I = Private investment
			- G = Government consumption
			- X = Exports
			- M = Imports
			- (X-M) = net exports
		- Normal GDP Growth - Inflation = Real GDP Growth(%)
		- Recession：连续两个季度的Real GDP Growth下滑
	- Inflation
		- **GDP REPORT**
			- Publisher: Bureau of economic Analysis
			- Data Input: Whole Economy
			- Frequency: Quarterly
			- Inflation source: GDP price deflator
		- **CONSUMER PRICE INDEX(CPI)**
			- Publisher: Bureau of labor statistics
			- Data Input: Basket of goods and services
				- Basket随着时代的发展也在不断变化
			- Frequency: Monthly
			- Inflation source: Labor departments in flation report
	- Unemployment
		- **Non Farm Payrolls**
	- Business Confidence
		- **ISM**: Institute for supply management
			- PMI
				- 50上下
				- Leading Indicator of GDP Growth
	- Housing
		- 建房子前对 30y mortagate confidence

- **Mornitoring GDP**
	1. Check "WORLD ECONOMIC CALENDER"
		- PMI
			- published on the first bussiness day 
			- denote confidence
			- Survey VS Acutal
		- Non Farm Payrolls
			- published on the first Friday of the following month
		- Housing Starts
			- published in the middle of month
		- CPI
			- published in the middle of month

- **Accessing economic forecasting**
	- ECOS: 显示N个经济学家对indicator的预测

### Notes

- **GDP** is inaccurately because the scope of GDP measurements can change.
- **Import > Export**: GDP went **down**.
- GDP arrives too late to be useful to investors
- Real GDP growth is the main measure of an economy.

## 2. Currencies

- **Command Line**
	- TRADE FLOW(ECTR)
	- FX24
	- CURRENCY CONVERSION(FXCA)
	- PEGGED CURRENCIES(PEG)
	- CURRENCY RESERVES(WIRA)
	- CURRENCY CODES(FXTF)
	- FX(FXC)
	- TRADEWEIGHTED(USTW$ Index)
	- BIG MAC(WBG)
	- FXC
	- INFLATION MONITOR(IFMO)
	- INTEREST RATE(FDTR)
	- TPOIX(TPX Index)
	- FXFM
	- FX FORECASTS(FXFC)

	
- **Currency Market mechanics**
	- Who trade
		1. Financial Investors
		2. Corporations
		3. Travelers
	- Pegged Currencies
		- Manipulate by Currency Reserve
	- Floating Currencies
	- Triangular arbitrage

- **Currency valuation**
	- **Three main Currency Drivers**
		1. Surprise Changes in Interest Rates
		2. Surprise Changes in Inflation
		3. Surprise Changes in Trade

- **Central banks and currencies**
	- The Inflation vicious cycle
		- Workers expect prices to incease -> Workers demand pay increases -> Company wages go up -> Companies raise their prices -> Workers expect prices to increase
	- The deflation vicious cycle
		- Prices decline -> Consumers defer purchases to await lower prices -> Company revenues decline -> Compines let go of workers to cut costs -> Prices decline
	- The Standard inflation target is 2% for industrialized nations
	- Inflation can lead to a vicious cycle of pay increases leading to price increases
	- Deflation can lead to a vicious cycle of purchase deferrals and layoffs
	
- **Currency risk**
	- **Tools to assess Currency Risk**
		1. Historic Volatility of Currency Pair Values
		2. Analyst Forecasts of Currency Pairs
	- Foreward aggrements lock in currency rates in the future, facilitating hedging and speculation

## 3. Fixed Income

- **Command Line**
	- FIXED INCOME SEARCH(SRCH)
	- BUDGET(BUDG)
	- TREASURY SECURITIES(TSECTOTL Index)
	- SOVEREIGN DEBT OWNERSHIP(DEBT)
	- INTERNATIONAL RESERVE ASSETS(WIRAWRLD Index)
	- RWANDA(RWANDA Govt)
		- DEBT DISTRIBUTION(DDIS)
		- YIELD AND SPREAD(YAS)
	- WORLD BOND
	- DDIS
	- WCDM
	- SOVEREIGN RATINGS(CSDR)
	- SOVEREIGN CDS(SOVR)
	- INFLATION MONITOR
	- INFLATION BREAKEVEN RATES(ILBE)
	- GP
	- FOMC
	- FOMCSIDEBYSIDE(STNI)
	- INTEREST RATE PROBABILITY(WIRP)
	- GLOBAL ECONOMY(GEW)
	- ECONOMIC FORECASTS(ECFC)
	- WB
	- GC
	- BYFC
	- FEDERAL FUNDS TARGET RATE(FDTR Index)
	- WIRP / ILBE
	- GC3D

- **The roots of the bond market**
	- Fixed Income = Fixed Amount of Money Returned
		- Provided you get your money back at all
	- APR = Yield
	
	
- **Bond valuation drivers**
  - CREDIT RISK
	  - CREDIT RISK FACTORS
		  - DEBT/GDP
		  - DEFICIT/GDP
			  - The higher ratio, the higher rate at which the government is racking up a new debt. Yield goes up.
		  - REPAYMENT SCHEDULE
	  - CREDIT RISK INDICATORS
		  - CREDIT RATINGS
		  - CREDIT DEFAULT SWAPS(CDS)
			  - The higher the CDS spread, the higher the risk
  - MACROECONOMICS
	  - SHORT-TERM INTEREST RATES
		  - If no credit risk, it shoule be the same to other bond.
	  - INFLATION
		  - Inflation goes up, Yield goes up
		  - Inflation, good for Borrowers, bad for Lenders
		  - Deflation, good for Lenders, bad for Borrowers
		  - As repayments to bondholders are fixed, inflation will corrode the purchasing power of fixed bond repayments, sending yield up.

  - As U.S. government bond yields serve as benchmarks for all instruments, yields on other bonds tend to move with them.
  

- **Central bankers and interest rates**
	- **Central Bank Mandates**
		- The Happy Medium
		- Inflation
		- Deflation
	- **Central Bank Decision-making**
		- Inflation measures
			- Treasury Inflation Protected Securities(TIPS)
				- Instead of having "Fixed-income" payments to the lender, TIPS compensate the lender in the event of inflation using CPI as a guide.
				- The higher the expected inflation, the greater the investor demand for TIPS relative to normal bonds. Therefore, the greater the difference in yield between the two bonds.
		- The output gap(GDP)
			- $$Output\ gap\ \% =\ \frac{actual\ output\ \$B -\ potential\ output\ \$B }{potential\ output\ \$B}  $$
			
	- **Central Bank Toolkit**
		- Short-term Interest Rates
		- Statements
	- **Short-term Interest Rate Estimates**

- **The yield curve and why it matters**
	- Term premium: The difference bewtween the yield on the longer-maturity bonds.
	- **Yield Curve Transmission Mechanisms**
		- Corporate Impact
			- Corporate spread
		- Consumer Impact
			- Affect Housing Market
			- Affect Consumer affordability                                                            
		- Global Impact
			- Yields of developed economies are correlated.

- **Movements in the yield curve**
	- A Steep yield curve signals improving times
	- A Flat yield curve signals worsening times
	- A Inverted yield curve ofteb precedes a recession
	- The Yield Curve as an Economic Indicator
		- When investors predict rate cuts in anticipation of a recession, they tend to buy long-maturity bonds at the right-hand end of the yield curve, sending their prices up and their yields down, causing the yield curve to invert.


## Equity

- **Command Line**
	- EQUITY SCREENING(EQS)
	- IPO
	- INDICES(WEI)
	- TRA

- **Index performance calculation**
	- $$ \frac{Market\ cap\ of\ one\ stock\ (\$B)}{Total\ market\ caps\ for\ all\ stocks\ in\ index\ (\$B)} = Index\ weight\ \%$$

	- Index level | X | Index contribution of Apple | = |Points contribution of Apple
	  ------------|-----|-----------------------------|---|--------------------------
	  2,040.24| X   | 3.98%  | = | 81.21
	  Points conntribution of Apple |X| (1 + % stock price move) | = | New points contribution of Apple
	  81.21 | X | (1 + 1.81%) | = | 82.67
	  New Points contribution of Apple | - | Old Point contribution of Apple | = | Index move contribution
	  82.67 | - | 81.21 | = | 1.46
	  
- **Factor to consider when comparing returns**
	- The role of dividends in equity returns
	- The nominal nature of stock and bond returns
	  
- **Appeal of equities**
- **Reason for stock-market volability**
- **Importance of company ecosystems to valuation**
- **Earnings forecast generation process**
- **Absolute valuation process and limitations**
- **Relative valuation process and earnings**
