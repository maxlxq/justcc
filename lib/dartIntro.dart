import 'package:flutter/material.dart';

class DartIntro extends StatefulWidget {
  @override
  _DartIntro createState() => _DartIntro();
}

class _DartIntro extends State<DartIntro> {
  static String title = 'DartIntro';

  static const introDart1 = '''
  Dart是一种"结构化的编程语言", 在所有现代浏览器和环境中提供高性能。
  这门语言用于Web、服务器、移动应用和物联网等领域的开发，是宽松开源许可证下的开源软件。
  Dart语言的部分特征：
  1 Dart是AOT编译的，编译成快速、可预测的本地代码，使Flutter几乎都可以使用Dart编写。
  2 Dart也可以JIT编译，开发周期异常快，工作流颠覆常规（亚秒级热重载）
  3 Dart可以更轻松地创建以60fps运行的流畅动画和转场。在没有锁的情况下进行对象的分配和垃圾回收。就像JavaScript一样，Dart避免了抢占式调度和共享内存。由于Flutter应用程序被编译为本地代码，因此不需要再领域之间建立缓慢的桥梁。启动速度也快得多。
  4 Dart使Flutter不需要单独的声明式布局语言或单独的可视化界面构建器，因为Dart的声明式编程布局易于阅读和可视化。所有布局使用一种语言，聚集在一处，Flutter很容易提供高级工具，使布局更简单。
  5 Dart特别容易学习，因为他具有静态和动态语言用户都熟悉的特性。
  ''';

  static const introDart2 = '''
  Dart的重要概念如下：
  1 所有东西都是对象，无论是变量、数字、函数等都是对象。所有对象都是类的实例，所有的对象都继承自内置的Object类。
  2 程序中指定数据类型使得程序合理的分配内存空间，并帮助编译器进行语法检查。但是，指定类型不是必须的。Dart语言是弱数据类型。
  3 Dart代码在运行前解析。指定数据类型和编译时的常量，可以提高运行速度。
  4 Dart程序有统一的程序入口：main()。
  5 Dart没有public、protected和private的概念。私有特性通过变量或函数加上下划线来表示。
  6 Dart的工具可以检查出warning和errors。
  7 支持async/await异步处理。
  ''';

  static const introDart3 = '''
  1. 常量和固定值：const 、final，const 定义一个编译时的常量，final 定义的常量只能被设定一次；
  2. 基本数据类型：Number、String、Boolean、List、Map
  Number类型：int、double，操作：+、-、*、/及位移操作>>，常用方法：abs、ceil和floor。
  String类型：单/双引号 表示字符串，三个单/双引号 包裹多行字符串
  Boolean类型：强bool类型检查，只有bool类型的值是true时才认为是true
  List类型：具有一系列相同类型的数据。类似JS中的数组对象，如：var list = [1,2,3];
  Map类型：key/value 键值对，key必须唯一，如： var w = {}; or var w = new Map();
  ''';

  static const introDart4 = '''
  函数，Dart是面向对象的语言，所以函数也是对象，属于Function对象。
  函数可以像参数一样传递给其他函数，便于做回调处理。
  1 可选参数：将参数用中括号[]括起来，用来表明是可选位置参数。其他参数是必传参数。
  2 参数默认值：通常参数的默认值为null，可选参数可设默认值。[String from = 'China']
  3 main函数：Flutter应用程序必须有一个main函数，作为程序的入口。
  4 函数返回值：所有的函数都会有返回值；未指定返回值，默认返回值是null，并且会隐式添加return语句；
  ''';

  static const introDart5 = '''
  运算符
  1 一元后缀：++、--、()、[]、.、?.
  2 一元前缀：-、!、~、++、--
  3 乘除类型：*、/、%、～/
  4 加减类型：+、-
  5 移动位运算：<<、>>
  6 位运算：&、｜、^
  7 关系和类型测试：>=、<=、>、<、as[确定左值是右值类型时可简写as]、is[左值对象是相应类型]、is![左值对象不是相应类型] 
  8 等式：==、!=
  9 逻辑与：&&
  10 逻辑或：||
  11 条件：expr1 ? expr2 : expr3
  12 级联：.. [类似JS中的Promise的then处理，目的是简写代码，严格来说，级联是Dart的语法，算不上运算符]
  13 赋值：= *= /= ～/= %= += -= <<= >>= &= ^= |= ??=
  ''';

  static const introDart6 = '''
  流程控制语句
  1 if、else：if、else if、else
  2 for：for(var i = 0; i < 5; i++) {} ；如果arr是可序列化的操作数 可简写为 for(var i in arr) {}
  3 while和do-while
  4 break和continue
  5 switch和case：前后操作数必须是相同类型的对象实例；每个非空case必须break；
  6 assert：assert(true) 继续执行；assert(false) 抛出断言错误异常AssertionError
  7 try-catch和throw
  ''';

  static const introDart7 = '''
  异常处理
  Dart提供了异常和错误类型以及许多预定义的子类型，也可以定义自己的异常
  1 抛出异常：可以报出任意对象：throw FormatException('抛出一个FormatException异常'); throw '数据非法';
  2 捕获异常：可以指定一个或两个参数来捕获异常，第一个是抛出的异常，第二个是堆栈跟踪(StackTrace对象)
  try {
    ...
  } on Exception catch (e) {
    print('Exception details:\\n \$e');
  } catch (e, s) {
    print('Exception details:\\n \$e');
    print('Stack trace:\\n \$s');
  }
  3 Finally 无论是否抛出异常，都能够执行，异常将在finally语句运行后传播
  ''';

  static const introDart8 = '''
  面向对象
  Dart作为高级语言支持面向对象的很多特性，并且支持给予mixin的继承方式。
  基于mixin的继承方式是指：一个类可以继承自多个父类，相当于其他语言里的多继承。所有的类都有同一个基类Object，一切皆为对象。如：var user = new User('zhang', 20);
  1 实例化成员变量
  定义一个User类，在类里添加两个成员变量 name 和 age。
  class User {
    String name;
    int age;
  }
  类定义中所有的变量都会隐式的定义setter方法，针对非空的变量会额外增加getter方法。
  2 构造函数
  - 常规构造函数
  class User {
    String name;
    int age;
    User(String name, int age) {
      this.name = name;
      this.age = age;
    }
  }
  可简写为
  class User {
    String name;
    int age;
    User(this.name, this.age);
  }
  - 命名的构造函数
  class User {
    String name;
    int age;
    User(this.name, this.age);
    User.fromJson(Map json) {
      name = json['name'];
      age = json['age'];
    }
  }
  - 构造函数初始化列表
  3 读取和写入对象
  4 重载操作
  5 继承类 extends
  6 抽象类 abstract，不具体实现方法，写好定义接口，交由调用的人实现
  7 枚举类型 enum
  enum Color {
    red,
    green,
    blue
  }
  List<Color> colors = Color.values; // 获取枚举类中的所有值
  8 Mixins 混入功能，相当于多继承，使用with关键字来实现Mixins功能
  class S {
    a() {print("S.a"); }
  }
  class A {
    a() {print("A.a"); }
    b() {pirnt("A.b"); }
  }
  class T = A with S;
  main(List<Strings> args) {
    T t = new T();
    t.a();
    t.b();
  }
  ''';

  static const introDart9 = '''
  泛型
  范型通常是为了类型安全而设计的，适当地指定泛型类型会生成更好的代码，可以使用泛型来减少代码重复。
  Dart中使用<T>的方式来定义泛型。如 List只包含字符串，声明为 List<String>
  var names = new List<String>();
  names.addAll(['zhang', 'san', 'si']);
  1 用于泛型集合
  泛型用于List和Map类型参数化：
  List: <type>
  Map: <keyType, valueType>
  例：
  var names = <String>['zhang', 'san', 'si'];
  var weeks = <String, String>{
    'Monday': '1',
    'Tuesday': '2',
    'Wednesday': '3',
    'Thursday': '4',
    'Friday': '5',
    'Saturday': '6',
    'Sunday': '7',
  };
  2 在构造函数中参数化
  Map类型的例子如下：
  var users = new Map<String, User>();
  ''';

  static const introDart10 = '''
  库的使用
  1 引用库
  通过import语句在一个库中引用另一个库的文件。需要注意：
    在import语句后面需要接上库文件的路径
    对Dart语言提供的库文件使用dart:xx格式
    第三方的库文件使用package:xx格式
  2 指定一个库的前缀
  命名空间 使用 as 防止引用不同库中的相同类
  3 引用库的一部分
  import 'package:lib1/lib1.dart' show foo; // 只引用foo
  import 'package:lib2/lib2.dart' hide foo; // 除了foo其余都引用
  ''';

  static const introDart11 = '''
  异步支持
  async/await
  Dart库提供asynchronous功能，该功能提供接口来进行耗费时间的操作，比如：文件读写、网络请求。该功能返回Future或Stream对象
  获取返回的Future对象的值：使用async/await；使用Future提供的API；
  获取返回的Stream对象的值：使用async/异步的循环await for；使用Stream相关API；
  async 必须与 await 匹配使用
  fileOperate () async {
    var file = await readFile();
    // other code
  }
  ''';

  static const introDart12 = '''
  元数据
  使用元数据给代码添加更多的信息。
  元数据是以@开始的修饰符，在@后面接着编译时的常量或调用一个常量构造函数。
  @deprecated 被弃用的
  @override 重写
  @proxy 代理
  ''';

  static const introDart13 = '''
  注释
  单行注释 //
  多行注释
  /**
    *
    ...
    *
    */
  文档注释 /// 或 /** 开头
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          Text(introDart1),
          Text(introDart2),
          Text(introDart3),
          Text(introDart4),
          Text(introDart5),
          Text(introDart6),
          Text(introDart7),
          Text(introDart8),
          Text(introDart9),
          Text(introDart10),
          Text(introDart11),
          Text(introDart12),
          Text(introDart13),
        ],
      ),
    );
  }
}