import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("虚假的计数器")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$_count",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _count++;
                  });
                },
                child: const Text("增加")),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _count = 0;
                  });
                },
                child: const Text("清空"))
          ],
        ),
      ),
      //添加按钮
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _count--;
            });
          },
          child: const Icon(Icons.add)),
    );
  }
}
