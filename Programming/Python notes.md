# Python学习手册

## 第3章 如何运行程序

- UNIX env查找技巧：
  - 可以在文件特定的第一行注释中这样写：`#!/usr/bin/env python`，当这样编写代码的时候，env程序可以通过系统的搜索路径的设置定位python解释器。

- `from imp import reload()`:在同一次会话中再次运行文件。（python3.0，若2.6为内置）。reload是不可传递的，重载一个模块的话只会重载该模块，而不能够重载该模块所导入的任何模块，因此，有时候必须reload多个文件。
- `.`：点号表示`object.attribute`的语法，可以从任何的object中取出任意的属性。
- `dir()`内置dir函数可以用来获取模块内部可用的**变量名**列表。
- `exec(open('module.py').read())`：从交互提示启动文件而不必导入以及随后的重载。

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
      ```{python id:"izo84r9m"}
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
      ```{python  id:"izo85wgn"}
      D = {'a':1, 'c':3, 'b':2}
      for key in sorted(D):
        print(key, '=>', D[key])
      ```
  - `in`关系表达式允许我们查询字典中一个键是否存在。`'f' in D ; False`
  - 其他创建字典并避免获取不存在的字典键： get方法、Python 2.X的has_key方法、 try语句， 以及if／else表达式
  - `map(function, sequence[, sequence, ...])`--`map(lambda x: x**2, [1,2,3,4,5])`
  - `Filter(function or None, sequence)`会对sequence每个元素调用function，返回结果为True的元素

- **元组**
- 元组是序列，但是他具有*不可变性*，和字符串类似。
- 支持任意类型、任意嵌套和常见的序列操作。
  - `len()` `T[0]`
- 在Python 3.0中两个专有的方法
  ```{python id:"izo8xvrc"}
  T = (1,2,3,4)
  print T.index(4)  # Tuple methods: 4 appears at offset 3
  print T.count(4)  # 4 appears once
  ```

- **文件**
  ```{python}
  f = open('data.txt', 'w')  # Make a new file in output mode
  f.write('Hello\n')  # Write strings of bytes to it
  f.write('world\n')  # Returns numbers of bytes written in Python 3.0
  f.read()  # Read entire file into a string
  f.readline()  # Read one line every time
  f.close()  # Close to flush output buffers to disk
  ```
- **其他核心类型**
  - `set()`函数创建集合
    ```{python id:"izotxqz0"}
    X = set('spam')
    Y = {'h', 'a', 'm'}
    print X, Y    
    print X & Y  # Intersection
    print X | Y  # Union
    print X - Y  # Difference
    print {x ** 2 for x in [1, 2, 3, 4]}  # Set comprehensions in 3.0
    ```

  - 小数
    ```{python id:"izougie0"}
    import decimal
    d = decimal.Decimal('3.141')
    print d + 1  # Decimal(4.141)
    ```
  - 分数
    ```{python id:"izoueqld"}
    from fractions import Fraction
    f = Fraction(2, 3)
    print f + 1  # Fraction(5, 3)
    print f + Fraction(1, 2)  # Fraction(7, 6)
    ```

  - 布尔值
    ```{python id:"izoueqlg"}
    print 1 > 2, 1 < 2  # (False, True)
    print bool('spam')
    ```
- 查看类型方法
    ```{python}
    L = [1]
    if type(L) == type ([]):
        print 'yes'

    if type(L) == list:
        print 'yes'

    if isinstance(L, list):    
        print 'yes'
    ```



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

### String Formats

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

<type 'int'="">"</type>

 %s | String format. | "%s there" % 'hi' == 'hi there' %% | A percent sign. | "%g%%" % 10.34 == '10.34%'

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
