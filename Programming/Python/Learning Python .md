# Python学习手册


<!-- toc orderedList:0 depthFrom:1 depthTo:6 -->

* [Python学习手册](#python学习手册)
  * [第3章 如何运行程序](#第3章-如何运行程序)
* [第二部分 类型和运算](#第二部分-类型和运算)
  * [第4章 介绍python对象类型](#第4章-介绍python对象类型)
  * [第5章 数字](#第5章-数字)
  * [第6章 动态类型简介](#第6章-动态类型简介)
  * [第7章 字符串](#第7章-字符串)
  * [第8章 列表与字典](#第8章-列表与字典)
  * [第9章 元组、文件及其他](#第9章-元组-文件及其他)
* [第三部分 语句和语法](#第三部分-语句和语法)
  * [第10章 python语句简介](#第10章-python语句简介)
  * [第11章 赋值、表达式和打印](#第11章-赋值-表达式和打印)
  * [第12章 if测试和语法规则](#第12章-if测试和语法规则)
  * [第13章 while和for循环](#第13章-while和for循环)
  * [第14章 迭代器和解析， 第一部分](#第14章-迭代器和解析-第一部分)
  * [文档](#文档)
* [第四部分 函数](#第四部分-函数)
  * [第16章 函数基础](#第16章-函数基础)
  * [第17章 作用域](#第17章-作用域)
  * [第18章 参数](#第18章-参数)
  * [第19章 函数的高级话题](#第19章-函数的高级话题)
  * [第20章 迭代和解析， 第二部分](#第20章-迭代和解析-第二部分)
* [第五部分 模块](#第五部分-模块)
  * [第21章 模块：宏伟蓝图](#第21章-模块宏伟蓝图)
  * [第22章 模块代码编写基础](#第22章-模块代码编写基础)
  * [第23章 模块包](#第23章-模块包)
  * [第24章 高级模块话题](#第24章-高级模块话题)
* [第六部分 类和OOP](#第六部分-类和oop)
  * [第25章 OOP：宏伟蓝图](#第25章-oop宏伟蓝图)
  * [第26章 类代码编写基础](#第26章-类代码编写基础)
  * [第27章 更多实例](#第27章-更多实例)
  * [第28章 类代码编写细节](#第28章-类代码编写细节)
  * [第29章 运算符重载](#第29章-运算符重载)
  * [第30章 类的设计](#第30章-类的设计)
  * [第31章 类的高级主题](#第31章-类的高级主题)
* [第七部分](#第七部分)
  * [第32章 异常基础](#第32章-异常基础)
  * [第33章 异常编码细节](#第33章-异常编码细节)
  * [第34章 异常对象](#第34章-异常对象)
  * [第35章 异常的设计](#第35章-异常的设计)
    * [Types](#types)
    * [Others](#others)
    * [操作](#操作)
    * [抽象](#抽象)
    * [Escape Sequences](#escape-sequences)
    * [Reading and Writing](#reading-and-writing)
    * [Keywords](#keywords)
    * [Data Types](#data-types)
    * [Operators](#operators)

<!-- tocstop -->



## 第3章 如何运行程序

- UNIX env查找技巧：
  - 可以在文件特定的第一行注释中这样写：`#!/usr/bin/env python`，当这样编写代码的时候，env程序可以通过系统的搜索路径的设置定位python解释器。

- `from imp import reload()`:在同一次会话中再次运行文件。（python3.0，若2.6为内置）。reload是不可传递的，重载一个模块的话只会重载该模块，而不能够重载该模块所导入的任何模块，因此，有时候必须reload多个文件。
- `.`：点号表示`object.attribute`的语法，可以从任何的object中取出任意的属性。
- `dir()`内置dir函数可以用来获取模块内部可用的**变量名**列表。
- `exec(open('module.py').read())`：从交互提示启动文件而不必导入以及随后的重载。

# 第二部分 类型和运算
## 第4章 介绍python对象类型

- 内置对象：数字、“字符串”、[列表]、{字典}、(元组)、文件、{集合}、其他类型、编程单元类型、与实现相关的类型。
- **字符串**
  - 类型特定的方法
    - `S.find()`:基本的字符串查找工作。
    - `S.replace(‘’，’‘)`：对全局的搜索和替换。
    - `S.split(',')`：用，将S分割成列表
    - `S.upper()`；大写
    - `S.isalpha`：判断是否所有字符都是字母或者数字。
    - `S.isdigit`：判断是否所有字符都是数字。
    - `S.rstrip()`：Remove whitespace characters on the right side
    - 格式化的高级替代操作
      - `%s, eggs, and %s` % ('spam', 'SPAM!')
      - '{0}, eggs, and {1}'.format('spam', 'SPAM!')
  - 通用型操作都是以内置函数或表达式的形式出现的[例如, len(x), X[0]]
  - 类型特定的操作是以方法调用的形式出现的
  - `help()`：查询用法。
  - 反斜线转义序列表示特殊的字符。
  - 模式匹配
- **列表**
  - 序列操作：对列表进行索引、切片等操作。
  - 类型特定的操作：
    - `L.append()`: add object at end of list
    - `L.pop(2)`: delete an item in the middle and return it
    - `L.sort()`: 对列表进行排序
    - `L.reverse()`：对列表进行反转
  - 嵌套：可以多个层次进行嵌套。
  - 列表解析(list comprehension expression):
      ```python
      M = [[1,2,3],
           [4,5,6],
           [7,8,9]]
      print M
      print [row[1] + 1 for row in M]
      print [row[1] for row in M if row[1] % 2 == 0]

      diag = [M[i][i] for i in [0,1,2]]
      doubles = [c * 2 for c in 'spam']
      print diag
      print doubles
      ```
  - 可以有那个解析语法穿件集合、字典、列表

- **字典**
  - 映射操作
  - 创建方法：`D = {}; D['name'] = 'Bob'`
  - 重访嵌套：字典中的字典
  - `sorted()`内置函数返回结果对各种对象类型进行排序
      ```python
      D = {'a':1, 'c':3, 'b':2}
      for key in sorted(D):
        print(key, '=>', D[key])
      ```
  - `in`关系表达式允许我们查询字典中一个键是否存在。`'f' in D ; False`
  - 其他创建字典并避免获取不存在的字典键： get方法、Python 2.X的has_key方法、 try语句， 以及if／else表达式
  - `map(function, sequence[, sequence, ...])`, `map(lambda x: x**2, [1,2,3,4,5])`
  - `Filter(function or None, sequence)`会对sequence每个元素调用function，返回结果为True的元素

- **元组**
- 元组是序列，但是他具有*不可变性*，和字符串类似。
- 支持任意类型、任意嵌套和常见的序列操作。
  - `len()` `T[0]`
- 在Python 3.0中两个专有的方法

  ```python
  T = (1,2,3,4)
  print T.index(4)  # Tuple methods: 4 appears at offset 3
  print T.count(4)  # 4 appears once
  ```

- **文件**

  ```python
  f = open('data.txt', 'w')  # Make a new file in output mode
  f.write('Hello\n')  # Write strings of bytes to it
  f.write('world\n')  # Returns numbers of bytes written in Python 3.0
  f.read()  # Read entire file into a string
  f.readline()  # Read one line every time
  f.close()  # Close to flush output buffers to disk
  ```
- **其他核心类型**
  - `set()`函数创建集合

    ```python
    X = set('spam')
    Y = {'h', 'a', 'm'}
    print X, Y    
    print X & Y  # Intersection
    print X | Y  # Union
    print X - Y  # Difference
    print {x ** 2 for x in [1, 2, 3, 4]}  # Set comprehensions in 3.0
    ```

  - 小数

    ```python
    import decimal
    d = decimal.Decimal('3.141')
    print d + 1  # Decimal(4.141)
    ```
  - 分数

    ```python
    from fractions import Fraction
    f = Fraction(2, 3)
    print f + 1  # Fraction(5, 3)
    print f + Fraction(1, 2)  # Fraction(7, 6)
    ```

  - 布尔值

    ```python
    print 1 > 2, 1 < 2  # (False, True)
    print bool('spam')
    ```
- 查看类型方法

  ```python
  L = [1]
  if type(L) == type ([]):
      print 'yes'

  if type(L) == list:
      print 'yes'

  if isinstance(L, list):    
      print 'yes'
  ```
- **类**

## 第5章 数字
- **Python表达式操作符**

  Operators                    | Description
  ---------------------------- | ----------------------------------------------------
  yield x                      | Generator function send protocol
  lambda args: expression      | Anonymous function generation
  x if y else z                | Ternary selection (x is evaluated only if y is true)
  x or y                       | Logical OR (y is evaluated only if x is false)
  x and y                      | Logical AND (y is evaluated only if x is true)
  not x                        | Logical negation
  x in y, x not in y           | Membership (iterables, sets)
  x is y, x is not y           | Object identity tests
  x < y, x <= y, x > y, x >= y | Magnitude comparison, set subset and superset;
  x == y, x != y               | Value equality operators
  x \| y                       | Bitwise OR, set union
  x^ y                         | Bitwise XOR, set symmetric difference
  x& y                         | Bitwise AND, set intersection
  x << y, x >> y               | Shift x left or right by y bits
  x+ y                         | Addition, concatenation;
  x– y                         | Subtraction, set difference
  x* y                         | Multiplication, repetition;
  x% y                         | Remainder, format;
  x / y, x // y                | Division: true and floor
  −x, +x                       | Negation, identity
  ̃x                           | Bitwise NOT (inversion)
  x ** y                       | Power (exponentiation)
  x[i]                         | Indexing (sequence, mapping, others)
  x[i: j: k]                   | Slicing
  x(...)                       | Call (function, method, class, other callable)
  x.attr                       | Attribute reference
  (...)                        | Tuple, expression, generator expression
  [...]                        | List, list comprehension
  {...}                        | Dictionary, set, set and dictionary comprehensions

- `str`和`repr`显示格式

  ```python
  num = 1 / 3
  print repr(num)  # Used by echoes: as-code form
  print str(num)   # Used by print: usr-friendly form
  ```
- **除法**
  - 在Python 3.0中，`X / Y` 总是执行真除法（浮点），`X // Y` 执行Floor除法（整数）
  - 在Python 2.X中，`X / Y` 则随机应变， `X // Y` 执行Floor除法（整数）
  - 可以在`__future__`中import出Python 3.0的除法

    ```python
    from __future__ import division
    ```
  - Floor除法 VS 截断除法

    ```python}
    import math
    print math.floor(2.5)   # 2
    print math.floor(-2.5)  # -3
    print math.trunc(2.5)   # 2
    print math.trunc(-2.5)  # -2
    ```
- **整数精度**： Python 3.0整数支持无穷的大小， Python 2.X 会在长整数末尾加个“L”
- **记数**
  - `oct()`:将_十进制_转换为_八进制_
  - `hex()`:将_十进制_转换为_十六进制_
  - `bin()`:将_十进制_转换为_二进制_
  - `int('100', 8)`:通过定义第二个参数来确定变换后的数字的进制
  - `eval()`

- **位计算**

- **其他的内置数学工具**

  ```python
  import math
  print math.pi, math.e                   # (3.141592653589793, 2.718281828459045)
  print math.sin(2 * math.pi / 180)       # 0.03489949670250097
  print math.sqrt(144), math.sqrt(2)      # (12.0, 1.4142135623730951)
  print pow(2,4), 2 ** 4                  # (16, 16, 16.0)
  print abs(-42.0), sum((1, 2, 3, 4))     # (42.0, 10)
  print min(3, 1, 2, 4), max(3, 1, 2, 4)  # (1, 4)
  print math.floor(2.567), math.floor(-2.567)  # (2, −3)
  print math trunc(2.567), math.trunc(-2.567)  # (2, −2)
  print int(2,567), int (-2.567)               # (2, −2)
  print round(2.567), round(2,467), round(2.567,2)   # (3, 2, 2.57)
  print '$.1f' % 2.567, '{0:.2f}'.format(2.567)      # ('2.6', '2.57')
  print (1 / 3), round(1 / 3, 2), ('%.2f' % (1 /3))  # (0.3333333333333333, 0.33, '0.33')

  import random
  print random.random()  # 选出一个0和1之间的任意浮点数
  print random.randint(1, 10)  # 在1和10之间选一个
  print random.choice(['Life of Brian', 'Holy Grail', 'Meaning of Life'])
  ```
- **精度问题**
  - 浮点数学缺乏精确性，因为用来存储数值的空间有限。可以使用小数对象进行修正。

  ```python
  print 0.1 + 0.1 + 0.1 - 0.3  # 5.5511151231257827e-17

  from decimal import Decimal
  print Decimal('0.1') + Decimal('0.1') + Decimal('0.1') - Decimal('0.3')
  # Decimal('0.00')
  ```
- **设置全局精度**

  ```python
  import decimal
  print decimal.Decimal(1) / decimal.Decimal(7)
  # Decimal('0.1428571428571428571428571429')
  decimal.getcontext().prec = 4
  print decimal.Decimal(1) / deciaml.Decimal(7)
  #Decimal('0.1429')
  ```

- **小数上下文管理器**：设置临时精度，语句退出后精度返回初始值。

```python
import decimal
with decimal.localcontext() as ctx:
    ctx.prec = 2
    decimal.Decimal('1.00') / decimal.Decimal('3.00')
# Decimal('0.33')
```
- **集合**
  - `set()`函数创建集合

    ```python
    X = set('spam')
    Y = {'h', 'a', 'm'}
    print X, Y    
    print 'a' in x  # Membership
    print X & Y  # Intersection
    print X | Y  # Union
    print X - Y  # Difference
    print X ^ Y  # Symmertric difference (XOR)
    print X > Y, X < Y  # Superset, subset
    print {x ** 2 for x in [1, 2, 3, 4]}  # Set comprehensions in 3.0
    ```
  - **操作方法**

    ```python
    x = set('abcde')
    y = set('bdxyz')

    z = x.intersection(y)      # Same as x & y
    print z                    # set(['b', 'd'])
    z.add('SPAM')              # Insert one item
    print z                    # set(['b', 'd', 'SPAM'])
    z.update(set(['X', 'Y']))  # Merge: in-place union
    print z                    # set(['Y', 'X', 'b', 'd', 'SPAM'])
    z.remove('b')              # Delete one item
    print z                    # set(['Y', 'X', 'd', 'SPAM'])
    ```
  - **不可变限制和冻结集合**
    - 集合只能包含_不可变_的对象类型，因此列表和字典不能嵌入到集合中。
    - 在Python 3.0中，集合还可以用{}表示，相当于无值的字典。

## 第6章 动态类型简介
- 类型属于对象，而不是变量
- 每当一个变量名被赋予了一个新的对象，之前的那个对象占用的空间就会被回收
- **共享引用**:实际效果是引用了相同的对象，而不是指针。

  ```python}
  a = 3
  b = a
  a = a + 2
  ```
- **原处修改**

  ```python
  L1 = [2,3,4]
  L2 = L1
  L1[0] = 24  # 原处修改会影响到L2
  print L1  # [24,3,4]
  print L2  # [24,3,4]
  L2 = L1[:]  # Make a copy of L1, 这样在修改就不会影响
  ```
- **相等**
  - `==操作符`是测试是否有相同的值， `is操作符`是检查对象的同一性

    ```python
    L = [1,2,3]
    M = L
    print L == M   # True
    print L is M   # False
    ```

## 第7章 字符串
- 严格来说，Python的字符串被划分为_不可变序列_这一类别，意味着这些字符串所包含的字符存在从左至右的位置顺序，并且它们不可以在原处修改。
- **常见字符串敞亮和表达式**

  Operation                   | Interpretation
  --------------------------- | ---------------------------------------------------------
  S = ''                      | Empty string
  S = "spam's"                | Double quotes, same as single
  S = 's\np\ta\x00m'          | Escape sequences
  S = """...multiline..."""   | Triple-quoted block strings
  S = r'\temp\spam'           | Raw strings (no escapes)
  B = b'sp\xc4m'              | Byte strings in 2.6, 2.7, and 3.X (Chapter 4, Chapter 37)
  U = u'sp\u00c4m'            | Unicode strings in 2.X and 3.3+ (Chapter 4, Chapter 37)
  S1 + S2                     | Concatenate, repeat
  S* 3                        |
  S[i]                        | Index, slice, length
  S[i:j]                      |
  len(S)                      |
  "a %s parrot" % kind        | String formatting expression
  "a {0} parrot".format(kind) | String formatting method in 2.6, 2.7, and 3.X
  S.find('pa')                | String methods (see ahead for all 43): search,
  S.rstrip()                  | remove whitespace,
  S.replace('pa', 'xx')       | replacement,
  S.split(',')                | split on delimiter,
  S.isdigit()                 | content test,
  S.lower()                   | case conversion,
  S.endswith('spam')          | end test,
  'spam'.join(strlist)        | delimiter join,
  S.encode('latin-1')         | Unicode encoding,
  B.decode('utf8')            | Unicode decoding, etc. (see Table 7-3)
  for x in S: print(x)        | Iteration, membership
  'spam' in S                 |
  [c * 2 for c in S]          |
  map(ord, S)                 |
  re.match('sp(.\*)am', line)  | Pattern matching: library module

- **字符串类型**
  - Python 3.0中，有3种字符串类型：str用于Unicode文本（ASCII或其他），bytes用于二进制数据（包括编码的文本）， bytearray是bytes的一种可变的变体。
  - Python 2.6中， unicode字符串表示宽Unicode文本，str字符串处理8位文本和二进制数据。

- **字符串反斜杠字符**

  Escape     | Meaning
  ---------- | -----------------------------------------------
  \newline   | Ignored (continuation line)
  \          | Backslash (stores one )
  \'         | Single quote (stores ')
  \"         | Double quote (stores ")
  \a         | Bell
  \b         | Backspace
  \f         | Formfeed
  \n         | Newline (linefeed)
  \r         | Carriage return
  \t         | Horizontal tab
  \v         | Vertical tab
  \xhh       | Character with hex value hh (exactly 2 digits)
  \ooo       | Character with octal value ooo (up to 3 digits)
  \0         | Null: binary 0 character (doesn't end string)
  \N{ id }   | Unicode database ID
  \uhhhh     | Unicode character with 16-bit hex value
  \Uhhhhhhhh | Unicode character with 32-bit hex valuea
  \other     | Not an escape (keeps both \ and other)

- **raw字符串抑制转义**
  - `myfile = open(r'C:\new\text.dat', 'w')`
  - `myfile = open('C:\\new\\text.dat', 'w')`

- **索引和分片**
  - 反向索引:`S[::-1]`

- **字符串转换工具**
  - `str()`:转换为字符串
  - `repr()`:转换为代码的字符串
```python
print str('spam'), repr('spam')  # ('spam', "'spam'")
```
  - `eval()`:可以将字符串转换为任意类型的对象

- **修改字符串方法**
  - str.replace(old , new , 次数): 替换字符串
  - `S = S[:3] + 'xx' + S[5:]`
    - str.find(‘str’) ：返回字符串位置。
  - 先用`list(str)`，再用`''.join(str)`合并成字符串

- 字符串格式化代码

  Escape | Description                            | Example
  ------ | -------------------------------------- | -----------------------------
  %d     | Decimal integers (not floating point). | "%d" % 45 == '45'
  %i     | Same as %d.                            | "%i" % 45 == '45'
  %o     | Octal number.                          | "%o" % 1000 == '1750'
  %u     | Unsigned decimal.                      | "%u" % -1000 == '-1000'
  %x     | Hexadecimal lowercase.                 | "%x" % 1000 == '3e8'
  %X     | Hexadecimal uppercase.                 | "%X" % 1000 == '3E8'
  %e     | Exponential notation, lowercase 'e'.   | "%e" % 1000 =='1.000000e+03'
  %E     | Exponential notation, uppercase 'E'.   | "%E" % 1000 == '1.000000E+03'
  %f     | Floating point real number.            | "%f" % 10.34 == '10.340000'
  %F     | Same as %f.                            | "%F" % 10.34 == '10.340000'
  %g     | Either %f or %e, whichever is shorter. | "%g" % 10.34 == '10.34'
  %G     | Same as %g but uppercase.              | "%G" % 10.34 == '10.34'
  %c     | Character format.                      | "%c" % 34 == '"'
  %r     | Repr format (debugging format).        | "%r" % int == "
  %s     | String format.                         | "%s there" % 'hi' == 'hi there'
  %%     | A percent sign.                        | "%g%%" % 10.34 == '10.34%'
  - `%[(name)][flags][width][.precision]typecode`？？？？？？？？？？？？？？？？？？
    - `%.2f % (x)`: 保留两位小数
    - `"%(n)d %(x)s" % {"n":1, "x":"spam"}`:基于字典的字符串格式化。

- **字符串格式化调用方法**：花括号{}通过位置指出替换目标
```python
template = '{0}, {1} and {2}'
print template.format('spam', 'ham', 'eggs')  # by position

template = '{motto}, {pork} and {food}'
print template.format(motto='spam', pork='ham', food='eggs')  # by keyword

template = '{motto}, {0} and {food
print template.format('ham', motto='spam', food='eggs')  # by both

template = '{}, {} and {}'
print template.format('spam', 'ham', 'eggs')
```

- **添加格式化方法**？？？？？？？？？？？？？？？？？

- **同样分类的类型共享其操作**
  - 数字（整数、浮点数、二进制、分数等）
    - 支持假发和乘法等
  - 序列（字符串、列表、元组）
    - 支持索引、分片和合并等
  - 映射（字典）
    - 支持通过键的索引等

- **可变类型能在原处修改**
  - 不可变类型（数字、字符串、元组、不可变集合）
  - 可变类型（列表、字典、可变集合）

## 第8章 列表与字典

- **列表**
  - 任意对象的有序集合
  - 通过偏移读取
  - 可变长度、异构以及任意嵌套
  - 属于可变序列的分类
  - 对象引用数组

- 常用列表常量和操作

  Operation                         | Interpretation
  --------------------------------- | --------------------------------------------------------
  L = []                            | An empty list
  L = [123, 'abc', 1.23, {}]        | Four items: indexes 0..3
  L = ['Bob', 40.0, ['dev', 'mgr']] | Nested sublists
  L = list('spam')                  | List of an iterable's items,
  L = list(range(-4, 4))            |list of successive integers
  L[i]                              |Index
  L[i][j]                           |index of index
  L[i:j]                            |slice
  len(L)                            |length
  L1 + L2                           |Concatenate
  L* 3                              |repeat
  for x in L: print(x)              |Iteration
  3 in L                            |membership
  L.append(4)                       | Methods: growing
  L.extend([5,6,7])                 |
  L.insert(i, X)                    | Methods: searching
  L.index(X)                        |
  L.count(X)                        |
  L.sort()                          | Methods: sorting, reversing,
  L.reverse()                       | copying (3.3+), clearing (3.3+)
  L.copy()                          |
  L.clear()                         |
  L.pop(i)                          | Methods, statements: shrinking
  L.remove(X)                       |
  del L[i]                          |
  del L[i:j]                        |
  L[i:j] = []                       |
  L[i] = 3                          | Index assignment, slice assignment
  L[i:j] = [4,5,6]                  |
  L = [x**2 for x in range(5)]      | List comprehensions and maps
  list(map(ord, 'spam'))            |

- **sort和sorted区别**, **同reverse和reversed**
  - L.sort(cmp=None, key=None, reverse=False) -- stable sort *IN PLACE*; 是一种属性,只能排数字
  - sorted(iterable, cmp=None, key=None, reverse=False) --> new sorted list
  ```python
  >>> L = ['abc', 'ABD', 'aBe']
  >>> L.sort()                            # Sort with mixed case
  >>> L
  ['ABD', 'aBe', 'abc']
  >>> L = ['abc', 'ABD', 'aBe']
  >>> L.sort(key=str.lower)               # Normalize to lowercase
  >>> L
  ['abc', 'ABD', 'aBe']
  >>>
  >>> L = ['abc', 'ABD', 'aBe']
  >>> L.sort(key=str.lower, reverse=True) # Change sort order
  >>> L
  ['aBe', 'ABD', 'abc']
  ```

- 其他常见列表操作
  - 由于列表是可变的，可以用`del`语句在原来处删除某项或某片段
    ```python
    >>> L = ['spam', 'eggs', 'ham', 'toast']
    >>> del L[0]                # Delete one item
    >>> L
    ['eggs', 'ham', 'toast']    # Delete an entire section
    >>> del L[1:]               # Same as L[1:] = []
    >>> L
    ['eggs']
    ```

- **字典**
  - 通过键而不是偏移量来读取
  - 任意对象的无序集合
  - 可变长、异构、任意嵌套
  - 属于可变映射类型
  - 对象引用表（散列表）

- 常见字典常亮和操作
  Operation                                | Interpretation
  ---------------------------------------- | ------------------------------------------------------------
  D = {}                                   | Empty dictionary
  D = {'name': 'Bob', 'age': 40}           | Two-item dictionary
  E = {'cto': {'name': 'Bob', 'age': 40}}  | Nesting
  D = dict(name='Bob', age=40)             | Alternative construction techniques:
  D = dict([('name', 'Bob'), ('age', 40)]) | keywords, key/value pairs, zipped key/value pairs, key lists
  D = dict(zip(keyslist, valueslist))      |
  D = dict.fromkeys(['name', 'age'])       |
  D['name']                                | Indexing by key
  E['cto']['age']                          |
  'age' in D                               | Membership: key present test
  D.keys()                                 | Methods: all keys,
  D.values()                               | all values,
  D.items()                                | all key+value tuples,
  D.copy()                                 | copy (top-level),
  D.clear()                                | clear (remove all items),
  D.update(D2)                             | merge by keys,
  D.get(key, default?)                     | fetch by key, if absent default (or None),
  D.pop(key, default?)                     | remove by key, if absent default (or error)
  D.setdefault(key, default?)              | fetch by key, if absent set default (or None),
  D.popitem()                              | remove/return any (key, value) pair; etc.
  len(D)                                   | Length: number of stored entries
  D[key] = 42                              | Adding/changing keys
  del D[key]                               | Deleting entries by key
  list(D.keys())                           | Dictionary views (Python 3.X)
  D1.keys() & D2.keys()                    |
  D.viewkeys(), D.viewvalues()             | Dictionary views (Python 2.7)
  D = {x: x*2 for x in range(10)}          | Dictionary comprehensions (Python 3.X, 2.7)

- **其他字典方法**
  ```python
  >>> len(D)
  3
  >>> 'ham' in D
  True
  >>> list(D.keys()) ['eggs', 'spam', 'ham']

  >>> D = {'spam': 2, 'ham': 1, 'eggs': 3}
  >>> list(D.values())
  [3, 2, 1]
  >>> list(D.items())
  [('eggs', 3), ('spam', 2), ('ham', 1)]

  >>> D.get('spam')
  2
  >>> print(D.get('toast')) None
  >>> D.get('toast', 88)
  88

  >>> D
  {'eggs': 3, 'spam': 2, 'ham': 1}
  >>> D2 = {'toast':4, 'muffin':5} # Lots of delicious scrambled order here >>> D.update(D2)
  >>> D
  {'eggs': 3, 'muffin': 5, 'toast': 4, 'spam': 2, 'ham': 1}

  # pop a dictionary by key
  >>> D
  {'eggs': 3, 'muffin': 5, 'toast': 4, 'spam': 2, 'ham': 1} >>> D.pop('muffin')
  5
  >>> D.pop('toast')
  4
  >>> D
  {'eggs': 3, 'spam': 2, 'ham': 1}

  # pop a list by position
  >>> L = ['aa', 'bb', 'cc', 'dd'] >>> L.pop()
  'dd'
  >>> L
  ['aa', 'bb', 'cc'] >>> L.pop(1)
  'bb'
  >>> L
  ['aa', 'cc']
  ```

- **字典用法注意事项**
  - 序列运算无效
  - 对新索引赋值会添加项
  - 键不一定总是字符串

- **创建字典的其他方法**
  ```python
  {'name': 'Bob', 'age': 40}        # Traditional literal expression

  D = {}                            # Assign by keys dynamically
  D['name'] = 'Bob' D['age'] = 40

  dict(name='Bob', age=40)          # dict keyword argument form
  dict([('name', 'Bob'), ('age', 40)])   # dict key/value tuples form

  dict.fromkeys(['a', 'b'], 0)  # 简单传入一个键列表以及所有键的初始值
  ```




## 第9章 元组、文件及其他

# 第三部分 语句和语法
## 第10章 python语句简介

## 第11章 赋值、表达式和打印

## 第12章 if测试和语法规则

## 第13章 while和for循环

## 第14章 迭代器和解析， 第一部分

## 文档

# 第四部分 函数
## 第16章 函数基础

## 第17章 作用域

## 第18章 参数

## 第19章 函数的高级话题

## 第20章 迭代和解析， 第二部分

# 第五部分 模块
## 第21章 模块：宏伟蓝图

## 第22章 模块代码编写基础

## 第23章 模块包

## 第24章 高级模块话题

# 第六部分 类和OOP
## 第25章 OOP：宏伟蓝图

## 第26章 类代码编写基础

## 第27章 更多实例

## 第28章 类代码编写细节

## 第29章 运算符重载

## 第30章 类的设计

## 第31章 类的高级主题

# 第七部分
## 第32章 异常基础

## 第33章 异常编码细节

## 第34章 异常对象

## 第35章 异常的设计







- [String Formatting Operations](https://docs.python.org/2.4/lib/typesseq-strings.html)


### Types

string，number，list，tuple，dictionary，module，class，def，

### Others

- str.capitalize() 首字母大写
- str.replace(old , new , 次数)
- str.strip(字符) 方法用于移除字符串头尾指定的字符（默认为空格）。
- str.count(sub, start= 0,end=len(string)) 数sub出现的次数
- random.randint(a,b) 每次执行后都返回不同的数字（a 到 b）
- random

  1. random() 返回0<=n<1之间的随机实数n；
  2. choice(seq) 从序列seq中返回随机的元素；
  3. getrandbits(n) 以长整型形式返回n个随机位；
  4. shuffle(seq[, random]) 原地指定seq序列；
  5. sample(seq, n) 从序列seq中选择n个随机且独立的元素；

- dict.keys() 返回所有键

### 操作

```
 import myfile ，后面调用要myfile.title
 from myfile import title， 后面调用直接title
```

- dir(xxx),获取模块内部可用的变量名的列表

### 抽象

用 _和 *_ 收集参数

- 概念

  - 对象
  - 实例：面向对象最重要的概念就是类（Class）和实例（Instance），必须牢记类是抽象的模板，比如Student类，而实例是根据类创建出来的一个个具体的"对象"，每个对象都拥有相同的方法，但各自的数据可能不同。
  - 属性
  - 类
  - 方法（函数）
  - 模块

### Escape Sequences

```
Escape | What it does.
```

-----|----- \ | Backslash () \' | Single-quote (') \" | Double-quote (") \a| ASCII bell (BEL) \b |ASCII backspace (BS) \f |ASCII formfeed (FF) \n |ASCII linefeed (LF) \N|{name} Character named name in the Unicode database (Unicode only) \r| Carriage Return (CR) \t |Horizontal Tab (TAB) \u|xxxx Character with 16-bit hex value xxxx (u'' string only) \U|xxxxxxxx Character with 32-bit hex value xxxxxxxx (u'' string only) \v| ASCII vertical tab (VT) \ooo| Character with octal value ooo \xhh| Character with hex value hh

### Reading and Writing

```
* close -- Closes the file. Like File->Save.. in your editor.
* read -- Reads the contents of the file. You can assign the result to a variable.
* readline -- Reads just one line of a text file.
* truncate -- Empties the file. Watch out if you care about the file.
* write('stuff') -- Writes "stuff" to the file.
```

### Keywords

Keyword  | Description                                        | Example
-------- | -------------------------------------------------- | --------------------------------------
and      | Logical and.                                       | True and False == False
as       | Part of the with-as statement.                     | with X as Y: pass
assert   | Assert (ensure) that something is true.            | assert False, "Error!"
break    | Stop this loop right now.                          | while True: break
class    | Define a class.                                    | class Person(object)
continue | Don't process more of the loop, do it again.       | while True: continue
def      | Define a function.                                 | def X(): pass
del      | Delete from dictionary.                            | del X[Y]
elif     | Else if condition.                                 | if: X; elif: Y; else: J
else     | Else condition.                                    | if: X; elif: Y; else: J
except   | If an exception happens, do this.                  | except ValueError, e: print e
exec     | Run a string as Python.                            | exec 'print "hello"'
finally  | Exceptions or not, finally do this no matter what. | finally: pass
for      | Loop over a collection of things.                  | for X in Y: pass
from     | Importing specific parts of a module.              | from x import Y
global   | Declare that you want a global variable.           | global X
if       | If condition.                                      | if: X; elif: Y; else: J
import   | Import a module into this one to use.              | import os
in       | Part of for-loops. Also a test of X in Y.          | for X in Y: pass also 1 in [1] == True
is       | Like == to test equality.                          | 1 is 1 == True
lambda   | Create a short anonymous function.                 | s = lambda y: y ** y; s(3)
not      | Logical not.                                       | not True == False
or       | Logical or.                                        | True or False == True
pass     | This block is empty.                               | def empty(): pass
print    | Print this string.                                 | print 'this string'
raise    | Raise an exception when things go wrong.           | raise ValueError("No")
return   | Exit the function with a return value.             | def X(): return Y
try      | Try this block, and if exception, go to except.    | try: pass
while    | While loop.                                        | while X: pass
with     | With an expression as a variable do.               | with X as Y: pass
yield    | Pause here and return to caller.                   | def X(): yield Y; X().next()

### Data Types

Type    | Description                             | Example
------- | --------------------------------------- | -----------------------
True    | True boolean value.                     | True or False == True
False   | False boolean value.                    | False and True == False
None    | Represents "nothing" or "no value".     | x = None
strings | Stores textual information. x = "hello"
numbers | Stores integers.                        | i = 100
floats  | Stores decimals.                        | i = 10.389
lists   | Stores a list of things.                | j = [1,2,3,4]
dicts   | Stores a key=value mapping of things.   | e = {'x': 1, 'y': 2}



### Operators

Operator | Description                   | Example
-------- | ----------------------------- | -------------------------
+        | Addition                      | 2 + 4 == 6
-        | Subtraction                   | 2 - 4 == -2
*        | Multiplication                | 2 * 4 == 8
**       | Power of                      | 2 ** 4 == 16
/        | Division                      | 2 / 4.0 == 0.5
//       | Floor division                | 2 // 4.0 == 0.0
%        | String interpolate or modulus | 2 % 4 == 2
<        | Less than                     | 4 < 4 == False
>        | Greater than                  | 4 > 4 == False
<=       | Less than equal               | 4 <= 4 == True
>=       | Greater than equal            | 4 >= 4 == True
==       | Equal                         | 4 == 5 == False
!=       | Not equal                     | 4 != 5 == True
<>       | Not equal                     | 4 <> 5 == True
( )      | Parenthesis                   | len('hi') == 2
[ ]      | List brackets                 | [1,3,4]
{ }      | Dict curly braces             | {'x': 5, 'y': 10}
@        | At (decorators)               | @classmethod
,        | Comma                         | range(0, 10)
:        | Colon                         | def X():
.        | Dot                           | self.x = 10
=        | Assign equal                  | x = 10
;        | semi-colon                    | print "hi"; print "there"
+=       | Add and assign                | x = 1; x += 2
-=       | Subtract and assign           | x = 1; x -= 2
*=       | Multiply and assign           | x = 1; x *= 2
/=       | Divide and assign             | x = 1; x /= 2
//=      | Floor divide and assign       | x = 1; x //= 2
%=       | Modulus assign                | x = 1; x %= 2
**=      | Power assign                  | x = 1; x **= 2
