# Mechine Learnling

- Book:  [《机器学习》--周志华](https://book.douban.com/subject/26708119/?from=tag)
- Python code: [Hands_on_ML](https://github.com/Chandlercjy/Hands_on_ML)

## 决策树

- 理解信息熵由来:
    - ![picture](what/Mechine_Learning_1.png)
- 理解信息熵越小,纯度越高
    - 信息熵越大,featues中种类就越多,不确定程度就越高。
    - 信息熵表示随机变量的不确定程度，而引入features之后，
    通过知道results而求出的条件熵，可以得知features解释了多少不确定程度，
    所以相减得出的信息增益表示剩余还有多少不确定性。若信息增益为0，
    表示features完全解释了results，否则表示还需要其他features来解释，
    所以需要选择信息增益大的作为节点继续拆分。

