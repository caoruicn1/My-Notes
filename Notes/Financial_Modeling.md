# Financial Modeling 

<!-- vim-markdown-toc GitLab -->

* [Financial Modeling II](#financial-modeling-ii)
    * [Returns and Risk](#returns-and-risk)
        * [Risk](#risk)
        * [Asset Returns](#asset-returns)
        * [Stylized fact](#stylized-fact)
        * [Model of asset returns](#model-of-asset-returns)
        * [JP Morgan's RiskMetrics model](#jp-morgans-riskmetrics-model)
        * [\$VaR & VaR](#var-var)
        * [Expected Shortfall](#expected-shortfall)
    * [Time series](#time-series)
        * [Autocorrelation](#autocorrelation)
        * [Autoregressive(AR) Models](#autoregressivear-models)
        * [Moving Average(MA) Models](#moving-averagema-models)
        * [ARMA Models](#arma-models)
        * [Random Walks](#random-walks)

<!-- vim-markdown-toc -->

# Financial Modeling II

## Returns and Risk

### Risk

1. Market risk
2. Liqudity risk
3. Operational risk
4. Credit risk
5. Business risk

### Asset Returns

- $R_{t+1} = \frac{S_{t+1}}{S_t}-1$
- $R_{t+1} = \ln(S_{t+1}) - \ln(S_t)$
    - $$S_{t+1} = e^{R_{t+1}}S_t$

### Stylized fact

1. Daily returns have very little autocorrelation.(unpredictable)
    - $Corr(R_{t+1},R_{t+1-\tau})\approx 0, for \tau = 1,2,3,...,100$
2. Daily returns have fat tail than normal distribution
3. Negative skewed.(大跌状况比大涨多)
4. 短期Standard deviation大于mean, 长期看mean=0
5. Variance displays positive correlation with its own past.(Predictable)
    - $Corr(R_{t+1}^2,R_{t+1-\tau}^2)>0,for\ small \tau$
6. Negative correlation between variance and returns.(leverage effect)
7. Correlation between assets appears to be time varying, increase in
    highly volatile.
8. Standardizing returns still have fat tail.
9. As the return-horizon increases, increasingly like the normal
    distribution.

### Model of asset returns

- $R_{t+1} = \mu_{t+1}+\sigma_{t+1} z_{t+1} , with\ z_{t+1} ~ i.i.d.D(0,1)$

### JP Morgan's RiskMetrics model
- $$\sigma_{t+1}^2 = 0.94\sigma_t^2 + 0.06R_t^2$$

### \$VaR & VaR
- VaR is defined as a positive number
- $Pr(\$Loss > \$VaR)=p$
- $\$VaR = V_{PF}(1-e^{-VaR})$ (log_return)
- By **Normal distribution assumption**
    - $VaR_{t+1} = -\sigma_{PF,t+1} \Phi_p^-1$
    - Drawbacks
        - Extreme losses are ignored
        - VaR assumes that the portfolio is constant across the next K days.
        - Not clear how K(days) and p(percentile) should be chosen.
- By **Historical Simulation**(Most popular)
    - Sort the returns in ascending order, and choose percentile
    - Pros: easy and model-free
    - Cons: Not clear how to choose the data sample length
        - ![Historical Simulation](./what/Financial_Modeling_1.png)
    - The HS VaR reacts too slowly to increases in volatility as well as to 
        decreases in volatility.

### Expected Shortfall

- The ES tells us the expected value of tomorrow's loss, conditional on it
    being worse than the VaR.
- The Expected SHortfall computes the average of the tail outcomes weighted
    by their probabilities.
- $ES_{t+1}^p = -E_t[R_{PF,t+1}|R_{PF,t+1} < -VaR^p_{t+1}]$
- By **Normal distribution assumption**
    - $ES_{t+1}^p = \sigma_{PF,t+1} \frac{\phi(\Phi_p^{-1})}{p}$
    - $\phi(\Phi_p^{-1})$ is the probability of PDF.
- By **Historical Simulation**
    - Sum(probability_n X loss_n)/probability

## Time series

### Autocorrelation

- $\rho_{\tau} = Corr[R_t,R_{t-\tau}] =
    \frac{Cov[R_t,R_{t-\tau}]}{\sqrt{Var[R_t]Var[R_{t-\tau}]}}=
    \frac{Cov[R_t,R_{t-\tau}]}{Var[R_{t}]}$

### Autoregressive(AR) Models
- ACF dies of exponentially.
- Assumption
    - $E[\epsilon_t] = 0$
    - $Var[\epsilon_t] = \sigma_\epsilon^2$
    - $R_{t-\tau}$ and $\epsilon_t$ are independent for all $\tau>0$
- AR(1):$R_t = \phi_0 + \phi_1 R_{t-1} + \epsilon$
- ACF
    - AR(p): $E_t(R_{t+1}) = \phi_0 + \phi_1 R_{t} + \phi_p R_{t+1-p}$
    - ![AR_Model](./what/Financial_Modeling_2.png)
    - ![ARModel](./what/Financial_Modeling_3.png)
    - ![ARModel](./what/Financial_Modeling_4.png)
    - For AR(2)的 ACF(1): ![AR2](./what/Financial_Modeling_5.png)
- PACF
    - The optimal lag order p in the AR(p) can be chosen as the largest p such
     that is significant in the PACF.

### Moving Average(MA) Models

- ACF die off abruptly
- Assumption
    - $\epsilon_t$ and $\epsilon_{t-1}$ are independent
    - $E[\epsilon_t] = 0$
- MA(1):$R_t = \theta_0 + \epsilon_t + \theta_1\epsilon_{t-1}$
- MA(q):$R_t = \theta_0 + \theta_1\epsilon_{t-1} + \theta_2\epsilon_{t-2} + ... +
  \theta_q\epsilon_{t-q} + \epsilon_t$
- $E[R_t] = \theta_0$
- $Var(R_t) = (1+\theta_1^2)\sigma_{\epsilon}^2$
- ACF
    - The ACF for MA(q) is non-zero for the first q lags and then drops
      abruptly to zero.
    - ![MAModel](./what/Financial_Modeling_6.png) 
    - ![MAModel](./what/Financial_Modeling_7.png) 

### ARMA Models##

- ARMA(1,1)
    - $R_t = \phi_0 + \phi_1R_{t-1} + \phi_1 \epsilon_{t-1}+ \epsilon_t$
    - 推导$E(R_t)$
        - $E(R_t) = \phi_0 + \phi_1E[R_{t-1}]+\theta_1E(\epsilon_{t-1})+E(\epsilon_t)$
        - $E(R_t) = \phi_0 + \phi_1E[R_{t-1}]+0+0$
        - $E(R_t) = \frac{\phi_0}{1-phi_1}$ when $|\phi_1|<1$
    - 推导$Var[R_t]$
        - $E[R_t\epsilon_t] = \sigma_\epsilon^2$
        - $Var[R_t] =
          \phi_1^2Var[R_t]+\theta_1^2\sigma_\epsilon^2+\sigma_\epsilon^2 +
          2\phi_1\theta_1\sigma_\epsilon^2$
        - $Var(R_t) =
          \frac{(1+2\phi_1\theta_1+\theta_1^2)\sigma_\epsilon^2}{1-\phi_1^2}$
- ARMA(p,q):$R_t=\phi_0+\sum_{i=1}^p\phi_iR_{t-i} +
  \sum_{i=1}^q\theta_i\epsilon_{t-i} + \epsilon_t$
- ACF
    - ![ARMA](./what/Financial_Modeling_8.png)
    - ![ARMA](./what/Financial_Modeling_9.png)

### Random Walks

- 
