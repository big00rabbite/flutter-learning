import 'package:flutter/material.dart';
import 'package:flutterdemo2/MyFont.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

//
class _CategoryPageState extends State<CategoryPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  //生命周期函数：当组件初始化时就会触发
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); //tab长度传入
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(MyFont.like1),
        ),
        backgroundColor: Colors.red,
        title: const Text("我的喜欢"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(MyFont.aixin))],
        //顶部词条滑动
        bottom: TabBar(
          // isScrollable: true, //当词条很多时可以实现滑动
          indicatorColor: Colors.yellow, //滑动条颜色
          indicatorWeight: 2, //滑动条宽度
          indicatorPadding: const EdgeInsets.all(3), //滑动条外边距
          indicatorSize: TabBarIndicatorSize.tab, //词条长度
          labelColor: Colors.black, //lable颜色
          unselectedLabelColor: Colors.white, //未被选中的lable颜色
          labelStyle: const TextStyle(fontSize: 16), //lable样式
          unselectedLabelStyle: const TextStyle(fontSize: 12), //被选中的lable样式
          //配置选中样式
          indicator: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(10),
          ),
          controller: _tabController,
          tabs: const [
            Tab(
              child: Text("运动"),
            ),
            Tab(
              child: Text("计算机"),
            ),
            Tab(
              child: Text("第五人格"),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
            children: const [
              ListTile(
                title: Text("我是运动列表"),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("我是计算机运动列表"),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("我是第五列表"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
