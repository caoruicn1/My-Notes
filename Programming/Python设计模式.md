# Python-patterns Notes

Github：[faif/python-patterns](https://github.com/faif/python-patterns)

希望能用几句话总结各个设计模式。

## Creational Patterns

- **Abstract factory(抽象工厂)**
    - 有类A和类B，其中类B作为参数传入类A中。可以创建一个函数动态创建A的子类。
    - 比如类PetShop，类Cat和类Dog作为参数传入PetShop中。

- **Borg(单例模式)**
    - 使多个类的实例共享同一个变量，方便信息的共享。
    - 在类内的函数外，创建一个变量，然后在__init__中令某属性指向该变量。这样创建多个实例后可以共享这个变量。
    - 虽然共享的变量id不同，但却指向同一个位置。

- **Builder(建造者模式)**
    - 有超类A及其子类，和类B，类B实例化附属在A的子类中，而**A的子类实例化后要运行几个函数进行初始化**。
    - 可以创建一个函数，动态创建A的子类，并将初始化的相关函数放在该函数中。
    - 避免了每一次创建都要重复写初始化函数。

- **Factory method(工厂方法模式)**
    - 将多个类存入字典中，创建一个函数，用参数在函数中调用字典取出不同的类，返回实例。达成动态创建实例。

- **Lazy evaluation(延迟加载模式)**

- **Pool(对象池)**

- **Prototype（原型模式）**

## Structural Patterns

## Behavioral Patterns

## Design for Testability Patterns

## Fundamental Patterns

## Others
