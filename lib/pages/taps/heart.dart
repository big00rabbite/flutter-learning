import 'package:flutter/material.dart';
import 'package:flutterdemo2/MyFont.dart';

class heartPage extends StatefulWidget {
  const heartPage({super.key});

  @override
  State<heartPage> createState() => _heartPageState();
}

class _heartPageState extends State<heartPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 10,
          margin: const EdgeInsets.all(10),
          child: Column(children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                "images/t6.jpg",
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: ClipOval(
                //圆形图片实现方法1
                child: Image.asset(
                  "images/头像/小马孩.webp",
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              ),
              title: const Text("可爱的小马孩"),
              subtitle: const Text("小马孩"),
            )
          ]),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 10,
          margin: const EdgeInsets.all(10),
          child: Column(children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                "images/t6.jpg",
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: ClipOval(
                //圆形图片实现方法1
                child: Image.asset(
                  "images/头像/小马孩.webp",
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              ),
              title: const Text("可爱的小马孩"),
              subtitle: const Text("小马孩"),
            )
          ]),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 10,
          margin: const EdgeInsets.all(10),
          child: Column(children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                "images/t6.jpg",
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: ClipOval(
                //圆形图片实现方法1
                child: Image.asset(
                  "images/头像/小马孩.webp",
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              ),
              title: const Text("可爱的小马孩"),
              subtitle: const Text("小马孩"),
            )
          ]),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 10,
          margin: const EdgeInsets.all(10),
          child: Column(children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                "images/t6.jpg",
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: ClipOval(
                //圆形图片实现方法1
                child: Image.asset(
                  "images/头像/小马孩.webp",
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              ),
              title: const Text("可爱的小马孩"),
              subtitle: const Text("小马孩"),
            )
          ]),
        ),
        const Center(
          child: Icon(
            MyFont.miaomiao,
            size: 248,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
