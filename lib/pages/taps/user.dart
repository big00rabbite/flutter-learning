import 'package:flutter/material.dart';
//导入缓冲组件
import '../tools/KeepAliveWrapper.dart';

class userPage extends StatefulWidget {
  const userPage({super.key});

  @override
  State<userPage> createState() => _userPageState();
}

class _userPageState extends State<userPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          elevation: 1, //词条底部阴影
          backgroundColor: Colors.white,
          // title: const Text("虚假的用户"),
          centerTitle: true, //title居中
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.red, //lable颜色
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.black12,
            controller: _tabController,
            tabs: const [
              Tab(
                child: Text("关注"),
              ),
              Tab(
                child: Text("喜欢"),
              ),
              Tab(
                child: Text("在乎"),
              ),
              Tab(
                child: Text("想念"),
              ),
              Tab(
                child: Text("中意"),
              ),
              Tab(
                child: Text("稀罕"),
              ),
              Tab(
                child: Text("狠心"),
              ),
              Tab(
                child: Text("高冷"),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        //将需要缓冲的内容放在缓冲组件中
        const KeepAliveWrapper(
          child: Text(
            "只关注小马孩",
            style: TextStyle(
              fontSize: 40,
              fontFamily: "正楷",
              color: Color.fromARGB(255, 252, 0, 84),
            ),
          ),
        ),
        KeepAliveWrapper(
          child: ListView(
            children: const [
              ListTile(
                title: Text(
                  "最喜欢小马孩了！",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: "正楷",
                    color: Colors.pink,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "最喜欢小马孩了！",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: "正楷",
                    color: Color.fromARGB(255, 237, 43, 108),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "最喜欢小马孩了！",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: "正楷",
                    color: Color.fromARGB(255, 236, 82, 133),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "最喜欢小马孩了！",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: "正楷",
                    color: Color.fromARGB(255, 196, 111, 139),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "最喜欢小马孩了！",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: "正楷",
                    color: Color.fromARGB(255, 118, 55, 76),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "最喜欢小马孩了！",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: "正楷",
                    color: Color.fromARGB(255, 108, 42, 64),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "最喜欢小马孩了！",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: "正楷",
                    color: Color.fromARGB(255, 129, 28, 62),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "最喜欢小马孩了！",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: "正楷",
                    color: Color.fromARGB(255, 172, 16, 68),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "最喜欢小马孩了！",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: "正楷",
                    color: Color.fromARGB(255, 159, 12, 61),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "最喜欢小马孩了！",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: "正楷",
                    color: Color.fromARGB(255, 208, 11, 77),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "最喜欢小马孩了！",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: "正楷",
                    color: Color.fromARGB(255, 239, 9, 85),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "最喜欢小马孩了！",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: "正楷",
                    color: Color.fromARGB(255, 254, 2, 86),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Text(
          "只关注小马孩",
          style: TextStyle(
            fontSize: 40,
            fontFamily: "正楷",
            color: Colors.pink,
          ),
        ),
        const Text(
          "想念小马孩了",
          style: TextStyle(
            fontSize: 40,
            fontFamily: "正楷",
            color: Colors.pink,
          ),
        ),
        const Text(
          "中意小马孩",
          style: TextStyle(
            fontSize: 40,
            fontFamily: "正楷",
            color: Colors.pink,
          ),
        ),
        const Text(
          "最稀罕小马孩了",
          style: TextStyle(
            fontSize: 40,
            fontFamily: "正楷",
            color: Colors.pink,
          ),
        ),
        const Text(
          "小马孩好狠心",
          style: TextStyle(
            fontSize: 40,
            fontFamily: "正楷",
            color: Colors.pink,
          ),
        ),
        const Text(
          "小马孩真高冷",
          style: TextStyle(
            fontSize: 40,
            fontFamily: "正楷",
            color: Colors.pink,
          ),
        ),
      ]),
    );
  }
}
