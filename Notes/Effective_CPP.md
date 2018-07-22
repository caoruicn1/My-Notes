<!-- vim-markdown-toc GitLab -->

*   [Effective C++](#effective-c)
    *   [一、让自己习惯 C++](#一让自己习惯-c)
        *   [1. 视 C++为一个语言联邦](#1-视-c为一个语言联邦)
        *   [2. 尽量以 const, enum, inline 替换#define](#2-尽量以-const-enum-inline-替换define)
        *   [3. 尽可能使用 const](#3-尽可能使用-const)
        *   [4. 确定对象被使用前已被初始化](#4-确定对象被使用前已被初始化)
    *   [二、构造、西沟、赋值运算](#二构造西沟赋值运算)
        *   [5. 了解 C++默默编写并调用哪些函数](#5-了解-c默默编写并调用哪些函数)
        *   [6. 若不想使用编译器自动生成的函数, 就该明确拒绝。](#6-若不想使用编译器自动生成的函数-就该明确拒绝)
        *   [7. 为多态基类声明 virtual 析构函数](#7-为多态基类声明-virtual-析构函数)
        *   [8. 别让异常逃离析构函数](#8-别让异常逃离析构函数)
        *   [9. 绝不在构造和析构过程中调用 virtual 函数](#9-绝不在构造和析构过程中调用-virtual-函数)
        *   [10. 令 operator=返回一个 reference to \*this](#10-令-operator返回一个-reference-to-this)
        *   [11. 在 operator=中处理"自我赋值"](#11-在-operator中处理自我赋值)
        *   [12. 复制对象时勿忘其每一个成分](#12-复制对象时勿忘其每一个成分)
        *   [13. 资源管理](#13-资源管理)
        *   [14. 在资源管理类中小心 copying 行为](#14-在资源管理类中小心-copying-行为)
        *   [15. 在资源管理类中提供对原始资源的访问?????](#15-在资源管理类中提供对原始资源的访问)
        *   [16. 成对使用 new 和 delete 时要采取相同的形式。](#16-成对使用-new-和-delete-时要采取相同的形式)
        *   [17. 以独立语句将 newed 对象置入智能指针](#17-以独立语句将-newed-对象置入智能指针)
    *   [四、设计与声明](#四设计与声明)
        *   [18. 让接口容易被正确使用, 不易被误用](#18-让接口容易被正确使用-不易被误用)
        *   [19. 设计 class 犹如设计 type](#19-设计-class-犹如设计-type)
        *   [20. 宁以 pass-by-reference-to-const 替换 pass-by-value](#20-宁以-pass-by-reference-to-const-替换-pass-by-value)
        *   [21. 必须返回对象时, 别妄想返回其 reference](#21-必须返回对象时-别妄想返回其-reference)
        *   [22. 将成员变量声明为 private](#22-将成员变量声明为-private)
        *   [23. 宁以 non-member、non-friend 替换 member 函数](#23-宁以-non-membernon-friend-替换-member-函数)
        *   [24. 若所有参数皆需类型转换, 请为此采用 non-member 函数?????](#24-若所有参数皆需类型转换-请为此采用-non-member-函数)
        *   [25. 考虑写出一个不抛出异常的 swap 函数?????](#25-考虑写出一个不抛出异常的-swap-函数)
    *   [五、实现](#五实现)
        *   [26. 尽可能延后变量定义式的出现时间](#26-尽可能延后变量定义式的出现时间)
        *   [27. 尽量少做转型动作](#27-尽量少做转型动作)
        *   [28. 避免返回 handles 指向对象内部成分](#28-避免返回-handles-指向对象内部成分)
        *   [29. 为“异常安全”而努力是值的](#29-为异常安全而努力是值的)
        *   [30. 透彻了解 inlining 的里里外外](#30-透彻了解-inlining-的里里外外)
        *   [31. 将文件间的编译依存关系降至最低。](#31-将文件间的编译依存关系降至最低)
    *   [六、继承与面向对象设计](#六继承与面向对象设计)
        *   [32. 确定你的 public 继承塑模出 ls-a 关系](#32-确定你的-public-继承塑模出-ls-a-关系)
        *   [33. 避免遮掩继承而来的名称](#33-避免遮掩继承而来的名称)
        *   [34. 区分接口继承和实现继承](#34-区分接口继承和实现继承)
        *   [35. 考虑 virtual 函数以外其他选择](#35-考虑-virtual-函数以外其他选择)
        *   [36. 绝不重新定义继承而来的 non-virtual 函数](#36-绝不重新定义继承而来的-non-virtual-函数)
        *   [37. 绝不重新定义继承而来的缺省参数值](#37-绝不重新定义继承而来的缺省参数值)
        *   [38. 通过复合塑模出 has-a 或“根据某物实现出”](#38-通过复合塑模出-has-a-或根据某物实现出)
        *   [39. 明确而审慎地使用 private 继承](#39-明确而审慎地使用-private-继承)
        *   [40. 明确而审慎地使用多重继承](#40-明确而审慎地使用多重继承)
    *   [七、模型与泛型编程](#七模型与泛型编程)
        *   [41. 了解隐式接口和编译期多态](#41-了解隐式接口和编译期多态)
        *   [42. 了解 typename 的双重意义](#42-了解-typename-的双重意义)
        *   [43. 学习处理模板化基类内的名称](#43-学习处理模板化基类内的名称)
        *   [44. 将与参数无关的代码抽离 templates](#44-将与参数无关的代码抽离-templates)
        *   [45. 运用成员函数模板接受所有兼容类型](#45-运用成员函数模板接受所有兼容类型)
        *   [46. 需要类型转换时请为模板定义非成员函数](#46-需要类型转换时请为模板定义非成员函数)
        *   [47. 请使用 traits classes 表现类型信息](#47-请使用-traits-classes-表现类型信息)
        *   [48. 认识 template 元编程](#48-认识-template-元编程)
        *   [八、定制 new 和 delete](#八定制-new-和-delete)
        *   [49. 了解 new-handler 的行为](#49-了解-new-handler-的行为)
        *   [50. 了解 new 和 delete 的合理替换时机](#50-了解-new-和-delete-的合理替换时机)
        *   [51. 编写 new 和 delete 时需固守常规](#51-编写-new-和-delete-时需固守常规)
        *   [52. 写了 placement new 也要写 placement delete](#52-写了-placement-new-也要写-placement-delete)
    *   [九、杂项讨论](#九杂项讨论)
        *   [53. 不要轻忽编译器的警告](#53-不要轻忽编译器的警告)
        *   [54. 让自己熟悉包括 TR1 在内的标准程序库](#54-让自己熟悉包括-tr1-在内的标准程序库)
        *   [55. 让自己熟悉 Boost](#55-让自己熟悉-boost)

<!-- vim-markdown-toc -->

# Effective C++

## 一、让自己习惯 C++

### 1. 视 C++为一个语言联邦

1.  C 语言。
2.  Object-Oriented C++。 包括 classes, 封装, 继承, 多态, virtual 函数等等。
3.  Template C++。即泛型编程(generic programming), 模板元编程(template
    metaprogramming, TMP)
4.  STL. STL 是 template 程序库, 包括容器、迭代器、算法和函数对象.

### 2. 尽量以 const, enum, inline 替换#define

*   对于单纯的常量, 最好以 const 对象或 enums 替换#defines
*   对于形似函数的宏(macros), 最好改用 inline 函数替换#defines
*   总之不要用#defines

### 3. 尽可能使用 const

*   能用 const 的尽量用 const, 包括任何作用域对象, 函数参数, 函数返回类型, 成员
    函数本体。
*   成员函数本体 const 表示函数体无法修改类内变量.
*   当 const 和 non-const 成员函数有邓家实现的时候, 用 non-const 调用 const 可以
    避免代码重复。

### 4. 确定对象被使用前已被初始化

*   为内置型对象进行手动初始化, 因为 C++不保证初始化它们。
*   构造函数最好使用成员初值列(member initialization list), 而不要在构造函数本体
    内使用赋值操作(assignment)。初值列顺序保持和声明顺序相同。
*   为了避免初始化次序问题, 应该用 local static 对象替代 non-local static 对象,
    不然容易引发错误。

## 二、构造、西沟、赋值运算

### 5. 了解 C++默默编写并调用哪些函数

*   编译器可以暗自为 class 创建 default 构造函数, copy 构造函数, copy assignment
    操作符和析构函数。
    *   test();
    *   ~test();
    *   test(const test&rhs);
    *   test &operator=(const test &rhs) { return \*this; };

### 6. 若不想使用编译器自动生成的函数, 就该明确拒绝。

*   可以将成员函数声明为 private 并且不予实现。

### 7. 为多态基类声明 virtual 析构函数

*   polymorphic(带多态性质的)base classes 应该声明一个 virtual 析构函数。如果
    class 带有任何 virtual 函数, 它就应该拥有一个 virtual 析构函数。避免删除子类
    的时候, 只调用了子类的析构函数而没有调用父类的析构函数。
*   如果 Class 不作为 base classes 使用, 或者不具有多态性, 那就不用声明 virtual
    析构函数。

### 8. 别让异常逃离析构函数

*   不要在析构函数中吐出异常。如果一个被析构函数调用的函数可能抛出异常, 析构函数
    应该捕捉任何异常, 然后吞下他们或结束程序。
*   将异常处理的逻辑封装在普通函数中, 且不要放在析构函数。

### 9. 绝不在构造和析构过程中调用 virtual 函数

*   在构造和析构期间不要调用 virtual 函数, 因为在调用 base class 的析构函数时,
    子类还未创建, 所以子类的覆盖函数不会被调用, 导致错误。

### 10. 令 operator=返回一个 reference to \*this

*   同标题。这是系统默认的。

### 11. 在 operator=中处理"自我赋值"

*   确保当对象自我赋值时 opterator=有良好行为。包括来源对象和目标对象的地址 ,
    copy 和 swap 等。
*   确定函数操作对象时, 是操作引用还是复制一个新副本。

### 12. 复制对象时勿忘其每一个成分

*   如果自定义 Copying 函数, 那 copy 函数和 copy assignment 函数应该确保复制对象
    内的所有成员变量以及所有 base class 成分。
*   不要尝试用用 copy 函数调用 copy assignment 或者反过来。对于代码重复部分可以
    用另一个函数封装之后给予调用。

### 13. 资源管理

*   为防止资源泄露, 请使用 RAII 对象。它们在构造函数中获取资源, 然后在析构函数中
    释放资源。
    *   RAII, 也称为“资源获取就是初始化”
    *   即利用管理对象进行资源管理, new 之后, 记得在析构函数中 delete
*   常用的 RAII classes 分别是 shared_ptr 和 auto_ptr, 指针销毁时会自动释放对象
    。
    *   比较常用 shared_ptr, 采用引用计数。
    *   auto_ptr 进行复制动作会指向 null 引发错误。

### 14. 在资源管理类中小心 copying 行为

*   要点
    *   禁止复制(私有 copy 函数)
    *   对底层资源祭出“引用计数法”(reference-count)
    *   复制底层资源
    *   转移底层资源的拥有权。
*   复制 RAII 对象必须一并复制它所管理的资源。
*   普遍而常见的 RAII class copying 行为是:抑制 copying、施行引用计数法。

### 15. 在资源管理类中提供对原始资源的访问?????

*   APIs 旺旺要求访问原始资源, 所以每一个 RAII class 应该提供一个“取得原始资源”
    的办法。
*   对原始资源的访问可能经由显示转换或隐式转换。一般而言显式转换比较安全, 但隐式
    转换对客户比较方便。

### 16. 成对使用 new 和 delete 时要采取相同的形式。

*   如果在 new 表达式中使用[], 必须在对应的 delete 中也使用[], 不然会引发错误。
    *   std::string\* hehe = new std::string[100];
    *   delete hehe[];
    *   std::string\* haha = new std::string;
    *   delete haha;

### 17. 以独立语句将 newed 对象置入智能指针

*   要单独在一条语句中进行智能指针的 new, 不能在参数中。因为这样可能当运行顺序不
    同, 且抛出异常时, new 出来的对象没有存入智能指针中, 从而导致资源泄露。

## 四、设计与声明

### 18. 让接口容易被正确使用, 不易被误用

*   好的接口容易被正确使用, 不容易被误用。
*   保持接口的一致性, 与内置类型行为兼容。
*   “阻止误用”的办法包括建立新类型、限制类型上的操作, 束缚对象值, 以及小厨客户的
    资源管理责任。
*   std::shared_ptr 支持定制型删除器(custom deleter)。这可防范 DLL 问题, 可被用
    来自动解除互斥锁(mutexes)等等.???????

### 19. 设计 class 犹如设计 type

*   新 type 的对象应该如何被创建和销毁？
*   对象的初始化和对象的赋值该有什么样的差别？
*   新 type 的对象如果被 passed by value(以值传递), 意味着什么？
*   什么是新 type 的“合法值”？
*   你的新 type 需要配合某个继承图系(inheritance graph)吗？
*   你的新 type 需要什么样的转换？
*   什么样的操作符和函数对此新 type 而言是合理的？
*   什么样的标准函数应该驳回？
*   谁该取用新 type 的成员？
*   什么是新 type 的“未声明接口”(undeclared interface)？
*   你的新 type 有多么一般化？
*   你真的需要一个新 type 吗？

### 20. 宁以 pass-by-reference-to-const 替换 pass-by-value

*   尽量以 pass-by-reference-to-const 替换 pass-by-value. 前者通常比较高效, 可以
    避免切割问题, 比如传递子类, 但类型表示是基类, 若传值会导致切割。
*   对于内置类型, STL 的迭代器和函数对象, 还是 pass-by-value 比较高效。

### 21. 必须返回对象时, 别妄想返回其 reference

*   绝不要返回 pointer 或 reference 指向一个 local stack 对象, 或返回 reference
    指向一个 heap-allocated 对象, 或返回 pointer 或 reference 指向一个 local
    static 对象而可能同时需要多个这样的对象。

### 22. 将成员变量声明为 private

*   切记将成员变量声明为 private。这可赋予客户访问数据的一致性、可细微划分访问控
    制、允诺约束条件获得保证, 并提供 class 作者以充分的实现弹性。
*   protected 并不比 public 更具封装性。

### 23. 宁以 non-member、non-friend 替换 member 函数

*   宁可拿 non-member non-friend 函数替换 member 函数。这样做可以增加封装性、包
    裹弹性(packaging flexibility)和机能扩展性。

### 24. 若所有参数皆需类型转换, 请为此采用 non-member 函数?????

*   如果你需要为某个函数的所有参数(包括被 this 指针所指的那个隐喻参数)进行类型转
    换, 那么这个函数必须是个 non-member。

### 25. 考虑写出一个不抛出异常的 swap 函数?????

*   当 std::swap 对你的类型效率不高时, 提供一个 swap 成员函数, 并确定这个函数不
    抛出异常。
*   如果你提供一个 member swap, 也该提供一个 non-member swap 用来调用前者。对于
    classes(而非 templates), 也请特化 std::swap。
*   调用 swap 时应针对 std::swap 使用 using 声明式, 然后调用 swa 并且不带任何“命
    名空间资格修饰”, 这样系统会自动判断和选择正确的函数。
*   为“用户定义类型”进行 std templates 全特化是好的, 但前晚不要尝试在 std 内加入
    某些对 std 而言全新的东西。

## 五、实现

### 26. 尽可能延后变量定义式的出现时间

*   尽可能延后变量定义式的出现, 甚至尝试延后这份定义直到能够直接作为函数的初值,
    避免构造和析构成本。这样做可增加程序的清晰度并改善程序效率。

### 27. 尽量少做转型动作

*   C++转型的四种方式
    1.  const_cast 通常被用来将对象的常量性转除。
    2.  dynamic_cast 主要用来实行“安全向下转型”, 成本非常高。
    3.  reinterpret_cast 执行低级转型, 取决于服务器, 极少用。
    4.  static_cast 用来强迫隐式转换。
*   尽量避免转型, 若必要, 试着隐藏于某个函数, 而不是直接转型后放入代码中运行。

### 28. 避免返回 handles 指向对象内部成分

*   避免返回 handlers(包括 references、指针、迭代器)指向对象内部。遵守这个条款可
    增加封装性, 避免当对象运行结束后被销毁, 导致 handlers 被架空的风险。

### 29. 为“异常安全”而努力是值的

*   “异常安全”的两个条件
    *   不泄露任何资源
    *   不允许数据败坏
*   异常安全函数(Exception-safe functions)提供以下三个保证之一
    1.  基本承诺: 异常抛出时, 程序内没有对象因此被破坏, 前后一致。
    2.  强烈保证: 异常被抛出时, 程序状态不变。
    3.  不抛掷(nothrow)保证:承诺绝不抛出异常。

### 30. 透彻了解 inlining 的里里外外

*   inline 函数无法随着程序库的升级而升级, 一旦改变, 全部都要重新编译。
*   将大多数 inlining 限制在小型、被频繁调用的函数身上。这可使日后的调试过程和二
    进制升级（binary upgradability）更容易, 也更使潜在的代码膨胀问题最小化。使程
    序的速度提升机会最大化。
*   不要只因为 function templates 出现在头文件, 就将它声明为 inline。

### 31. 将文件间的编译依存关系降至最低。

*   如果使用 object references 或 object pointers 可以完成任务, 就不要使用
    objects。
*   如果能够, 尽量以 class 声明式替换 class 定义式。
*   为声明式和定义式提供不同的头文件。

## 六、继承与面向对象设计

### 32. 确定你的 public 继承塑模出 ls-a 关系

*   “public 继承”意味着 is-a。适用于 base classes 身上的每一件事情一定也适用于
    derived classes 身上, 因为每一个 derived class 对象也都是一个 base class 对
    象。

### 33. 避免遮掩继承而来的名称

*   derived classes 内的名称会覆盖 base classes 内的名称。在 public 继承下从来没
    有人希望如此。
*   为了可以再 local 用 using 声明式或者转交函数重新找回 base 的名称。

### 34. 区分接口继承和实现继承

*   接口继承和实现继承不同。在 public 继承之下, derived classes 总是继承 base
    class 的接口。
*   pure virtual 函数只具体指定接口继承。
    *   即 声明 virtual=0, 然后子类必须自己实现。
*   impure virtual 函数具体指定接口继承和缺省实现继承。
    *   即 只声明 virtual, 同时基类又进行实现。子类继承后必须自己实现, 然后可以
        选择是否调用基类的缺省实现。
*   non-virtual 函数指定接口继承以及强制性实现继承。
    *   即没有 virtual, 比较危险。会导致指向子类的基类指针只能调用基类成员。

### 35. 考虑 virtual 函数以外其他选择

*   Non-virtual Interface(NVI),Templete Method 设计模式。public 函数调用 virtual
    的 private 函数, 这样子类只需要覆写 private 函数, 调用 public 函数就可以对应
    调用子类的函数。可以应用于在调用函数前后写一些缺省的逻辑。
*   通过返回调用其他函数的函数实现动态计算。
*   virtual 的替代方案
    1.  使用 Non-virtual interface（NVI）手法。它以 public non-virtual 成员函数
        包裹较低访问性（private 或 protected）的 virtual 函数。
    2.  将 virtual 函数替换为“函数指针成员变量”, 这是 Strategy 设计模式的一种分
        解表现形式。
    3.  以 tr1::function 成员变量替换 virtual 函数, 因而允许使用任何可调用物
        （callable entity）搭配一个兼容于需求的签名式。这也是 Strategy 设计模式
        的某种形式。 4. 将继承体系内的 virtual 函数替换为另一个继承体系内的
        virtual 函数, 这是 Strategy 设计模式的传统实现手法。

### 36. 绝不重新定义继承而来的 non-virtual 函数

*   指向子类的基类指针, 调用的函数取决于指针类型而不是对象类型。所以不要重新定义
    non-virtual 函数, 否则容易出错。

### 37. 绝不重新定义继承而来的缺省参数值

*   绝对不要重新定义一个继承而来的缺省参数值, 因为缺省参数值都是静态绑定, 而
    virtual 函数--你唯一应该覆写的东西却是动态绑定。所以若覆写 virtual 函数时,
    绝对不要重新设置缺省参数。

### 38. 通过复合塑模出 has-a 或“根据某物实现出”

*   即在内部维护一个属性，表现出 has-a

### 39. 明确而审慎地使用 private 继承

*   如果用 private 继承，那编译器不会自动将指子类转换为基类。
*   private 继承意味只有实现部分被继承，接口部分应略去，表示
    is-implemented-in-terms-of(根据某物实现出)

### 40. 明确而审慎地使用多重继承

*   多重继承比单一继承复杂。它可能导致新的歧义性，以及对 virtual 继承的需要。
*   virtual 继承会增加大小、速度、初始化（及赋值）复杂度等等成本。如果 virtual
    base classes 不带任何数据，将是最具实用价值的情况。
*   多重继承的确有正当用途。其中一个情节涉及“public 继承某个 Interface class”和
    “private 继承某个协助实现的 class”的两相结合。

## 七、模型与泛型编程

### 41. 了解隐式接口和编译期多态

### 42. 了解 typename 的双重意义

### 43. 学习处理模板化基类内的名称

### 44. 将与参数无关的代码抽离 templates

### 45. 运用成员函数模板接受所有兼容类型

### 46. 需要类型转换时请为模板定义非成员函数

### 47. 请使用 traits classes 表现类型信息

### 48. 认识 template 元编程

### 八、定制 new 和 delete

### 49. 了解 new-handler 的行为

### 50. 了解 new 和 delete 的合理替换时机

### 51. 编写 new 和 delete 时需固守常规

### 52. 写了 placement new 也要写 placement delete

## 九、杂项讨论

### 53. 不要轻忽编译器的警告

### 54. 让自己熟悉包括 TR1 在内的标准程序库

### 55. 让自己熟悉 Boost
