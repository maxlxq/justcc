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
        ],
      ),
    );
  }
}