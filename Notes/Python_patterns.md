# Python-patterns Notes

Github：[faif/python-patterns](https://github.com/faif/python-patterns)

希望能用几句话总结各个设计模式。

<!-- vim-markdown-toc GitLab -->

*   [Creational Patterns](#creational-patterns)
*   [Structural Patterns](#structural-patterns)
*   [Behavioral Patterns](#behavioral-patterns)
*   [Design for Testability Patterns](#design-for-testability-patterns)
*   [Fundamental Patterns](#fundamental-patterns)
*   [Others](#others)

<!-- vim-markdown-toc -->

## Creational Patterns

*   **Abstract factory(抽象工厂)**

    *   有类 A 和类 B，其中类 B 作为参数传入类 A 中。可以创建一个函数动态创建 A
        的子类。
    *   比如类 PetShop，类 Cat 和类 Dog 作为参数传入 PetShop 中。
    *   用处：动态创建多个类。

*   **Borg(单例模式)**

    *   用处：使多个类的实例共享同一个变量，方便信息的共享。
    *   在类内的函数外，创建一个变量，然后在'**init**'中令某属性指向该变量。这样
        创建多个实例后可以共享这个变量。
    *   虽然共享的变量 id 不同，但却指向同一个位置。

*   **Builder(建造者模式)**

    *   有超类 A 及其子类，和类 B，类 B 实例化附属在 A 的子类中，而**A 的子类实
        例化后要运行几个函数进行初始化**。
    *   可以创建一个函数，动态创建 A 的子类，并将初始化的相关函数放在该函数中。
    *   用处：避免了每一次创建都要重复写初始化函数。

*   **Factory method(工厂方法模式)**

    *   将多个类存入字典中，创建一个函数，用参数在函数中调用字典取出不同的类，返
        回实例。
    *   用处：达成动态创建实例。

*   **Lazy evaluation(延迟加载模式)**

    *   运用装饰器，使访问后才在类的'**dict**'命名空间中创建属性。
    *   用处：可减少数据库损耗。

*   **Pool(对象池)**

    *   运用 Queue，在每次用完一个对象后就推回 Queue，这样可重复利用这一对象。
    *   用处：用于需要高代价多次创建某一对象时，可用队列存起来。

*   **Prototype(原型模式)**
    *   运用解包，可以通过原型创建对象。也可用深度拷贝，保存时间快照。
    *   用处：保存时间快照。将对象存起来。

## Structural Patterns

*   **3-tier(三层架构)**

    *   类与类之间互相包装与调用。
    *   结构清晰明显。
    *   有点像简化的抽象工厂,不同的是抽象工厂关注动态创建类，而三层架构关注类 B
        传入类 A 后，类 AB 之间的分离。

*   **Adapter(适配器模式)**

    *   用一个 Adapter 类将不同的但相似的类统一起来，和 API 对应。
    *   其实可以用多重继承的方式，让相似的类继承基类，然后可以直接使用。
    *   用处：可以适配 API 而不用修改原类。

*   **Bridge(桥接模式)**

    *   将产品类的实现和抽象类分离，能够灵活的变化。
    *   在桥接模式类中已制定好属性的输出，只需传入不同的产品类即可。

*   **Composite(组合模式)**

    *   基类和子类。由基类作为模板，创建子类覆盖原基类内部的函数。

*   **Decorator(装饰模式)**

    *   有点像装饰器。
    *   有基类和子类，继承关系。但是子类以基类为参数，且覆写了函数，对基类函数的
        返回值进行包装。
    *   用处：给方法增加新功能，比如 permissions or subscription to an event.

*   **Facade(外观模式)**

    *   创建一个总类，将其他各种类在内部实例化后 runall。
    *   这样可使总执行类和其他类更好的分离。
    *   用处：用于一键执行多个任务。

*   **Flyweight(享元模式)**

    *   利用'**new**'将创建的对象存到字典，之后若要再创建同个对象则可直接引用。
    *   新版本 Python3.6 可以用'**init_subclass**'
    *   但是要注意，他们全部都变成引用同一个对象,修改会相互影响。
    *   用处：用于如果要创建多个同样对象的话，可以减少开销，改善性能。

*   **Front controller(前端控制器)**

    *   提供一个集中地请求处理机制，所有的请求将由一个单一的处理程序处理。
    *   该处理成功需可以做认证/授权/记录日志，或者跟踪请求，然后把请求传给相应的
        处理程序。
    *   Front Controller, Dispatcher, View 组成。Controller 负责检测是否为 view
        project。

*   **Model-view-controller --MVC(模型-视图-控制器)**

    *   将模型和视图分离，用控制器控制。
    *   可以随意选择用什么视图来展示模型。

*   **Proxy(代理模式)**
    *   通过一个对象给另一个对象提供“代理”的方式访问。
    *   用处：用于比如对象不方便直接引用，或者 expensive to duplicate。

## Behavioral Patterns

*   **Chain(职责链模式)**

    *   使多个对象东渡有机会处理请求，从而避免了请求的发送者对接受者之间的耦合关
        系。将这些对象连城一条链，并沿着这条链传递该请求，直到有对象处理它为止。
    *   优点：请求者可以不知道是谁处理的，处理者可以不用知道请求者的全貌。请求和
        处理是分开的。

*   **Catalog(目录设计模式)**

    *   在类内实现最终接口可调用的多个方法，然后将这些方法放入类内部的一个字典里
        面。通过初始化类的参数控制最终接口调用的是哪一个方法。
    *   A class that uses different static function depending of a parameter
        passed in init. Note the use of a single dictionary instead of multiple
        conditions.

*   **Chaining_method**

    *   优点像 3-tier，就是一个类内有不同动作，可以将不同的动作类作为参数传入。
    *   区别就是 3-tier 是内置好动作类，而这个可以自有配置不同的动作类。

*   **Command(命令模式)**

    *   将需要执行的一系列命令放入列表里，用一个 for 循环依次执行。

*   **Iterator(迭代器模式)**

    *   运用迭代器，iterator。
    *   可以用关键字 yield 或者元祖生成 generator。

*   **Mediator(中介者模式)**

    *   由一个中介者类，通过 setValue 接收其他不同的类进行集中交互。
    *   好处：隔离了各个对象之间的直接耦合。
    *   Encapsulates how a set of objects interact.

*   **Memento(备忘录模式)**

    *   Provides the ability to restore an object to its previous state.
    *   通过 copy 模块，创建一个函数，将状态保存并提供能够恢复原状态的函数。

*   **Observer(观察者模式)**

    *   Maintains a list of dependents and notifies them of any state changes.
    *   利用 property 装饰器，和 setter，监控每次赋值时候的变化。

*   **Publish_subscribe(发布/订阅模式)**

    *   和观察者模式差不多，但是将监控模块抽离出来，可以自定义监控模块。

*   **Registry(注册树模式)**

    *   有点像单例模式，但是注册树是创建一个 Holder 作为 metaclass，在每次继承后
        ，会自动更新这个 Holder，将新建的类放入 Holder 的字典中。
    *   可以通过 Holder 查看一共建立了多少个 class。
    *   不在同一页面继承的，只需要 import，就会自动记录在 Holder 中。

*   **Specification(规格模式)**

    *   将业务逻辑抽离出来，利用布尔值在主页面加以控制。
    *   可以灵活地对业务逻辑进行定制，而不是用逻辑判断语句来处理。

*   **State(状态模式)**

    *   Implements state as a derived class of the state pattern interface.
    *   Implements state transitions by invoking methods from the pattern's
        superclass.
    *   和组合模式差不多，但是组合模式是覆盖，状态模式不覆盖，只是继承。

*   **Strategy(策略模式)**

    *   函数本身可以作为类的参数放入 Strategy 类内，并替换内部函数。
    *   有点像抽象工厂，但是抽象工厂替换的是内部的类，而策略模式替换的是内部的函
        数。
    *   用处：当需要在不同时间应用不同的业务规则，就可以考虑用策略模式。

*   **Template(模板方法)**

    *   由骨架函数(skeletons)，动作函数(Action)和制作模板函数(make_templetes)组
        成。
    *   骨架函数负责以动作函数为参数进行整合。
    *   制作模板函数负责完成整合动作，返回制作好的骨架函数。
    *   用处：动作和骨架进行分离，可以动态创建**函数**。

*   **Visitor(访问者模式)**
    *   有数据结构，和基于数据结构的操作。
    *   通过一个 Visitor 类，提供导入数据结构的接口，和运行数据结构操作的接口。
    *   用处：可以使你在不改变各元素的类的前提下定于作用于这些元素的新操作。适用
        于数据结构相对稳定而基于该数据结构的操作需要经常扩展的系统。

## Design for Testability Patterns

*   **Setter_injection(设值注入模式)**
    *   提供设值函数。
    *   setter and getter。

## Fundamental Patterns

*   **Delegation_pattern(委托模式)**
    *   调用类 B 中的函数时，其实是在调用类 A 中的函数，形成委托。
    *   用处：将委托者和被委托者分离出来，达到解耦的目的。

## Others

*   **Blackboard(黑板模式)**

    *   应用中的多种不同数据处理逻辑相互影响和协同来完成数据分析处理。
    *   在黑板类内维护字典，作为共享资源，并可向黑板类添加专家。然后通过
        controller 类对黑板类进行控制，做分析处理。

*   **Hsm(层次状态机)**

    *   用一个 Mechine 类维护多种状态类。可以进行切换。

*   **Graph_search**
