# Mechine Learning

*   Study Source:
    *   [《机器学习》--周志华](https://book.douban.com/subject/26708119/?from=tag)
    *   [《统计学习方法》--李航](https://book.douban.com/subject/10590856/)
    *   [Coursera-ML-AndrewNg-Notes](https://github.com/fengdu78/Coursera-ML-AndrewNg-Notes)
*   Python Code: [Hands_on_ML](https://github.com/Chandlercjy/Hands_on_ML)

## 目录

<!-- vim-markdown-toc GitLab -->

*   [1. 统计学习方法概论 Statistical learning](#1-统计学习方法概论-statistical-learning)
    *   [1.1 策略 Strategy](#11-策略-strategy)
        *   [损失函数 loss function](#损失函数-loss-function)
        *   [风险函数 risk function](#风险函数-risk-function)
    *   [1.2 模型 model](#12-模型-model)
    *   [1.3 算法 Algorithms](#13-算法-algorithms)
    *   [1.4 模型评估与模型选择](#14-模型评估与模型选择)
    *   [1.5 数据预处理](#15-数据预处理)
*   [2. 各种模型](#2-各种模型)
    *   [2.1 线性回归 Linear Regression](#21-线性回归-linear-regression)
    *   [2.2 逻辑回归 Logistic Regression](#22-逻辑回归-logistic-regression)
    *   [2.3 决策树 Desicion Tree](#23-决策树-desicion-tree)

<!-- vim-markdown-toc -->

# 1. 统计学习方法概论 Statistical learning

*   **基本概念**

    *   监督学习(supervised learnling), 非监督学习(unsupervised learnling)
    *   输入空间(input space), 输出空间(output space), 特征空间(feature vector)
    *   假设空间(Hypothesis space), 联合概率分布
    *   损失函数(loss function): 单个样本的误差
    *   代价函数(cost function): 整个训练集的平均误差

*   **统计模型三要素**

    *   模型(model)
        *   决策函数
        *   判别函数
    *   策略(strategy)
        *   损失函数(loss function)和风险函数(risk function)
        *   期望风险最小化与结构风险最小化
    *   算法(algorithm)

## 1.1 策略 Strategy

### 损失函数 loss function

*   **常用损失函数(loss function)**

    *   0-1 损失函数(0-1 loss function)

        $$L(Y, f(X)) = \begin{cases} 1, Y \not=f(X) \\ 0, Y=f(X) \end{cases} $$

    *   平方损失函数(quadratic loss function)

        $$L(Y, f(X)) = (Y-f(X))^2$$

    *   绝对损失函数(absolute loss function)

        $$L(Y, f(X)) = |(Y-f(X))|$$

    *   对数损失函数(logarithmic loss function)或对数似然函数(log-likelihood
        loss function)

        $$L(Y, P(Y|X)) = -logP(Y|X)$$

*   **损失函数的定义方法**

    1.  均方误差(Error of mean square)
    2.  最大后验概率(Maximum posterior probability)
    3.  交叉熵损失函数(Cross entropy loss)
    4.  极大似然估计(Maximum likelihood estimate)

        *   极大似然函数也是构造损失函数的一种方式, 所以求极大似然函数的最大值,
            本质上就是求代价函数的最小值, 达到最小值时的参数即为所求参数。

            *   在一元情况下, 极大似然函数可以通过使二次导等于零, 从而求得参数的
                计算公式, 非常简便地算出参数值。

            *   在多元(n)情况下, 极大似然函数二次导等于零会产生 n 个方程, 此时要
                写出求 n 个参数的计算公式非常困难, 所以要乖乖用优化算法计算。

        *   极大似然估计通过假设概率密度函数的不同, 可以推导出各种代价函数。

### 风险函数 risk function

*   **类别**

    *   经验风险(empirical risk):训练样本集的平均损失

        <!-- prettier-ignore -->
        $$R_{emp}(f) = \frac{1}{N}\sum^N_{i=1} L(y_i, f(x_i))$$

    *   期望风险(expected loss):联合分布的期望损失。即样本值乘以出现概率。

        <!-- prettier-ignore -->
        $$R_{exp}(f) = E_p[L(Y, f(X))] = \int_{x*y}L(y, f(x))P(x, y)dxdy$$

    *   根据大数定律, 当样本容量 N 趋于无穷时, 经验风险趋于期望风险。

*   **经验风险最小化(empirical risk minimization, ERM)**

    <!-- prettier-ignore -->
    $$\frac{1}{N}\sum^N_{i=1} L(y_i, f(x_i))$$

*   **结构风险最小化(structural risk minimization, SRM)**

    <!-- prettier-ignore -->
    $$R_{srm}(f) = \frac{1}{N}\sum^N_{i=1} L(y_i, f(x_i)) + \lambda J(f)$$

*   **理解经验风险和期望风险区别**

    *   经验风险是局部的, 基于训练集所有样本点损失函数最小化的。
    *   期望风险是全局的, 是基于所有样本点的损失函数最小化的。
    *   经验风险函数是现实的, 可求的；
    *   期望风险函数是理想化的, 不可求的；
    *   基本思想是用局部最优代替全局最优。

*   **理解经验风险最小化与结构风险最小化关系**

    *   样本容量大用经验风险最小化, 样本容量小用结构风险最小化。
    *   当样本容量大的时候, 经验最小化可以保证很好的学习效果。
        *   比如, 极大似然估计就是经验风险最小化的例子。当模型是条件概率分布, 损
            失函数是对数损失函数时, 经验风险最小化等价于极大似然估计。
    *   结构风险最小化是为了防止过拟合而提出的策略。等价于在经验风险加上表示模型
        复杂度的正则化项(regularizer)或罚项(penalty term)。
        *   比如, 贝叶斯估计中的最大后验概率估计就是结构风险最小化的一个例子。当
            模型是条件概率分布、损失函数是对数损失函数、模型复杂度由模型的先验概
            率表示时, 结构风险最小化等价于最大后验概率估计。

## 1.2 模型 model

*   **理解生成模型与判别模型的区别**

    *   [生成模型与判别模型](https://blog.csdn.net/zouxy09/article/details/8195017)

    *   决策函数
    *   判别函数

## 1.3 算法 Algorithms

*   **理解优化算法与损失函数的关系**

    *   最大似然(MLE), 最大后验(MAP)等都是构造目标函数的方法, 构造出这个目标函数
        后, 我们可以用各种优化方法来找到它的极值.
    *   ![picture](what/Mechine_Learning_6.png)

*   **梯度下降法**

    *   梯度下降是用来求函数最小值的算法。
    *   名词解释:
        *   batch gradient descent: 批量梯度下降
        *   learning rate: 学习率$$\alpha$$
    *   原理: 通过构建损失函数, 求其梯度, 然后根据步长 alpha 不断迭代更新参数
        theta。背后思想是开始时随机选择一个参数组合 theta, 计算代价函数, 然后寻
        找下一个能让代价函数值下降最多的参数组合, 知道找到一个局部最小值 (local
        minimum)。
    *   注意要点:

        1.  因为并没有尝试所有的参数组合, 所以不能确定 得到的局 部最小值是否是全
            局最小值(global minimum)。选择不同的初始参数组合, 可能会找到不同的局
            部最小值。
        2.  学习率 alpha 如果太小, 会移动太慢导致迭代次数过高, 若太大可能无法收
            敛。此外, 当接近局部最低点时, 导数绝对值越来越小, 所以下降步伐也越来
            越小, 所以实际上没必要另外减小 alpha.
        3.  采用多项式回归模型, 运行梯度下降算法前, 特征缩放非常有必要。

    *   ![picture](what/Mechine_Learning_3.png)
    *   ![picture](what/Mechine_Learning_2.png)
    *   ![picture](what/Mechine_Learning_4.png)

## 1.4 模型评估与模型选择

*   **模型评估**

    *   基于训练误差(training error)和测试误差(test error)对模型进行评估和选择。
    *   预测能力越高, 训练误差越小, 模型复杂度越高, 测试误差先减小后增大, 导致过
        拟合(over-fitting)
    *   ![picture](what/Mechine_Learning_7.png)

*   **模型选择**

    1.  正则化(regularization)

        *   即用结构风险最小化策略

        <!-- prettier-ignore -->
        $$R_{srm}(f) = \frac{1}{N}\sum^N_{i=1} L(y_i, f(x_i)) + \lambda J(f)$$

        *   正则化项可以取不同的形式, 比如参数向量的 L1, L2 范数。

    2.  交叉验证
        1.  简单交叉验证(cross validation):
            *   将数据随机分成两部分(70%训练, 30%测试 ), 选择测试误差最小模型。
        2.  S 折交叉验证:(S-fold cross validation):
            *   将数据集随机切成 S 个互不相交的子集, 然后选取其中一个子集作为测
                试集。重复 S 次得出 S 个模型, 然后选择平均测试误差最小的模型。
        3.  留一交叉验证:(leave-one-out cross validation)
            *   S 折的特殊情形 S=N, 即子集只包含一个样本, 而不是多个样本。每次只
                留下一个样本做测试集。

*   **泛化能力**

    *   泛化误差(generalization error)其实就是模型的期望风险。

        <!-- prettier-ignore -->
        $$R_{exp}(f) = E_p[L(Y, f(X))] = \int_{x*y}L(y, f(x))P(x, y)dxdy$$

## 1.5 数据预处理

*   **归一化(标准化)方法**

    1.  Min-max 标准化(Min-Max Normalization), 使结果值映射到[0, 1]之间

        $$X^\* = \frac{x-min}{max-min}$$

    2.  Z-score 标准化方法, 转化后数据符合标准正态分布, N(0, 1)

        $$x^\* = \frac{x - \mu}{\sigma}$$

*   **归一化的重要性**
    *   数据归一化后, 最优解的寻优过程明显会变得平缓, 更容易正确的收敛到最优解。
    *   ![picture](what/Mechine_Learning_9.png)

# 2. 各种模型

## 2.1 线性回归 Linear Regression

*   **基本原理**

    *   ![picture](what/Mechine_Learning_10.png)

*   **最小二乘法(Least squares, 又叫 Normal Equation)**

    *   $$\theta = (X^TX)^{-1} X^Ty$$
    *   对于线性回归问题, 我们采用极大似然来构造一个目标函数, 然后用梯度下降或者
        直接用向量的投影来直接算出最优解的表达式(最小二乘法)
    *   但是最小二乘法其实只是一种特殊情况, 当目标函数比较复杂的时候无法使用, 当
        变量 X 的列数多于行数导致 XTX 不是满秩矩阵时也无法使用(即不可逆, 通常是
        因为特征之间不独立, 也有可能是特征数量大于训练集的数量)。
    *   如果主要特征变量数目不大, 最小二乘法也是很好的, 具体要看情况。而不可逆的
        问题可以通过删除多余特征解决。
    *   ![picture](what/Mechine_Learning_5.png)

## 2.2 逻辑回归 Logistic Regression

*   **二元分类**

    *   与线性回归非常相似, 只是假设函数不同。
    *   Y 的输出值永远为 0 或 1, 表示两种分类。
    *   引入 S 形函数(Sigmoid function)

        <!-- prettier-ignore -->
        $$g(z) = \frac{1}{1+e^{-z}}$$
        $$h_{\theta}(x)=g(\theta^T x)$$

    *   ![picture](what/Mechine_Learning_8.png)
    *   推导过程:
        *   ![picture](what/Mechine_Learning_11.png)

## 2.3 决策树 Desicion Tree

*   **理解信息熵由来**

    *   ![picture](what/Mechine_Learning_1.png)

*   **理解信息熵越小, 纯度越高**
    *   信息熵越大, featues 中种类就越多, 不确定程度就越高。
    *   信息熵表示随机变量的不确定程度, 而引入 features 之后, 通过知道 results
        而求出的条件熵, 可以得知 features 解释了多少不确定程度, 所以相减得出的信
        息增益表示剩余还有多少不确定性。若信息增益为 0, 表示 features 完全解释了
        results。所以需要选择信息增益大的作为节点继续拆分, 因为还有很多不确定性,
        所以需要继续拆分。
