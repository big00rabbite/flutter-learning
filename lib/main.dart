// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a blue toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reloa
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               '你点击的次数是:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

//例一
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//         //appbar设置导航，body设置内容区域（可抽离为单独组件MyApp）
//         appBar: AppBar(title: const Text("我的小马孩")),
//         body: const MyApp()),
//   ));
// }

// //创建自定义组件(代码块 statelessW)
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return const Center(
//       child: Text("你好呀，小马孩",
//           textDirection: TextDirection.ltr,
//           style: TextStyle(color: Colors.pink, fontSize: 40
//               // color: Color.fromRGBO(244, 244, 125, 1),
//               //fontSize: 40
//               )),
//     );
//   }
// }

// 例二
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//         //appbar设置导航，body设置内容区域（可抽离为单独组件MyApp）
//         appBar: AppBar(title: const Text("我的小马孩")),
//         body: const Column(children: [
//           MyApp(),
//           Mybotton(),
//           MyText(),
//         ])),
//   ));
// }

// //创建自定义组件(代码块 statelessW)
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Container(
//         alignment: Alignment.center, //配置container容器内元素的方位
//         margin: const EdgeInsets.fromLTRB(0, 80, 0, 0), //设置组件外边距
//         width: 200,
//         height: 200,
//         transform: Matrix4.skewY(0.1), //(translationValues位移，rotation、skey旋转等)
//         decoration: BoxDecoration(
//           color: Colors.yellow,
//           border: Border.all(color: Colors.red, width: 2), //边框
//           borderRadius: BorderRadius.circular(25), //圆角设置
//           boxShadow: const [BoxShadow(color: Colors.blue, blurRadius: 20.0)],
//           //LinearGradient 背景渐性渐变；RadialGradient 径向渐变
//           gradient: const LinearGradient(colors: [Colors.red, Colors.yellow]),
//         ),
//         child: const Text("你好小马孩",
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 20,
//             )), //设置text属性
//       ),
//     );
//   }
// }

// class Mybotton extends StatelessWidget {
//   const Mybotton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       width: 200,
//       height: 40,
//       margin: const EdgeInsets.fromLTRB(0, 40, 0, 20), //外边距
//       //padding设置内边距
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         borderRadius: BorderRadius.circular(25),
//       ),
//       child: const Text(
//         "小按钮",
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 30,
//         ),
//       ),
//     );
//   }
// }

// class MyText extends StatelessWidget {
//   const MyText({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200,
//       height: 200,
//       decoration:
//           const BoxDecoration(color: Color.fromARGB(255, 240, 150, 180)),
//       child: const Text(
//         "你好flutter你好flutter你好flutter你好flutter你好flutter你好flutter你好flutter你好flutter你好flutter你好flutter你好flutter你好flutter你好flutter",
//         textAlign: TextAlign.left, //文字位置
//         overflow: TextOverflow.ellipsis, //溢出显示...
//         maxLines: 2, //最大行数
//         style: TextStyle(
//           fontSize: 20,
//           fontWeight: FontWeight.bold,
//           color: Colors.red,
//           fontStyle: FontStyle.italic, //字体样式
//           letterSpacing: 2, //字间距
//           decoration: TextDecoration.underline, //划线
//         ),
//       ),
//     );
//   }
// }

//例三（图片）
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//         //appbar设置导航，body设置内容区域（可抽离为单独组件MyApp）
//         appBar: AppBar(title: const Text("我的小马孩")),
//         body: const Column(
//           children: [
//             MyApp(),
//             SizedBox(height: 20),
//             circular(),
//             SizedBox(height: 20),
//             clipImage(),
//             SizedBox(height: 20),
//             LocalImage(),
//           ],
//         )),
//   ));
// }

// //创建自定义组件(代码块 statelessW)
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Container(
//         margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
//         height: 100,
//         width: 100,
//         decoration: const BoxDecoration(
//           color: Colors.yellow,
//         ),
//         child:
//             //网页图片
//             Image.network(
//           "https://webinput.nie.netease.com/img/id5/icon.png",
//           // alignment: Alignment.center, // 对齐方式
//           // scale: 2,  //图片缩放
//           // fit: BoxFit.fill, //控制图片拉伸或挤压
//           // repeat: ImageRepeat.repeatX, //平铺

//           //结合clipover使用
//           // width: 100,
//           // height: 100,
//         ),
//       ),
//     );
//   }
// }

// // ignore: camel_case_types
// class circular extends StatelessWidget {
//   const circular({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 150,
//       width: 150,
//       decoration: BoxDecoration(
//           color: Colors.yellow,
//           borderRadius: BorderRadius.circular(30), //圆角图片
//           image: const DecorationImage(
//             image: NetworkImage(
//                 "https://webinput.nie.netease.com/img/id5/icon.png"),
//             fit: BoxFit.fill,
//           )),
//     );
//   }
// }

// // 使用clipoval实现圆形图片
// // ignore: camel_case_types
// class clipImage extends StatelessWidget {
//   const clipImage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ClipOval(
//       child: Image.network(
//         "https://webinput.nie.netease.com/img/id5/icon.png",
//         width: 150,
//         height: 150,
//         fit: BoxFit.cover,
//       ),
//     );
//   }
// }

// // 加载本地图片
// class LocalImage extends StatelessWidget {
//   const LocalImage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       height: 150,
//       decoration: const BoxDecoration(
//         color: Colors.yellow,
//       ),
//       child: Image.asset("images/t6.jpg"),
//     );
//   }
// }

//例四（自带图标组件和自定义图标）
// import 'package:flutter/material.dart';
// import 'ityingFont.dart';

// void main() {
//   runApp(const MyApp());
// }

// //创建自定义组件(代码块 statelessW)
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.yellow,
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: Text("flutter app")),
//         body: const MyHomePage(),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: const [
//         SizedBox(height: 20), //设置间距
//         Icon(
//           Icons.home,
//           size: 40,
//           color: Colors.red,
//         ),
//         SizedBox(height: 20),
//         Icon(
//           Icons.admin_panel_settings,
//         ), //设置图标属性
//         SizedBox(height: 20),
//         Icon(
//           ItyingFont.love,
//           size: 20,
//           color: Colors.red,
//         ),
//         SizedBox(height: 20),
//         Icon(
//           ItyingFont.zan,
//           size: 20,
//           color: Colors.red,
//         ),

//       ],
//     );
//   }
// }

//例五（列表组件）
// import 'package:flutter/material.dart';
// // ignore: unused_import
// import 'ityingFont.dart';

// void main() {
//   runApp(const MyApp());
// }

// //创建自定义组件(代码块 statelessW)
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.yellow,
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: const Text("flutter Icon")),
//         body: const MyHomePage(),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: const <Widget>[
//         ListTile(
//           leading: Icon(Icons.home),
//           title: Text("首页"),
//         ),
//         Divider(), //实现下划线
//         ListTile(
//           leading: Icon(
//             ItyingFont.love,
//             color: Colors.red,
//           ),
//           title: Text("我的喜欢"),
//           trailing: Icon(Icons.chevron_right_sharp),
//         ),
//         Divider(),
//         ListTile(
//           leading: Icon(ItyingFont.zan), //前面加组件
//           title: Text("我的点赞"),
//           trailing: Icon(Icons.chevron_right_sharp), //后面加组件
//         ),
//         Divider(),
//         ListTile(title: Text("列表")),
//         Divider(),
//         ListTile(title: Text("列表")),
//         Divider(),
//         ListTile(title: Text("列表")),
//         Divider(),
//         ListTile(title: Text("列表")),
//         Divider(),
//         ListTile(title: Text("列表")),
//         Divider(),
//         ListTile(title: Text("列表")),
//         Divider(),
//         ListTile(title: Text("列表")),
//         Divider(),
//         ListTile(title: Text("列表")),
//         Divider(),
//         ListTile(title: Text("列表")),
//         Divider(),
//         ListTile(title: Text("列表")),
//         Divider(),
//         ListTile(title: Text("列表")),
//         Divider(),
//         ListTile(title: Text("列表")),
//         Divider(),
//       ],
//     );
//   }
// }

// 例六（天生天城示例）
// import 'package:flutter/material.dart';
// // ignore: unused_import
// import 'ityingFont.dart';

// void main() {
//   runApp(const MyApp());
// }

// //创建自定义组件(代码块 statelessW)
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.yellow,
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: const Text("天生天城")),
//         body: const MyHomePage(),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         Container(
//           padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
//           height: 44, //只能控制高度
//           child: const Text(
//             "万州烤鱼",
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 22),
//           ),
//         ),
//         Image.asset("images/天生天城/烤鱼.jpg"),
//         Container(
//           padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
//           height: 44,
//           child: const Text(
//             "景点1",
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 22),
//           ),
//         ),
//         Image.asset("images/天生天城/ts1.jpg"),
//         Container(
//           padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
//           height: 44,
//           child: const Text(
//             "景点2",
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 22),
//           ),
//         ),
//         Image.asset("images/天生天城/ts2.jpg"),
//         Container(
//           padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
//           height: 44,
//           child: const Text(
//             "景点3",
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 22),
//           ),
//         ),
//         Image.asset("images/天生天城/ts3.jpg"),
//         Container(
//           padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
//           height: 44,
//           child: const Text(
//             "景点4",
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 22),
//           ),
//         ),
//         Image.asset("images/天生天城/ts4.jpg"),
//         Container(
//           padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
//           height: 44,
//           child: const Text(
//             "景点5",
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 22),
//           ),
//         ),
//         Image.asset("images/天生天城/ts5.jpg"),
//         Container(
//           padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
//           height: 44,
//           child: const Text(
//             "景点6",
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 22),
//           ),
//         ),
//         Image.asset("images/天生天城/ts6.jpg"),
//         Container(
//           padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
//           height: 44,
//           child: const Text(
//             "景点7",
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 22),
//           ),
//         ),
//         Image.asset("images/天生天城/ts7.jpg"),
//       ],
//     );
//   }
// }

//例七（水平列表）
// import 'package:flutter/material.dart';
// // ignore: unused_import
// import 'ityingFont.dart';

// void main() {
//   runApp(const MyApp());
// }

// //创建自定义组件(代码块 statelessW)
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.yellow,
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: const Text("flutter Icon")),
//         body: const MyHomePage(),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     //加上sizebox可以控制水平列表高度
//     return SizedBox(
//       height: 210,
//       child: ListView(
//         scrollDirection: Axis.horizontal, //水平列表
//         padding: const EdgeInsets.all(10),
//         children: <Widget>[
//           Container(
//             width: 220, //只能控制宽度
//             decoration: const BoxDecoration(
//               color: Colors.white,
//             ),
//             child: Column(children: [
//               Image.asset("images/天生天城/烤鱼.jpg"),
//               const Text("烤鱼")
//             ]),
//           ),
//           Container(
//             width: 120,
//             decoration: const BoxDecoration(
//               color: Colors.pink,
//             ),
//           ),
//           Container(
//             width: 120,
//             decoration: const BoxDecoration(
//               color: Colors.purple,
//             ),
//           ),
//           Container(
//             width: 120,
//             decoration: const BoxDecoration(
//               color: Colors.blue,
//             ),
//           ),
//           Container(
//             width: 120,
//             decoration: const BoxDecoration(
//               color: Colors.green,
//             ),
//           ),
//           Container(
//             width: 120,
//             decoration: const BoxDecoration(
//               color: Colors.red,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//例八（动态列表组件，循环动态数据）
// import 'package:flutter/material.dart';
// // ignore: unused_import
// import 'ityingFont.dart';

// void main() {
//   runApp(const MyApp());
// }

// //创建自定义组件(代码块 statelessW)
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.yellow,
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: const Text("动态列表")),
//         body: const MyHomePage(),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   List<Widget> _initListData() {
//     List<Widget> list = [];

//     //for循环生成动态列表
//     for (var i = 0; i < 20; i++) {
//       list.add(ListTile(
//         title: Text("列表-----$i"),
//       ));
//     }
//     return list;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: _initListData(),
//     );
//   }
// }

//例八其二（listview.builder）
// import 'package:flutter/material.dart';
// // ignore: unused_import
// import 'ityingFont.dart';

// void main() {
//   runApp(const MyApp());
// }

// //创建自定义组件(代码块 statelessW)
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.yellow,
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: const Text("动态列表")),
//         body: MyHomePage(),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   List<String> list = [];

//   MyHomePage({super.key}) {
//     for (var i = 0; i < 20; i++) {
//       list.add("${i}");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: list.length, //循环次数
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(list[index]),
//           );
//         } //循环方式
//         );
//   }
// }

//例九（Gridview）
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// //创建自定义组件(代码块 statelessW)
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.yellow,
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: const Text("flutter app")),
//         body: const MyHomePage(),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   List<Widget> _initGridViewData() {
//     List<Widget> templist = [];
//     for (var i = 0; i < 12; i++) {
//       templist.add(Container(
//         alignment: Alignment.center,
//         decoration: const BoxDecoration(color: Colors.blue),
//         child: Text(
//           "$i",
//           style: const TextStyle(fontSize: 20),
//         ),
//       ));
//     }
//     return templist;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       padding: const EdgeInsets.all(10),
//       crossAxisSpacing: 10, //水平间距
//       mainAxisSpacing: 10, //垂直间距
//       crossAxisCount: 2, //一行widget的数量
//       childAspectRatio: 1.2, //宽高比
//       children: _initGridViewData(),
//     );
//   }
// }

//flex布局
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.yellow,
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: const Text("flutter app")),
//         body: const MyHomePage(),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Container(
//           width: double.infinity,//满屏
//           height: 200,
//           color: Colors.black,
//         ),
//         Row(
//           children: [
//             Expanded(
//               flex: 2,
//               child: Container(
//                 height: double.infinity,
//                 child: Image.asset("images/t6.jpg", fit: BoxFit.cover),
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: SizedBox(
//                 width: double.infinity,
//                 height: 180,
//                 child: Column(
//                   children: [
//                     Expanded(
//                       child: Image.asset(
//                         "images/t6.jpg",
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     const SizedBox(height: 5),
//                     Expanded(
//                       child: Image.asset(
//                         "images/t6.jpg",
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         )
//       ],
//     );
//   }
// }

// //自定义IconContainer
// // ignore: must_be_immutable
// class IconContainer extends StatelessWidget {
//   Color color;
//   IconData icon;
//   IconContainer(this.icon, {Key? key, this.color = Colors.red})
//       : super(key: key); //传参函数

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center, //图标位置在容器中心
//       height: 120,
//       width: 120,
//       color: color,
//       child: Icon(
//         icon,
//         color: Colors.white,
//         size: 28,
//       ),
//     );
//   }
// }

//例十（层叠组件、定位）（使用stack时，如果不是根页面，需要定义一个容器，
//相对于这个容器实现层叠）
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.yellow,
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: const Text("flutter app")),
//         body: const MyHomePage(),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size; //获取屏幕宽高
//     return Container(
//       color: Colors.white,
//       child: Stack(
//         children: [
//           ListView(
//             padding: const EdgeInsets.only(top: 50), //防止列表1被导航条遮挡
//             children: const [
//               ListTile(title: Text("小马孩1")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//               ListTile(title: Text("小马孩")),
//             ],
//           ),
//           //posiitoned实现导航条定位
//           Positioned(
//             top: 0,
//             left: 0,
//             width: size.width, //子元素宽高必须写，否则导航条无法显示
//             height: 44,
//             child: Container(
//               height: 44,
//               color: Colors.green,
//               child: const Text(
//                 "一群小马孩",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

//Card组件例一
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.yellow,
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: const Text("flutter app")),
//         body: const MyHomePage(),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // final size = MediaQuery.of(context).size; //获取屏幕宽高
//     return ListView(
//       children: [
//         Card(
//             //配置卡片形状
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//             elevation: 20, //卡片阴影深度
//             shadowColor: Colors.grey, //阴影颜色
//             color: Colors.white, //背景颜色
//             child: const Column(
//               children: [
//                 ListTile(
//                   title: Text(
//                     "子休",
//                     style: TextStyle(fontSize: 28),
//                   ),
//                   subtitle: Text("第五人格五阶求生者"),
//                 ),
//                 Divider(), //分界线
//                 ListTile(
//                   title: Text("电话：15523238861"),
//                 ),
//                 ListTile(
//                   title: Text("地址：重庆工商大学"),
//                 ),
//               ],
//             )),
//       ],
//     );
//   }
// }

//Card组件例二
// import 'package:flutter/material.dart';
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.yellow,
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: const Text("flutter app")),
//         body: const MyHomePage(),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // final size = MediaQuery.of(context).size; //获取屏幕宽高
//     return ListView(
//       children: [
//         Card(
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//           elevation: 10,
//           margin: const EdgeInsets.all(10),
//           child: Column(children: [
//             AspectRatio(
//               aspectRatio: 16 / 9,
//               child: Image.asset(
//                 "images/t6.jpg",
//                 fit: BoxFit.cover,
//               ),
//             ),
//             ListTile(
//               leading: ClipOval(
//                 //圆形图片实现方法1
//                 child: Image.asset(
//                   "images/t6.jpg",
//                   fit: BoxFit.cover,
//                   height: 40,
//                   width: 40,
//                 ),
//               ),
//               title: const Text("123123"),
//               subtitle: const Text("123123"),
//             )
//           ]),
//         ),
//         Card(
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//           elevation: 10,
//           margin: const EdgeInsets.all(10),
//           child: Column(children: [
//             AspectRatio(
//               aspectRatio: 16 / 9,
//               child: Image.asset(
//                 "images/t6.jpg",
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const ListTile(
//               leading: CircleAvatar(
//                 //圆形图片实现方法2
//                 backgroundImage: AssetImage("images/t6.jpg"),
//               ),
//               title: Text("123123"),
//               subtitle: Text("123123"),
//             )
//           ]),
//         ),
//       ],
//     );
//   }
// }

//例：按钮组件
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: const Text("flutter app")),
//         body: const MyHomePage(),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: const EdgeInsets.all(10),
//       children: [
//         Row(
//           children: [
//             Text("热搜", style: Theme.of(context).textTheme.titleLarge),
//           ],
//         ),
//         const Divider(),
//         Wrap(
//           spacing: 10, //水平间距
//           runSpacing: 10, //垂直间距
//           alignment: WrapAlignment.center, //居中显示
//           direction: Axis.horizontal, //控制水平或垂直方向排列
//           children: [
//             Button("第1集", onPressed: () {}),
//             Button("第2集", onPressed: () {}),
//             Button("第3集", onPressed: () {}),
//             Button("第4集", onPressed: () {}),
//             Button("第5集", onPressed: () {}),
//             Button("第6集", onPressed: () {}),
//             Button("第7集", onPressed: () {}),
//             Button("第8集", onPressed: () {}),
//             Button("第9集", onPressed: () {}),
//             Button("第10集", onPressed: () {}),
//             Button("第11集", onPressed: () {}),
//             Button("第12集", onPressed: () {}),
//           ],
//         ),
//         const Divider(),
//         Row(
//           children: [
//             Text(
//               "历史记录",
//               style: Theme.of(context).textTheme.titleLarge,
//             )
//           ],
//         ),
//         const Divider(),
//         const Column(
//           children: [
//             ListTile(
//               title: Text("realme"),
//             ),
//             Divider(),
//             ListTile(
//               title: Text("apple"),
//             ),
//             Divider(),
//           ],
//         ),
//         const SizedBox(height: 40),
//         //自适应按钮
//         OutlinedButton.icon(
//           style: ButtonStyle(
//               foregroundColor: MaterialStateProperty.all(Colors.black45)),
//           onPressed: () {},
//           icon: const Icon(Icons.delete),
//           label: const Text(
//             "清空历史记录",
//             style: TextStyle(fontSize: 20, fontFamily: '宋体'),
//           ),
//         )
//       ],
//     );
//   }
// }

// class Button extends StatelessWidget {
//   String text;
//   void Function()? onPressed;
//   Button(this.text, {Key? key, required this.onPressed}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: ButtonStyle(
//         backgroundColor: MaterialStateProperty.all(
//           const Color.fromARGB(2, 2, 2, 2),
//         ),
//         foregroundColor: MaterialStateProperty.all(Colors.black45),
//       ),
//       onPressed: onPressed,
//       child: Text(text),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomePage(),
//     );
//   }
// }

// //有状态组件
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("flutter app")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "$_count",
//               style: Theme.of(context).textTheme.headlineLarge,
//             ),
//             const SizedBox(
//               height: 100,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _count++;
//                   });
//                 },
//                 child: const Text("增加")),
//             const SizedBox(height: 20),
//             ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _count = 0;
//                   });
//                 },
//                 child: const Text("清空"))
//           ],
//         ),
//       ),
//       //添加按钮
//       floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               _count--;
//             });
//           },
//           child: const Icon(Icons.add)),
//     );
//   }
// }

//例：增加列表
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomePage(),
//     );
//   }
// }

// //有状态组件
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final List<String> _list = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("app"),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//           setState(() {
//             _list.add("新增列表");
//           });
//         },
//       ),
//       body: ListView(
//         children: _list.map((v) {
//           return ListTile(
//             title: Text(v),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }

//例：页面切换
import 'package:flutter/material.dart';
import './pages/taps.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 去掉debug图标
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //taps类被抽离到文件夹pages中
      home: const taps(),
    );
  }
}
