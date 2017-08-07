# Part I: A Practical Guide to Trading System Development and Evaluation
## Chapter 1: What is a trading system?

### Hypothetic-ductive method has five stages:

1. **Observation**. The system developer, through the continuous observation of the daily and intraday activity of the financial markets, devises a relationship among variables, i.e. among the daily volume activity and the closing price, or among the value of an indicator and the next day opening.
2. **Hypothesis**. This comes from the innovative mind of the system developer – an intellectual spark, the origins of which nobody knows. The system developer understands that the relationship he hypothesises is not due by chance to the particular nature of the sample he analysed, but it is common to the majority of the samples he can deduct from the whole population of data.
3. **Prediction**. If the relationship is true then a conditional proposition or a prediction can be constructed and ‘the prediction tells us what should be observed in a new set of observations if the hypothesis is indeed true.
4. **Verification**. The system developer verifies if the prediction holds true in a new set of observations.
5. **Conclusion**. The system developer, through the use of statistical inference tools such as confidence intervals and hypothesis tests, will decide if the hypothesis is true or false weighing whether new observations will confirm the predictions.

## Chapter 2: Design, test, optimisation and evaluation of a trading system
### 2.1 Design

#### Getting started

1. **Traders** [www.traders-mag.co.uk](www.traders-mag.co.uk)2. **Active Trader** [www.activetradermag.com](www.activetradermag.com)3. **Futures** [www.futuresmag.com](www.activetradermag.com)
4. **The Technical Analyst** [www.technicalanalyst.co.uk](www.technicalanalyst.co.uk)5. **Technical Analysis of Stocks & Commodities** [www.traders.com](www.traders.com)

### 2.2 Test
#### Importance of Market data


- **Sources**
	- The most commonly used daily data source by traders are CSI data ([www.csidata.com](www.csidata.com)) and Pinnacle data ([www.pinnacledata.com](www.pinnacledata.com)).

1. Same expiration contracts
2. Continuous contracts
3. Perpetual contracts#### The length of your back-testing period

- According to some mechanical traders the multi-market rule should be limited since systems have their **own personality** that suits only a certain batch of markets but not all. **Rare** are the systems that **can withstand the multi-market test** in the sense that they work equally well on many different markets (bonds, equity, commodities, currencies, stocks, etc). 

#### Rule complexity and degrees of freedom

- The first aim of a multi-market test is to **check if a system performs in the way it is supposed to** (that is signals, if checked manually, are in the same position the programmer wants) and if it is **profitable** on the average of the markets on which it was applied. We should not expect a system to be profitable on every market we test it with but **the more markets the system tests positively with the better**.

- **Best illustration of degrees of greedom by Dr. Robert Schulle (University of Oklahoma)**
	- In a scatter plot when there is only one data point, you cannot make any estimation of the regression line. The line can go in any direction ... Here you have no degrees of freedom (n-1 = 0 where n = 1) for estimation (this may remind you of the joke about the married man). In order to plot a regression line you must have at least two data points (a wife and a mistress). In this case you have one degree of freedom for estimation (n-1 = 1 where n = 2). In other words, the degree of freedom tells you the number of useful data for estimation. However, when you have two data points only, you can always join them to be a straight regression line and get a perfect correlation (determination index = 1.00). Thus the lower the degree of freedom is, the poorer the estimation is.

- **Conclusion**:
	-  the **wider the sample size** and the **lower the number of variables**, the better the estimation

- **Calculation**:
	- degrees of freedom = whole data sample – rules and conditions – data consumed by rules and conditions
	- Generally, less than 90% remaining degrees of freedom is considered too few
	- The same concept of the at least 90% degrees of freedom left could be applied in reverse as a rule of thumb with **a multiple of 10** to the relationship between data used by the system’s calculations and the testing window length. If you apply a 30-day moving average of the closing price you need to test it over at least 300 days (30 x 10).
	- **Example**: 
		- we consider a data sample of three years of highs, lows, opens and closing prices for a total 260 day per year x 3 x 4 = 3120 data points. We use **a 20-day average of highs** and **a 60-day average of lows**, The first average uses 21 degrees of freedom: 20 highs plus 1 more as a rule, and the second average uses 61 degrees of freedom: 60 lows plus 1 as a rule. The total is **82** degrees of freedom used in the example. The result in percentage terms is 82/3120 = 2.6% so that 97.4% degrees of freedom are left.		- Data points used twice in calculations are counted once so that if you are using a 5-day moving average of the closes and a 10-day moving average of the closes you will have for the latter condition 10 data + 1 rule while for the first condition you will have just 1 rule. The total is 12 data consumed. It is obvious that since the 5-day moving average is included into the longer one only the latter will be relevant for the degrees of freedom calculations.
	- **Standard Error** = square root of n + 1, Where n = number of the trades### 2.3 The forecasting power of a trading system

- **Optimisation**
	- Optimisation is something useful in system trading and we need to distinguish between the normal optimisation process and its aberration, namely curve fitting or over- optimisation.
	- 周期必须根据影响因素判断，比如货币政策影响周期为6，12，18个月。

- **Walk forward analysis**
	- Rolling walk forward: out-of-sample (OOS) = 20%:
		- Run #1 |--------- In-sample 80% -------------- | OOS 20% |		- Run #2 			|---------- In-sample 80% ------------ | OOS 20% |		- Run #3 					|---------- In-sample 80% --------------------- | OOS 20% |
	- Anchored walk forward: out-of-sample (OOS) = 20%:
		- Run #1 |------------In-sample 80% --------------- | OOS 20% |		- Run #2 |-------------------- In-sample 80% --------------- | OOS 20% |		- Run #3 |----------------------------- In-sample 80% --------------- | OOS 20% |
	- walk forward efficiency ratio
		- calculate the ratio between the annualised net profit relating to the walk forward tests and the annualised net profit reaped during the optimisation periods
		- If the ratio is above the 100% threshold then the system is efficient and the probability that it will keep its forecasting power during real trading is high.

- **Robustness**
	- This joke suggests that, at very least, the average of the results should be profitable if we want to trust the most performing inputs.
	- we need to find an area where even after changing the input values net profit stays stable.
	- When there is not a **linear relationship** with inputs and net profits, or drawdown, or whichever constraint you are putting as a primary rule of the optimisation, the whole set of results must be regarded as suspicious.

### 2.4 Evaluation of a trading system

- **indicator RINA index**
- **What to look for in an indicator**
	1. A versatile return indicator should be normalised so that it can be easily comparable among multiple asset classes or multiple trading systems	2. A prudent indicator always compares return to risk

	- we can conclude that a consistent trading system has an **even distribution** not only of **profits** and **losses** but also of the series of **consecutive winning and losing trades**. If you cut the statistics of a consistent trading system year by year you will find all the indicators will be almost the same. If substantial differences arise from year to year or from month to month the trading system is not consistent. An intraday system could also be gauged by weekly performances.

- **Average trade**
	- Average trade, that is the net profit divided by the number of trades
	- What we can recommend is to plot the historical average percentage value of the trades in order to have a clear picture of the profitability trend of the system over the years.

- **Percentage of profitable trades**
	- The percent profitable trades number expresses the number of winning trades out of the number of the total trades.
	-  it can be used to gauge how the system is balanced in relation to the average winning trade/average losing trade ratio
	-  **expectancy**: The percentage of profitable trades multiplied by the average winning trade should be higher than the percentage of losing trades multiplied by the average losing trade.

- **Profit factor**
	- Profit factor is gross profit divided by gross loss and basically reveals the size of gross profit in relation to gross loss
	- The higher the better. Usually a healthy trading system has a profit factor of 2, an average winning trade/average losing trade ratio of 2 and a percentage of profitable trades number equal to 50%. But there are also good systems with a profit factor of between 1.5 and 3

- **Drawdown**
	- A broad definition of drawdown could be the largest loss or the largest losing streak of a trading system, whichever is the biggest
	- **three different types of drawdown**:
		1. An end trade drawdown tells us how much of the open profit we had to give back before we were allowed to exit a specific trade		2. A close trade drawdown is the difference between the entry and the exit price without taking into consideration what is going on within the trade		3. A start trade drawdown measures how much the trade went against us after the entry and before it started to go our way.
	- calculate the average drawdown and its standard deviation
		- If the largest drawdown lies between one and two standard deviations from the average than we should expect a future drawdown quite close to what we had in the past
		- If the average drawdown is beyond two standard deviations from the mean than we need to rethink the logic of the system

- **Time averages**
	- Average time in trades
	- If you make up a portfolio with a system that trades seldom and stays in the market for long periods of time, and another that trades often but with short individual trades, you will never level off the cumulative equity line
	- A trading system should be balanced between the profit and risk it produces on the long side and on the short side

- **RINA Index**
	- Represents the reward-risk ratio per one unit of time and it compares the **“select net profit”** (net profit minus the positive and negative outlier trades, that is minus the abnormal trades that overcome the **three standard deviation** limit away from the average) divided by the average drawdown and again divided by the percentage of time in the market indicator. This indicator should always be over 30 and the higher the better.
	- Usually the coefficient of variation (standard deviation divided by average) should never be higher than 250%

- **Deserves to be considered with attention or not**
	- needs to be growing smoothly and without many deep drawdowns
	- appreciate many “flat times”, a good system should know when there is some edge to be exploited over the markets and conversely when it is more appropriate to sit on the sidelines
	- after the equity line, we immediately check average trade, profit factor, percent profitable, average win/average loss and how the monthly returns were distributed throughout the years

	
	
	
	
# Part II: Trading System Development and Evaluation of a Real Case

## Chapter 3: How to develop a trading system step-by-step –using the example of the British pound/US dollar pair


### 3.2 the importance of commissions and slippage.

- **Main system figures**

~                                        | All Trades | Long Trades | Short Trades
-----------------------------------------|------------|-------------|-------------
Total Net Profit                         | $66,318    | $56,918     | $9,400
Gross Profit                             | $590,530   | $310,301    | $280,230
Gross Loss                               | ($524,213) | ($253,383)  | ($270,830)
Profit Factor                            | 1.13       | 1.22        | 1.03
Total Number of Trades                   | 1913       | 957         | 956
Percent Profitable                       | 36.49%     | 39.81%      | 33.16%
Winning Trades                           | 698        | 381         | 317
Losing Trades                            | 1215       | 576         | 639
Avg. Trade Net Profit                    | $35        | $59         | $10
Avg. Winning Trade                       | $846       | $814        | $884
Avg. Losing Trade                        | ($431)     | ($440)      | ($424)
Ratio Avg. Win:Avg. Loss                 | 1.96       | 1.85        | 2.09
Largest Winning Trade                    | $5,628     | $5,628      | $4,338
Largest Losing Trade                     | ($2,522)   | ($1,652)    | ($2,522)
Max. Consecutive Winning Trades          | 6          | 6           | 6
Max. Consecutive Losing Trades           | 16         | 10          | 11
Avg. Bars in Total Trades                | 37.77      | 39.18       | 36.36
Avg. Bars in Winning Trades              | 61.84      | 62.96       | 60.5
Avg. Bars in Losing Trades               | 23.94      | 23.45       | 24.38
Max. Drawdown (Intra-day Peak to Valley) | ($15,644)  | ($11,133)   | ($19,746)
Date of Max. Drawdown                    | 27-Nov-03  |             |

### 3.3 Optimisation and stability graphs.

- **What does stability of a system’s input parameter mean?**	- the neighbourhood of your chosen system parameters must be nearly as profitable as your chosen system parameter and the bigger this profitable parameter range is the better
	- **Example**：比如优化某参数，在5-8之间利润稳定，在10-15利润高，但是波动非常大。此时选5-8为上策。
- **3D Plot**

### 3.4 Inserting an intraday time filter
- **Finding the best entry time**
	- 不同时间可能盈利能力不同，要择时入场

### 3.5 Determination of appropriate exits – risk management


- **The concept of Maximum Adverse Excursion (MAE)**
	- MAE is defined as the most intraday price movement against your position. In other words it’s the lowest open equity during the lifespan of a trade. 
	- MAE Graph，散点图，横坐标为 Drawdown in dollar,  纵坐标为 Profit(Loss) in dollar
	- MAE Graph，散点图，横坐标为 Drawdown in %,  纵坐标为 Profit(Loss) in %
		- Loss diagonal
		- Trade concentration
		- Negative Outliers

- **Inserting a risk stop loss**
	- Graph， 横坐标 Stop Distance（%）， 纵坐标 NP/DD (Ratio of net profit/maximum drawdown)
		- Stop loss
		- Trailing stop loss

- **Looking for profit targets: Maximum Favourable Excursion (MFE)**
	- John Sweeney’s concept of MFE is complementary to MAE
	- MFE is defined as the most positive price movement for your position. It therefore corresponds to the highest open equity within the lifespan of a trade. 
	- MFE Graph，散点图，横坐标为 Run-up(%), 纵坐标为 Profit(Loss) in (%)
		- run-up, which means the highest profit a trade has had in its lifetime.
		- Win diagonal
		- biggest profitable trade
		- trade with biggest run-up
		- biggest losing trade
		- profit targets not always work，it is not possible to predict how far the breakout will lead the market. It is better not to set any profit targets but just let the market run as far it goes
		- Furthermore, profit targets become more valuable if they are set to significant points, e.g. at supports and resistances, gaps etc, where the market is more likely to turn.

- **How exits are affected by money management**

### 3.6 Summary: Step-by-step development of a trading system

- **Step-by-step**:
	1. code, define Entries
		- Starting point **Idea** from book, internet, article, seminar etc.
	2. Add slippage and commissions
	3. Stability tests
		- Check for stable area of input parameters
	4. Adding filters: Time, Trend(e.g. ADX), Volatility etx.
	5. MAE/MFA Analysis
		- Finding Exits
	6. Optimize
		- Opt. Stop Loss
		- Opt. Trailing Stop
		- Opt. Profit Target
- **Risk Management**
- **Money Management**








## Chapter 4: Two methods for evaluating the system’s predictive power

## Chapter 5: The factors around your system

## Chapter 6: Periodic re-optimisation and walk forward analysis

## Chapter 7: Position sizing example, using the LUXOR system



# Part III: Systematic Portfolio Trading

## Chapter 8: Dynamic portfolio construction


# Conclusion





