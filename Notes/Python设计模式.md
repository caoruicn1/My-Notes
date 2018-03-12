# Python-patterns Notes

Github：[faif/python-patterns](https://github.com/faif/python-patterns)

希望能用几句话总结各个设计模式。

## Creational Patterns

- **Abstract factory(抽象工厂)**
    - 有类A和类B，其中类B作为参数传入类A中。可以创建一个函数动态创建A的子类。
    - 比如类PetShop，类Cat和类Dog作为参数传入PetShop中。
    - 用处：动态创建多个类。

- **Borg(单例模式)**
    - 用处：使多个类的实例共享同一个变量，方便信息的共享。
    - 在类内的函数外，创建一个变量，然后在'__init__'中令某属性指向该变量。这样创建多个实例后可以共享这个变量。
    - 虽然共享的变量id不同，但却指向同一个位置。

- **Builder(建造者模式)**
    - 有超类A及其子类，和类B，类B实例化附属在A的子类中，而**A的子类实例化后要运行几个函数进行初始化**。
    - 可以创建一个函数，动态创建A的子类，并将初始化的相关函数放在该函数中。
    - 用处：避免了每一次创建都要重复写初始化函数。

- **Factory method(工厂方法模式)**
    - 将多个类存入字典中，创建一个函数，用参数在函数中调用字典取出不同的类，返回实例。
    - 用处：达成动态创建实例。

- **Lazy evaluation(延迟加载模式)**
    - 运用装饰器，使访问后才在类的'__dict__'命名空间中创建属性。
    - 用处：可减少数据库损耗。 

- **Pool(对象池)**
    - 运用Queue，在每次用完一个对象后就推回Queue，这样可重复利用这一对象。
    - 用处：用于需要高代价多次创建某一对象时，可用队列存起来。

- **Prototype（原型模式）**
    - 运用解包，可以通过原型创建对象。也可用深度拷贝，保存时间快照。
    - 用处：保存时间快照。将对象存起来。

## Structural Patterns


- **3-tier(三层架构)**
    - 类与类之间互相包装与调用。
    - 结构清晰明显。

- **Adapter(适配器模式)**
    - 用一个Adapter类将不同的但相似的类统一起来，和API对应。
    - 用处：可以适配API而不用修改原类。

- **Bridge(桥接模式)**
    - 将产品类的实现和抽象类分离，能够灵活的变化。
    - 在桥接模式类中已制定好属性的输出，只需传入不同的产品类即可。

- **Composite(组合模式)**
    - 基类和子类。由基类作为模板，创建子类覆盖原基类内部的函数。

- **Decorator(装饰模式)**
    - 有点像装饰器。
    - 有基类和子类，继承关系。但是子类以基类为参数，且覆写了函数，对基类函数的返回值进行包装。
    - 用处：给方法增加新功能，比如permissions or subscription to an event.

- **Facade(外观模式)**
   - 创建一个总类，将其他各种类在内部实例化后runall。
   - 这样可使总执行类和其他类更好的分离。
   - 用处：用于一键执行多个任务。 

- **Flyweight(享元模式)**
    - 利用'__new__'将创建的对象存到字典，之后若要再创建同个对象则可直接引用。
    - 但是要注意，他们全部都变成引用同一个对象,修改会相互影响。
    - 用处：用于如果要创建多个同样对象的话，可以减少开销，改善性能。

- **Front controller(前端控制器)**
    - 提供一个集中地请求处理机制，所有的请求将由一个单一的处理程序处理。
    - 该处理成功需可以做认证/授权/记录日志，或者跟踪请求，然后把请求传给相应的处理程序。
    - Front Controller, Dispatcher, View组成。Controller负责检测是否为view
      project。

- **Model-view-controller --MVC(模型-视图-控制器)**
    - 将模型和视图分离，用控制器控制。
    - 可以随意选择用什么视图来展示模型。 

- **Proxy(代理模式)**
    - 通过一个对象给另一个对象提供“代理”的方式访问。
    - 用处：用于比如对象不方便直接引用，或者expensive to duplicate。

## Behavioral Patterns

- **chain(职责链模式)**


- **catalog()**


- **chaining_method**


- **command(命令模式)**


- **iterator(迭代器模式)**


- **mediator(终结者模式)**


- **memento(备忘录模式)**


- **observer(观察者模式)**


- **publish_subscribe(发布/订阅模式)**


- **registry(注册树模式)**


- **specification(规范模式)**


- **state(状态模式)**


- **strategy(策略模式)**


- **template(模板方法)**


- **visitor(访问者模式)**


## Design for Testability Patterns

- **setter_injection(设值注入模式)**

## Fundamental Patterns

- **delegation_pattern(委托模式)**

## Others


- **blackboard(黑板模式)**


- **graph_search**


- **hsm**


