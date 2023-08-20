import 'package:flutter/material.dart';

class MylovePage extends StatefulWidget {
  const MylovePage({super.key});

  @override
  State<MylovePage> createState() => _MylovePageState();
}

class _MylovePageState extends State<MylovePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("我迫不及待地想要和过去说再见，因为你的出现让我对未来充满了期待")),

      body: ListView(
        children: [
          const ListTile(
            title: Text(
              "我迫不及待地想要和过去说再见，因为你的出现让我对未来充满了期待",
              style: TextStyle(
                fontFamily: "宋体",
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Image.asset("images/t6.jpg"),
        ],
      ),
    );
  }
}
