# Trading Systems: A New Approach to System Development and Portfolio Optimisation

**Author:** Uban Jaekle, Emilio Tomasini

<!-- prettier-ignore-start -->
<!-- vim-markdown-toc GitLab -->

* [Part I: A Practical Guide to Trading System Development and Evaluation](#part-i-a-practical-guide-to-trading-system-development-and-evaluation)
    * [Chapter 1: What is a trading system?](#chapter-1-what-is-a-trading-system)
        * [1.1 Hypothetic-ductive method has five stages:](#11-hypothetic-ductive-method-has-five-stages)
    * [Chapter 2: Design, test, optimisation and evaluation of a trading system](#chapter-2-design-test-optimisation-and-evaluation-of-a-trading-system)
        * [2.1 Design](#21-design)
        * [2.2 Test](#22-test)
        * [2.3 The forecasting power of a trading system](#23-the-forecasting-power-of-a-trading-system)
        * [2.4 Evaluation of a trading system](#24-evaluation-of-a-trading-system)
* [Part II: Trading System Development and Evaluation of a Real Case](#part-ii-trading-system-development-and-evaluation-of-a-real-case)
    * [Chapter 3: How to develop a trading system step-by-step](#chapter-3-how-to-develop-a-trading-system-step-by-step)
        * [3.1 The birth of a trading system](#31-the-birth-of-a-trading-system)
        * [3.2 the importance of commissions and slippage.](#32-the-importance-of-commissions-and-slippage)
        * [3.3 Optimisation and stability graphs.](#33-optimisation-and-stability-graphs)
        * [3.4 Inserting an intraday time filter](#34-inserting-an-intraday-time-filter)
        * [3.5 Determination of appropriate exits – risk management](#35-determination-of-appropriate-exits-risk-management)
        * [3.6 Summary: Step-by-step development of a trading system](#36-summary-step-by-step-development-of-a-trading-system)
    * [Chapter 4: Two methods for evaluating the system’s predictive power](#chapter-4-two-methods-for-evaluating-the-systems-predictive-power)
        * [4.1 Timescale analysis](#41-timescale-analysis)
        * [4.2 Monte Carlo analysis](#42-monte-carlo-analysis)
    * [Chapter 5: The factors around your system](#chapter-5-the-factors-around-your-system)
        * [5.1 The market’s long/short bias](#51-the-markets-longshort-bias)
        * [5.2 Out-of-sample deterioration](#52-out-of-sample-deterioration)
        * [5.3 The market data bias](#53-the-market-data-bias)
        * [5.4 Optimisation and over-fitting](#54-optimisation-and-over-fitting)
    * [Chapter 6: Periodic re-optimisation and walk forward analysis](#chapter-6-periodic-re-optimisation-and-walk-forward-analysis)
    * [Chapter 7: Position sizing example, using the LUXOR system](#chapter-7-position-sizing-example-using-the-luxor-system)
* [Part III: Systematic Portfolio Trading](#part-iii-systematic-portfolio-trading)
    * [Chapter 8: Dynamic portfolio construction](#chapter-8-dynamic-portfolio-construction)
* [Conclusion](#conclusion)

<!-- vim-markdown-toc -->
<!-- prettier-ignore-end -->

# Part I: A Practical Guide to Trading System Development and Evaluation

## Chapter 1: What is a trading system?

### 1.1 Hypothetic-ductive method has five stages:

1.  **Observation**. The system developer, through the continuous observation of
    the daily and intraday activity of the financial markets, devises a
    relationship among variables, i.e. among the daily volume activity and the
    closing price, or among the value of an indicator and the next day opening.
2.  **Hypothesis**. This comes from the innovative mind of the system developer
    – an intellectual spark, the origins of which nobody knows. The system
    developer understands that the relationship he hypothesises is not due by
    chance to the particular nature of the sample he analysed, but it is common
    to the majority of the samples he can deduct from the whole population of
    data.
3.  **Prediction**. If the relationship is true then a conditional proposition
    or a prediction can be constructed and ‘the prediction tells us what should
    be observed in a new set of observations if the hypothesis is indeed true.
4.  **Verification**. The system developer verifies if the prediction holds true
    in a new set of observations.
5.  **Conclusion**. The system developer, through the use of statistical
    inference tools such as confidence intervals and hypothesis tests, will
    decide if the hypothesis is true or false weighing whether new observations
    will confirm the predictions.

## Chapter 2: Design, test, optimisation and evaluation of a trading system

### 2.1 Design

1.  [Traders](www.traders-mag.co.uk)
2.  [Active Trader Analyst](www.technicalanalyst.co.uk)
3.  [Futures](www.futuresmag.com)
4.  [The Technical Analyst](www.technicalanalyst.co.uk)
5.  [Technical Analysis of Stocks & Commodities](www.traders.com)

### 2.2 Test

*   Importance of Market data
    1.  Same expiration contracts
    2.  Continuous contracts
    3.  Perpetual contracts

-   自由度 Degrees of freedom

    *   参数越少，数据越多，效果越好。

    *   **Calculation**:

        *   degrees of freedom = whole data sample – rules and conditions – data
            consumed by rules and conditions
        *   Generally, less than 90% remaining degrees of freedom is considered
            too few
        *   The same concept of the at least 90% degrees of freedom left could
            be applied in reverse as a rule of thumb with **a multiple of 10**
            to the relationship between data used by the system’s calculations
            and the testing window length. If you apply a 30-day moving average
            of the closing price you need to test it over at least 300 days (30
            x 10).

    *   **Example**:
        *   we consider a data sample of three years of highs, lows, opens and
            closing prices for a total 260 day per year x 3 x 4 = 3120 data
            points. We use **a 20-day average of highs** and **a 60-day average
            of lows**, The first average uses 21 degrees of freedom: 20 highs
            plus 1 more as a rule, and the second average uses 61 degrees of
            freedom: 60 lows plus 1 as a rule. The total is **82** degrees of
            freedom used in the example. The result in percentage terms is
            82/3120 = 2.6% so that 97.4% degrees of freedom are left.
        *   Data points used twice in calculations are counted once so that if
            you are using a 5-day moving average of the closes and a 10-day
            moving average of the closes you will have for the latter condition
            10 data + 1 rule while for the first condition you will have just 1
            rule. The total is 12 data consumed. It is obvious that since the
            5-day moving average is included into the longer one only the latter
            will be relevant for the degrees of freedom calculations.
    *   **Standard Error** = square root of n + 1, Where n = number of the
        trades

### 2.3 The forecasting power of a trading system

*   **Optimisation**

    *   周期必须根据影响因素判断，比如货币政策影响周期为 6，12，18 个月。

*   **Walk forward analysis**

    *   Rolling walk forward: out-of-sample (OOS) = 20%:
        *   Run #1 |--------- In-sample 80% -------------- | OOS 20% |
        *   Run #2 -----------|---------- In-sample 80% ------------ | OOS 20% |
        *   Run #3 ------------|---------- In-sample 80% --------------------- |
            OOS 20% |
    *   Anchored walk forward: out-of-sample (OOS) = 20%:
        *   Run #1 |------------In-sample 80% --------------- | OOS 20% |
        *   Run #2 |-------------------- In-sample 80% --------------- | OOS 20%
            |
        *   Run #3 |----------------------------- In-sample 80% ---------------
            | OOS 20% |
    *   Walk forward efficiency ratio
        *   将 in-sample 的年化利润和 out-of-sample 的 nianhua 利润作比较, 大于
            100%的话说明还不错。

-   **Robustness**
    *   This joke suggests that, at very least, the average of the results
        should be profitable if we want to trust the most performing inputs.
    *   We need to find an area where even after changing the input values net
        profit stays stable.
    *   When there is not a **linear relationship** with inputs and net profits,
        or drawdown, or whichever constraint you are putting as a primary rule
        of the optimisation, the whole set of results must be regarded as
        suspicious.

*   测试集
    *   对震荡行情，趋势行情等不同行情进行测试。

### 2.4 Evaluation of a trading system

*   **Equity line**

    *   资金曲线应该是 smoothly without many deep drawdowns.
    *   flat times 是可以接受的。即没有进入市场。

*   **衡量交易系统好坏的指标条件**

    1.  标准化。比如化成年利率再进行比较。
    2.  同时考虑到收益和风险。

*   **平均分布 Even Distribution**

    1.  Profits and Losses
    2.  Series of consecutive winning and losing trades

*   **平均每笔交易利润 Average trade profit**

    *   平均每笔交易利润 = 总利润/总交易次数
    *   平均每笔交易利润百分比 = 总利润/总交易次数/初始资金
    *   画图
    *   单笔交易盈亏比率 = 平均每笔盈利/平均每笔亏损

*   **盈利交易数百分比 Percentage of profitable trades**

    *   胜率 = 盈利笔数/总笔数
    *   盈亏期望 = 胜率\*平均每笔盈利 + (1-胜率)\*平均每笔亏损
    *   胜率要相对的看，比如趋势策略胜率低但单次盈利高。应和盈亏比率一起考虑。
    *   一般 50%就不错了，超过 50%的话要注意。因为高胜率意味着盈利比率会变低。
    *   可以用盈亏期望排名来选择交易系统。

*   **Profit factor**

    *   总盈亏比 = 总利润/总亏损
    *   一般为 2 比较好, 有时候也 1.5~3.0

*   **回撤 Drawdown**

    *   四种回撤

        1.  Open trade drawdown. 通常意义上的回撤。创新高前造成的回撤。
        2.  End trade drawdown. 回吐多少盈利的回撤。
        3.  Close trade drawdown. 每笔交易的入场和出场之间的价格差值回撤。
        4.  Start trade drawdown. 每笔交易从入场到退场, 朝我们的有利方向前进前，
            会先往反方向前进多少，这段时间造成的回撤。

    *   可以将各个回撤画出分布图，计算均值和方差，如果最大回撤在 1~2 个方差内，
        则可以接受，超过 3 个方差的话就要值得 suspecious.

*   **持仓时间 Time averages**

    *   Average time in trades
    *   一个好的交易系统应该同时保持盈利与风险之间的平衡，在 long 和 short 之间
        盈利和风险应该都是差不多的。

*   **RINA Index(Reward-risk ratio per unit of time)**

    *   RINA ratio = "select net profit" / 平均回撤 / 入场时间百分比
    *   select net profit 指总净利润减去 outliers.
    *   ourliers 指大于 3 个 std 的 pnl.
    *   RINA 大于 30 比较好，越大越好。
    *   对每笔交易甚至每个 indicator，计算正负三个 std 之间的值，可以对变化范围
        有个了解。
    *   coefficient of varition = 标准差/均值, 一般低于 250%会比较好。

# Part II: Trading System Development and Evaluation of a Real Case

## Chapter 3: How to develop a trading system step-by-step

### 3.1 The birth of a trading system

*   **策略构成**
    1.  Definition of nessary inputs and variables
    2.  Time window filter
    3.  Definition of indicator
    4.  Entry setup
    5.  Exits

### 3.2 the importance of commissions and slippage.

*   **Main system figures**

| ~                                        | All Trades  | Long Trades | Short Trades |
| ---------------------------------------- | ----------- | ----------- | ------------ |
| Total Net Profit                         | $66, 318    | $56, 918    | $9, 400      |
| Gross Profit                             | $590, 530   | $310, 301   | $280, 230    |
| Gross Loss                               | ($524, 213) | ($253, 383) | ($270, 830)  |
| Profit Factor                            | 1.13        | 1.22        | 1.03         |
| Total Number of Trades                   | 1913        | 957         | 956          |
| Percent Profitable                       | 36.49%      | 39.81%      | 33.16%       |
| Winning Trades                           | 698         | 381         | 317          |
| Losing Trades                            | 1215        | 576         | 639          |
| Avg. Trade Net Profit                    | $35         | $59         | $10          |
| Avg. Winning Trade                       | $846        | $814        | $884         |
| Avg. Losing Trade                        | ($431)      | ($440)      | ($424)       |
| Ratio Avg. Win:Avg. Loss                 | 1.96        | 1.85        | 2.09         |
| Largest Winning Trade                    | $5, 628     | $5, 628     | $4, 338      |
| Largest Losing Trade                     | ($2, 522)   | ($1, 652)   | ($2, 522)    |
| Max. Consecutive Winning Trades          | 6           | 6           | 6            |
| Max. Consecutive Losing Trades           | 16          | 10          | 11           |
| Avg. Bars in Total Trades                | 37.77       | 39.18       | 36.36        |
| Avg. Bars in Winning Trades              | 61.84       | 62.96       | 60.5         |
| Avg. Bars in Losing Trades               | 23.94       | 23.45       | 24.38        |
| Max. Drawdown (Intra-day Peak to Valley) | ($15, 644)  | ($11, 133)  | ($19, 746)   |
| Date of Max. Drawdown                    | 27-Nov-03   |             |

### 3.3 Optimisation and stability graphs.

*   **Stability of parameters**
    *   调参时，如果在一定参数范围内，利润稳定就最好了。且范围越大越好。
    *   比如优化某参数，在 5-8 之间利润稳定，在 10-15 利润高，但是波动非常大。此
        时选 5-8 为上策。
*   可以画出参数变化图和利润图
    *   ![Picture](what/Trading_Systems_1.png)
*   画出 3D plot
    *   ![Picture](what/Trading_Systems_2.png)

### 3.4 Inserting an intraday time filter

*   **方法**

    *   添加入场时间范围控制，尝试寻找盈利大的时段。
    *   ![Picture](what/Trading_Systems_3.png)

*   **Finding the best entry time**
    *   不同时间可能盈利能力不同，要择时入场
    *   可能导致回撤变大或者恢复时间变长，但是入场次数会减少。

### 3.5 Determination of appropriate exits – risk management

*   **The concept of Maximum Adverse Excursion (MAE)**

    *   MAE:每笔 trade 往反方向走的最大幅度
    *   MAE Graph，散点图，横坐标为 Drawdown in %, 纵坐标为 Profit(Loss) in %
        *   ![Picture](what/Trading_Systems_4.png)

-   **Inserting a risk stop loss**

    *   Net Profit/Maximum Drawdown 可以反映收益和风险
    *   加入止损过小会导致本来最终盈利的仓位变成小幅亏损。
    *   移动止损比固定止损效果更好。
    *   Graph， 横坐标 Stop Distance(%)， 纵坐标 NP/DD (Ratio of net
        profit/maximum drawdown)
        *   Stop loss
        *   Trailing stop loss
        *   ![Picture](what/Trading_Systems_5.png)
        *   ![Picture](what/Trading_Systems_6.png)
        *   在 loss diagonal 上的表示在亏损订单在最大亏损的时候退场了。即最大回
            撤与最终亏损相同。

-   **Looking for profit targets: Maximum Favourable Excursion (MFE)**

    *   MFE: 每笔交易往盈利方向的最大幅度
    *   MFE Graph，散点图，横坐标为 Run-up(%), 纵坐标为 Profit(Loss) in (%)
        *   ![Picture](what/Trading_Systems_7.png)
    *   在 win diagonal 上的表示在最大盈利的时候出场。Perfect！
    *   止盈位置设在支撑位、压力位等效果更好。
    *   止盈并不总是奏效
        *   ![Picture](what/Trading_Systems_8.png)

### 3.6 Summary: Step-by-step development of a trading system

*   **Step-by-step**:
    1.  code, define Entries
        *   Starting point **Idea** from book, internet, article, seminar etc.
    2.  Add slippage and commissions
    3.  Stability tests
        *   Check for stable area of input parameters
    4.  Adding filters: Time, Trend(e.g. ADX), Volatility etx.
    5.  MAE/MFA Analysis
        *   Finding Exits
    6.  Optimize
        *   Opt. Stop Loss
        *   Opt. Trailing Stop
        *   Opt. Profit Target
    *   ![Picture](what/Trading_Systems_9.png)

## Chapter 4: Two methods for evaluating the system’s predictive power

### 4.1 Timescale analysis

*   **Net profit and maximum drawdown dependent on the traded bar length**
    *   Although the trading system makes profits on all the different
        timescales, the shapes of the equity curves with their drawdown phases
        appear a bit different.
    *   You must investigate the two factors which contribute to it: **number of
        trades** and **average profit per trade**
    *   graph, 横坐标 Time scale， 纵坐标 Net Profit
    *   graph, 横坐标 Time scale， 纵坐标 Number of Trades
    *   graph, 横坐标 Time scale， 纵坐标 Average Profit Per Trade

### 4.2 Monte Carlo analysis

*   **The principle of Monte Carlo analysis**

    *   Change the positions of all trades accidentally. This permutation method
        is called “selection without replacement.

*   **Probabilities and confidence levels**

    *   Gaussian distribution
    *   confidence level
    *   confidence interval

*   **Limitations of the Monte Carlo method**
    *   Monte Carlo analysis is only useful when applied correctly and not to
        over-fitted trading systems
    *   Although the general behaviour of the markets can be described by the
        Gauss model, there are some days with very huge percentage changes that
        are outside the Gaussian curve.
    *   To get more reliable results for such extreme scenarios you have to
        choose more realistic distributions than the Gaussian distribution

## Chapter 5: The factors around your system

### 5.1 The market’s long/short bias

*   **Consequences for system development**
    *   we tend to build the systems without long or short bias
    *   Since you do not know if this uptrend will continue in the future, your
        system is more stable and less adapted to this market bias if it
        produces the same amount of long and short signals.

### 5.2 Out-of-sample deterioration

*   **Reasons for the out-of-sample deterioration**

    *   the low number of trades is certainly **not** the main reason for the
        system deterioration
    *   the disclosure of the system is **not** a big reason for its success or
        failure
    *   **market dynamics**
    *   **The system has been adapted too much to market noise within the
        training period**

*   What your trading system is trying to detect are the patterns which repeat
    themselves. These patterns are mainly produced by human behaviour like
    greed, fear and exaggeration and not by random, artificial mathematical
    processes.

### 5.3 The market data bias

*   **Expanding the training period**

*   **Conclusion: How to choose your training data**
    *   it’s advisable to make the training period as long as possible. Since a
        longer period contains much more data, there is a higher probability
        that within this longer data range there are some periods which behave
        similarly to your test data range and therefore train your system
        better.
    *   On the other hand, keep in mind that this rule is only valid if your
        market data contains **a lot of different market phases**.

### 5.4 Optimisation and over-fitting

## Chapter 6: Periodic re-optimisation and walk forward analysis

## Chapter 7: Position sizing example, using the LUXOR system

# Part III: Systematic Portfolio Trading

## Chapter 8: Dynamic portfolio construction

# Conclusion
