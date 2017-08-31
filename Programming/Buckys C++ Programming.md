## 5 - Creating a Basic Calculator

```cpp
#include <iostream>
using namespace std;

int main()
{
    int a;
    int b;
    int sum;

    cout << "Enter a Number \n";
    cin >> a;

    cout << "Enter another \n";
    cin >> b;

    sum = a + b;
    cout << "the sum of those number is " << sum << endl;

    cin >> a;  // for pause
    return 0;
}
```


## 8 - if Statement

```cpp
	if(a>5){
		 cout << "GOOD!";
	}else{
		 cout << "Bad!";
	}
```


## 9 - Functions

```cpp
void printSomething(){
	cout << "ooooo" << endl;
}

int square(int x){
	return x*x;
}

int mult(int x, inty){
	return x*y;
}

```

## 12 - Introduction to Classes and Objects

```cpp
#include <iostream>
using namespace std;

class MyClass{
    public:
        void coolSaying(){
            cout << "I am very handsome" << endl;
        }
};


int main()
{
    MyClass ChandlerObject;
    ChandlerObject.coolSaying();
    return 0;
}
```


## 13 - Using Variables in Classes

```cpp
#include <iostream>
using namespace std;

class MyClass{
    public:
        void setName(string x){
            name = x;
        }
        string getName(){
            return name;
        }
    private:
        string name;
};


int main()
{
    MyClass bo;
    bo.setName("Chandler");
    cout << bo.getName();
    return 0;
}

```


## 14 - Constructors

```cpp
#include <iostream>
using namespace std;

class MyClass{
    public:
    	 MyClass(string z){
    	 	  setName(z);
    	 }
        void setName(string x){
            name = x;
        }
        string getName(){
            return name;
        }
    private:
        string name;
};


int main()
{
    MyClass bo("Chandler");
    cout << bo.getName();
    return 0;
}

```

## 15 - Placing Classes in Separate Files


```cpp
class Burrito
{
    public:
    	 Burrito();
}
```
保存为 Burrito.h

```cpp
#include <iostream>
#include "Burrito.h"

using namespace std;

Burrito::Burrito() {
    cout << "I am a banana" << endl;
}
```
保存为 Burrito.cpp


然后调用：

```cpp
#include <iostream>
#include "Burrito.h"
using namespace std;

int main{}{
    Burrito bo;
}

```

## 18 - while Loops

```cpp
#include <iostream>

using namespace std;

int main() {
    int bacon = 1;

    while (bacon <= 20) {
        cout << "bacon is " << bacon << endl;
        bacon++;
    }
}
```

##  22 - for Loops

```cpp
#include <iostream>

using namespace std;

int main() {
    for (int x = 5; x < 50; x += 5) {
        cout << x << endl;
    }
}

```

## 23 - Making a Stock Market Simulator!

```cpp
#include <iostream>
#include <cmath>
using namespace std;

int main() {
    float a;
    float p = 10000;
    float r = .01;

    for (int day = 1; day <= 20; day++) {
        a = p * pow(1 + r, day);
        cout << day << "------" << a << endl;
    }


}
```

## 24 - do while Loops

```cpp
#include <iostream>
#include <cmath>

using namespace std;

int main() {
    int x = 99;

    do {
        cout << x << endl;
        x++;

    } while (x <= 200);

}
```

## 25 - switch

```cpp

#include <iostream>
#include <cmath>

using namespace std;

int main() {
    int age ;
    cout << "Please enter your age! \n"<< endl;
    cin >> age;
    switch (age) {
        case 16:
            cout << "Oh 16 boy~" << endl;
            break;
        case 18:
            cout << "Oh just grow up!" << endl;
            break;
        case 21:
            cout << "buy me a beer" << endl;
            break;
        default:
            cout << "just a Normal guy" << endl;
    }


```



## 27 - Random Number Generator
```cpp
#include <iostream>
#include <cmath>
#include <ctime>

using namespace std;

int main() {
    srand(time(0));
    for (int x = 1; x < 25; x++) {
        cout << 1 + (rand() % 6) << endl;
    }
}

```


## 28 - Default Arguments / Parameters
```cpp
#include <iostream>

using namespace std;

int volume(int l = 1, int w = 1, int h = 1);

int main() {
    cout << volume(1, 2, 3) << endl;
}

int volume(int l, int w, int h) {
    return l * w * h;
}
```



## 29 - Unary Scope Resolution Operator
```cpp
#include <iostream>

using namespace std;

int tuna = 69;

int main(){
    int tuna = 20;
    cout << ::tuna << endl;
}
```

## 30 - Function Overloading

```cpp
#include <iostream>

using namespace std;

void printNumber(int x) {
    cout << "I am printing an integer" << x << endl;
}


void printNumber(float x) {
    cout << "I am print an float" << x << endl;
}

int main() {
    int a = 34;
    float b = 32.333423;

    printNumber(a);
    printNumber(b);
}
```




## 31 - Recursion

```cpp
#include <iostream>

using namespace std;

int factorialFinder(int x) {
    if (x == 1) {
        return 1;
    } else {
        return x * factorialFinder(x - 1);
    }
}

int main() {
    cout << factorialFinder(5) << endl;
}
```


## 32 - Arrays
```cpp
#include <iostream>

using namespace std;

int main() {
    int bucky[5] = {23, 63, 2, 34, 33};

    cout << bucky[4] << endl;
}
```

## 36 - Multidimensional Arrays

```cpp
#include <iostream>

using namespace std;

int main() {
    int sally[2][3] = {{2, 3, 4},
                       {8, 9, 10}};
    cout << sally[1][1];
}
```

## 38 - Introduction to Pointers

```cpp
#include <iostream>

using namespace std;

int main() {
    int fish = 5;
    cout << &fish << endl;

    int *fishPointer;
    fishPointer = &fish;

    cout << fishPointer << endl;
}
```

## 39 - Pass by Reference with Pointers

```cpp
#include <iostream>

using namespace std;

void passByValue(int x);

void passByReference(int *x);

int main() {
    int betty = 13;
    int sandy = 13;

    passByValue(betty);
    passByReference(&sandy);

    cout << "betty is now " << betty << endl;
    cout << "sandy is now " << sandy << endl;
}

void passByValue(int x) {
    x = 99;
}

void passByReference(int *x) {
    *x = 66;
}
```

## 40 - sizeof
```cpp
#include <iostream>

using namespace std;

int main() {
    double bucky[10];
    cout << sizeof(bucky) << endl;

    cout << sizeof(bucky[0]) << endl;
}
```

### 42 - Arrow Member Selection Operator，
### 43 - Deconstructors, 
### 45 - Member Initializers
### 49 - this

```cpp
#ifndef UNTITLED_BURRITO_H
#define UNTITLED_BURRITO_H


class Burrito {
public:
    Burrito(int a, int b);
    ~Burrito();
    void printCrap();
protected:
private:
    int regVar;
    const int constVar;

};


#endif //UNTITLED_BURRITO_H
```
保存为Burrito.h


```cpp
#include <iostream>
#include "Burrito.h"

using namespace std;

Burrito::Burrito(int a, int b)
        : regVar(a),
          constVar(b)             // Member Initializers
{
    cout << "I am a banana" << endl;

}


void Burrito::printCrap() {
    cout << (*this).regVar << endl;

}

Burrito::~Burrito(){
    cout << "deconstructor" << endl;
}
```
保存为Burrito.cpp

然后执行

```cpp
#include <iostream>
#include "Burrito.h"

using namespace std;


int main() {
    Burrito BurritoObject(1,2);
    Burrito *BurritoPointer = &BurritoObject;

    BurritoObject.printCrap();
    BurritoPointer->printCrap();
}
```



## 48 - friend
```cpp
#include <iostream>
using namespace std;

class StankFist {
public:
    StankFist() { stinkyVar = 0; }

private:
    int stinkyVar;

    friend void stinkysFriend(StankFist &sfo);

};


void stinkysFriend(StankFist &sfo) {
    sfo.stinkyVar = 99;
    cout << sfo.stinkyVar << endl;
}

int main() {
    StankFist bob;
    stinkysFriend(bob);
}
```

## 51 - More on Operator Overloading

```cpp

#ifndef UNTITLED_SALLY_H
#define UNTITLED_SALLY_H


class Sally {
public:
    int num;
    Sally();

    Sally(int);


    Sally operator
    +(Sally);
};


#endif //UNTITLED_SALLY_H

```
保存为Sally.h

```cpp

#include <iostream>
#include "Sally.h"

using namespace std;

Sally::Sally() {}

Sally::Sally(int a) {
    num = a;
}


Sally Sally::operator+(Sally aso) {
    Sally brandNew;
    brandNew.num = num + aso.num;
    return (brandNew);
}
```
保存为Sally.cpp

然后运行

```cpp
#include <iostream>
#include "Sally.h"

using namespace std;

int main() {
    Sally a(34);
    Sally b(111);
    Sally c;

    c = a + b;
    cout << c.num << endl;
}
```

## 52 - Inheritance

```cpp
class Daughter: public Mother{
	public:
		Daughter();
}
```

### 56 - virtual Functions
```cpp
#include <iostream>

using namespace std;

class Enemy {
public:

    virtual void attack() {}
};

class Ninja : public Enemy {
public:
    void attack() {
        cout << "ninja attack!" << endl;
    }
};

class Monster : public Enemy {
public:
    void attack() {
        cout << "monster attack!" << endl;
    }
};

int main(){
    Ninja n;
    Monster m;
    Enemy *enemy1 = &n;
    Enemy *enemy2 = &m;
    enemy1->attack();
    enemy2->attack();
    n.attack();
    m.attack();
}
```


### 57 - Abstract Classes and Pure virtual Functions
纯virtual function，在子类中必须覆盖
```cpp
virtual void attack()=0
```

### 58 - function Templates， with Multiple Parameters
```cpp
#include <iostream>

using namespace std;

template<class bucky>
bucky addCrap(bucky a, bucky b) {
    return a + b;
}

template<class FIRST, class SECOND>
FIRST smaller(FIRST a, SECOND b) {
    return (a < b ? a : b);
};

int main() {
    double x = 7.2, y = 43.1, z;
    z = addCrap(x, y);
    cout << z << endl;

    int gg = 100;
    cout << smaller(x, gg) << endl;
}
```

### 60 - class Templates
```cpp
#include <iostream>

using namespace std;

template<class T>
class Bucky {
    T first, second;
public:
    Bucky(T a, T b) {
        first = a;
        second = b;
    }

    T bigger();
};

template<class T>
T Bucky<T>::bigger() {
    return (first > second ? first : second);
}

int main() {
    Bucky<int> bo(323, 103);
    cout << bo.bigger();
}
```


### 61 - Template Specializations
```cpp
#include <iostream>

using namespace std;

template<class T>
class Spunky {
public:
    Spunky(T x) {
        cout << x << " is not a character!" << endl;
    }
};

template<>
class Spunky<char> {
public:
    Spunky(char x) {
        cout << x << " is indeed a character!" << endl;
    }
};


int main() {
    Spunky<int> obj1(7);
    Spunky<double> obj2(7.9739);
    Spunky<char> obj3('q');

}
```

## 62，63 - Exceptions
```cpp
#include <iostream>

using namespace std;

int main() {

    try {
        int momsAge = 50;
        int sonsAge = 100;

        if (sonsAge > momsAge) {
            throw 99;
        }
    } catch (int x) {
        cout << "son can not be older than mom, ERROR NUMBER: " << x << endl;
    }catch (...) {
        cout << "Default Error, ERROR NUMBER: " << 0 << endl;       // 对应 throw 0

}
```

## 64 - Working with Files
```cpp
#include <iostream>
#include <fstream>

using namespace std;

int main(){
    ofstream buckyFile;
    buckyFile.open("tuna.txt");

    buckyFile << "I love tuna and tuna loves me!\n";
    buckyFile.close();
}
```


## 67 - Reading Custom File Structures
文件名为 players.txt，文件内容为：
```
1 bucky 65.47
2 sarah 43.21
3 sophie 2.54
```

```cpp
#include <iostream>
#include <fstream>

using namespace std;

int main() {
    ifstream theFile("players.txt");

    int id;
    string name;
    double money;

    while (theFile >> id >> name >> money) {
        cout << id << ", " << name << ", " << money << endl;
    }
}
```

## 71 - string Class and string Functions
```cpp
#include <iostream>
#include <fstream>

using namespace std;

//int main() {
//    string x;
//    cin >> x;
//    cout << "this is " << x << endl;
//}

//int main() {
//    string x;
//    getline(cin,x);
//    cout << "this is " << x << endl;
//}


int main() {
    string x("GGGGG");
    string x2;
    x2.assign(x);
    cout << "this is " << x2.at(3) << endl;
}
```

