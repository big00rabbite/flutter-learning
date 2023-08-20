import 'package:flutter/material.dart';
// ignore: unused_import
import 'MyFont.dart';

void main() {
  runApp(const MyApp());
}

//创建自定义组件(代码块 statelessW)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("天生天城")),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          height: 44,
          child: const Text(
            "万州烤鱼",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        Image.asset("images/天生天城/烤鱼.jpg"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          height: 44,
          child: const Text(
            "景点1",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        Image.asset("images/天生天城/ts1.jpg"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          height: 44,
          child: const Text(
            "景点2",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        Image.asset("images/天生天城/ts2.jpg"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          height: 44,
          child: const Text(
            "景点3",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        Image.asset("images/天生天城/ts3.jpg"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          height: 44,
          child: const Text(
            "景点4",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        Image.asset("images/天生天城/ts4.jpg"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          height: 44,
          child: const Text(
            "景点5",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        Image.asset("images/天生天城/ts5.jpg"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          height: 44,
          child: const Text(
            "景点6",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        Image.asset("images/天生天城/ts6.jpg"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          height: 44,
          child: const Text(
            "景点7",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        Image.asset("images/天生天城/ts7.jpg"),
      ],
    );
  }
}
