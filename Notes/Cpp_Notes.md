# C++ 坑爹笔记

<!-- vim-markdown-toc GitLab -->

*   [函数(Function)](#函数function)
*   [指针和引用(Pointer and Reference)](#指针和引用pointer-and-reference)
*   [内存管理(Heap memory)](#内存管理heap-memory)
*   [其他](#其他)
*   [习惯](#习惯)
*   [头文件](#头文件)
*   [容器](#容器)
*   [析构函数和构造函数 constructor and deconstructor](#析构函数和构造函数-constructor-and-deconstructor)
*   [类 class](#类-class)
*   [关键字](#关键字)
*   [static 局部变量和普通局部变量有什么区别 ？](#static-局部变量和普通局部变量有什么区别-)
*   [多态和继承](#多态和继承)
    *   [什么时候用指针形参？什么时候用引用形参？](#什么时候用指针形参什么时候用引用形参)
    *   [什么时候用 constexpr?](#什么时候用-constexpr)
    *   [C++中变量有什么区别？](#c中变量有什么区别)
    *   [什么是指针 pointer？](#什么是指针-pointer)

<!-- vim-markdown-toc -->

## 函数(Function)

*   函数参数采用 reference 声明, 即传址, 才能与实际对象产生关联。

```cpp
void swap(int val1, int val2){ }      // 全部都是新对象, 不对传入值产生影响
void swap(int *val1, int * val2){ }  // 传入的是指针, 注意检查是否非0.
void swap(int &val1, int & val2){ }  // 传入引用, 主要用来传递class objects
void swap(int &val1, int&val2=1)   // 对值进行初始化
inline void swap(int &val1, int&val2)   // 声明为inline, 告诉编译器改善效率。

int num(){
    int a=1;      // 返回值不能用指针或者引用, 因为函数执行结束后,
    return a;     // 对象就不复存在。只能以传值方式返回, 表示复制。
}

int num() const {
    static int a = 1;
    return a; // 除非用局部静态对象, 就可以返回地址
}
```

```cpp
// 重载函数, 即写多个一样的函数, 但是参数不同。系统会自动判断使用哪个。
void display_message( char val )
void display_message( int val )
void display_message( double val )

// 使用模板
template <typename elemType>
void display_message(const string &msg, const elemType &vec) {
    cout << msg << endl;
    cout << vec << endl;
}    // 之后再用其他type都可以哦哦哦! 同时模板也支持函数重载
```

## 指针和引用(Pointer and Reference)

```cpp
// *表示取值运算符, &表示取址运算符
int ival = 1024;
int *pi = &ival;     // 指针
int &rval = ival;    // 引用

// 当数组传递给函数时, 或者从函数中被返回, 只有第一个元素的地址被返回！
int min( int array ){};   // 这是错误的!
int min( int *array ){};   // 正确！用指针作为参数传递
// 假设parray为数组指针, parray[ 2 ] 等价 *(parray+2), 可以以此取下一个元素
```

*   Pointer 和 Reference 的区别
    1.  指针要用前要检查是不是非 0(删除指针的话就不用, 因为编译器会自动检查), 因
        为有可能不指向某个对象。而 reference 不用。
    2.  若为 class, Pointer 取属性用<-, 引用正常使用.运算符。

## 内存管理(Heap memory)

```cpp
// 用New 创建新对象, 指向指针。不会自动被回收。可用delete删除。
int *pi = new int;
int *pi = new int(1024);  // 可以进行初始化
delete pi;           // 释放pi所指的对象。
int *pi = new int[24];    // 创建数组类型, 但是数组无法初始化
delete[] pi;           // 数组要这样删除, 释放pi所指的对象。
```

## 其他

```cpp
// 枚举成员类型
enum Order {
    Market, Limit, Stop // 相当于赋值 Market=0, Limit=1, Stop=2
};
```

## 习惯

```cpp
// 参数前加const是好习惯, 避免进行修改。
void display(const vector<int> &vec){ }
```

## 头文件

*   函数.h 头文件用来维护一份函数声明。

```cpp
#include <NumSeq.h>
#include "NumSeq.h"    // 表示头文件与编程文件在同一目录
```

```cpp
// 在头文件维护函数声明
const int luffy(int caomao);
const int soro(int sandaoliu);
// 定量声明, 如果不加extern会被以为是定义
extern const int nami;
extern const int brook;
// inline函数定义必须放在头文件中
inline const int sanji(int jiao){};
```

## 容器

```cpp
#include <vector>
#include <list>
#include <deque>

// 生成新容器
list<int> ilist(666, -1);  // 产生大小为666的容器, 初始值为-1
vector<int> ivector(666, -1);
deque<int> ideque(666, -1);
// 另一种生成新容器方法
vector<int> ivector(ia, ia+8);  // ia为iterator, 即通过iterator创建
list<string> slist2(ilist);    // 复制容器

// 容器操作
ilist.empty();
ilist.size();
ilist.clear();
ilist.begin();
ilist.end();
ilist.insert();
ilist.erase();

ilist.push_back();
ilist.pop_back();
ilist.push_front(); // 只有list和deque才有
ilist.pop_front(); // 只有list和deque才有
ilist.front();  // 读取第一个值, 因为上面的pop操作不会反悔被删除的值
ilist.back();  // 读取最后一个值, 因为上面的pop操作不会反悔被删除的值
```

## 析构函数和构造函数 constructor and deconstructor

*   当进行类的复制时, 需要注意是否使用 new 来创造成员对象, 并创造相应的
    deconstructor, 防止复制时 deconstructor 将新对象的内容删除。

## 类 class

```cpp
class Stack{
    pubilic:
    Stack();        //constructor
    Stack(int gg);  //constructor 重载
    ~Stack();       // deconstructor
    int test;
    int value=1;
    int value_func() const;

}

int Stack::value_func() const { // 如果函数用const, 放在括号后面, 表示
    cout << value << endl; //这个member function不会更改class object 的内容
}

Stack::Stack() {
    test = 999;
};

Stack::Stack(int gg) {
    a = gg;
};

Stack::~Stack() {               // deconstructor
    cout << "I am deconstructor" << endl;
};
```

## 关键字

```cpp
mutable int a; // mutable用于加const之后, 也不会报错
```

## static 局部变量和普通局部变量有什么区别 ？

*   把局部变量改变为静态变量后是改变了它的存储方式即改变了它的生存期。把全局变量
    改变为静态变量后是改变了它的作用域, 限制了它的使用范围。

## 多态和继承

*   用 virtual 构建成员实现多态, 用于覆盖, 若不设置, 调用指向子类的基类指针时，
    即使写了函数, 还是只会调用基类的函数,造成错误！
*   销毁时, 基类和子类的 deconstructor 都会运行。先子后基。
*   被 protected 声明的成员都可以被派生类直接使用
*   继承模式
    *   public 继承: 私有成员不可见, 保护成员为保护, 公有成员为共有。
    *   protected 继承: 私有成员不可见, 其他成员都变成保护。
    *   private 继承: 私有成员不可见, 其他成员都变成私有。
*   基类的 deconstructor 应该设置为 virtual, 避免基类指针指向派生类, 销毁后只运
    行基类 deconstructor, 而不运行子类 deconstructor, 从而造成内存泄漏。
*   坑：如果基类函数使用了基类的成员，当子类调用基类函数时，即使覆盖了基类成员，
    调用的还是基类成员。所以应该尽量避免，应该使用指针参数。

```cpp
virtual print() = 0; // 纯虚函数，迫使子类必须继承
```

### 什么时候用指针形参？什么时候用引用形参？

如果你想要修改一个参数的值，那么用指针。

```cpp
void increase(int * a){ ++(*a);}
int a = 1;
increase(&a);
```

如果你想不修改一个参数的值，那么用 const 引用。

```cpp
std::string concat(const std::string& a, const std::string& b){
    std::string tmp = a+b;
    return tmp;
}

std::string a = "hello ";
std::string b = "world."
std::string c = concat(a,b);
```

单纯的引用应该避免使用，因为他在调用的时候不能表示一个参数是否会被函数改变。

```cpp
void mayBeIncrease(int & a){
    ++a;
}

int a = 10;
mayBeIncrease(a);
// Is a changed?
```

mayBeIncrease 函数的实现，我们不能确定变量 a 是否被改变，这就是使用这种非常量引
用的问题。而如果只是用指针和常量引用，就能在调用的时候知道变量是否改变了。

### 什么时候用 constexpr?

constexpr 修饰的函数，简单的来说，如果其传入的参数可以在编译时期计算出来，那么这
个函数就会产生编译时期的值。但是，传入的参数如果不能在编译时期计算出来，那么
constexpr 修饰的函数就和普通函数一样了。不过，我们不必因此而写两个版本，所以如果
函数体适用于 constexpr 函数的条件，可以尽量加上 constexpr。而检测 constexpr 函数
是否产生编译时期值的方法很简单，就是利用 std::array 需要编译期常值才能编译通过的
小技巧。这样的话，即可检测你所写的函数是否真的产生编译期常值了。

### C++中变量有什么区别？

其实主要就是占内存大小的区别。比如 int 是 4 bytes, 1 bytes 等于 8 bits, 而所以
int 有 32 个 bits，其中一个 bit 用来存符号，所以有 31 个 bits 可以存数字，又因为
是二进制，所以可以存 2^31 = 2,147,483,648，所以取值范围为 [2,147,483,648,
2,147,483,648]. 而 char 其实存的是数字，只是表现出来是字母。比如 char=65 的话，
其实是"A".

### 什么是指针 pointer？

*   指针只是一个地址，和类型无关。
*   Pointer is a variable which holds a address and integer.
