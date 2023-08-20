import 'package:flutter/material.dart';
import 'package:flutterdemo2/MyFont.dart';
import './taps/home.dart';
import './taps/category.dart';
import './taps/setting.dart';
import './taps/user.dart';
import './taps/heart.dart';

class taps extends StatefulWidget {
  const taps({super.key});

  @override
  State<taps> createState() => _tapsState();
}

class _tapsState extends State<taps> {
  int _currentIndex = 0;
  //实现页面
  final List<Widget> _pages = [
    const Homepage(),
    const CategoryPage(),
    const heartPage(),
    const SettingPage(),
    const userPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // leading: const Icon(MyFont.like1),
      //   backgroundColor: Colors.amber,
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(MyFont.aixin),
      //     )
      //   ],
      //   title: const Text("app"),
      // ),
      //配置侧边栏

      body: _pages[_currentIndex],

      //底部导航条
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red, //选中时的颜色
        iconSize: 35, //菜单大小
        type: BottomNavigationBarType.fixed, //底部有四个及以上图标用此属性
        currentIndex: _currentIndex, //图标选中显示
        //index为点击图标的索引值
        //onTap只能监听点击事件
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "首页",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "分类",
          ),
          BottomNavigationBarItem(
            icon: Icon(null),
            label: "心动",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "设置",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "用户",
          ),
        ],
      ),
      //中心按钮
      floatingActionButton:
          //存放按钮容器
          Container(
        height: 72,
        width: 72,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(top: 4),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(30),
        ),
        child: FloatingActionButton(
          backgroundColor:
              _currentIndex == 2 ? Colors.red : Colors.blue, //选中时颜色改变
          child: const Icon(MyFont.like),
          onPressed: () {
            setState(() {
              _currentIndex = 2;
            });
          },
        ),
      ),
      //按钮位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
