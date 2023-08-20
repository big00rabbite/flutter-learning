import 'package:flutter/material.dart';
import 'package:flutterdemo2/pages/Mylove.dart';
import '../../MyFont.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(MyFont.like1),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            onPressed: () {
              //跳转路由
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const MylovePage();
              }));
            },
            icon: const Icon(MyFont.aixin),
          )
        ],
        title: const Text("app"),
      ),
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 255, 177, 203), //侧边栏背景颜色
        child: Column(
          children: [
            //保证头部平铺
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child:
                        //     //头部
                        //     DrawerHeader(
                        //   decoration: BoxDecoration(
                        //       color: Colors.black12, //头部背景颜色
                        //       image: DecorationImage(
                        //         image: AssetImage("images/云.jpg"),
                        //         fit: BoxFit.cover, //图片占满头部
                        //       )),
                        //   child: Text("data"),
                        // ),

                        //调用内置样式实现用户信息展示
                        UserAccountsDrawerHeader(
                      accountName: Text("子休"), //用户名
                      accountEmail: Text("2820253238@qq.com"), //用户邮箱
                      //用户头像
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage("images/头像/园丁.jpg"),
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/云.jpg"),
                          fit: BoxFit.cover, //图片占满头部
                        ),
                      ),
                    ))
              ],
            ),
            //列表
            ListTile(
              leading: CircleAvatar(
                child: Icon(MyFont.maio),
              ),
              title: Text("猫猫震惊"),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(MyFont.maio),
              ),
              title: Text("猫猫震惊"),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(MyFont.maio),
              ),
              title: Text("猫猫震惊"),
            ),
            Divider(),
          ],
        ),
      ),
      body: ListView(
        children: [
          Card(
              //配置卡片形状
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 20, //卡片阴影深度
              shadowColor: Colors.grey, //阴影颜色
              color: Colors.white, //背景颜色
              child: const Column(
                children: [
                  ListTile(
                    title: Text(
                      "子休",
                      style: TextStyle(fontSize: 28),
                    ),
                    subtitle: Text("第五人格五阶求生者"),
                  ),
                  Divider(), //分界线
                  ListTile(
                    title: Text("电话：15523238861"),
                  ),
                  ListTile(
                    title: Text("地址：重庆工商大学"),
                  ),
                ],
              )),
          Card(
              //配置卡片形状
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 20, //卡片阴影深度
              shadowColor: Colors.grey, //阴影颜色
              color: Colors.white, //背景颜色
              child: const Column(
                children: [
                  ListTile(
                    title: Text(
                      "子休",
                      style: TextStyle(fontSize: 28),
                    ),
                    subtitle: Text("第五人格五阶求生者"),
                  ),
                  Divider(), //分界线
                  ListTile(
                    title: Text("电话：15523238861"),
                  ),
                  ListTile(
                    title: Text("地址：重庆工商大学"),
                  ),
                ],
              )),
          Card(
              //配置卡片形状
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 20, //卡片阴影深度
              shadowColor: Colors.grey, //阴影颜色
              color: Colors.white, //背景颜色
              child: const Column(
                children: [
                  ListTile(
                    title: Text(
                      "子休",
                      style: TextStyle(fontSize: 28),
                    ),
                    subtitle: Text("第五人格五阶求生者"),
                  ),
                  Divider(), //分界线
                  ListTile(
                    title: Text("电话：15523238861"),
                  ),
                  ListTile(
                    title: Text("地址：重庆工商大学"),
                  ),
                ],
              )),
          Card(
              //配置卡片形状
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 20, //卡片阴影深度
              shadowColor: Colors.grey, //阴影颜色
              color: Colors.white, //背景颜色
              child: const Column(
                children: [
                  ListTile(
                    title: Text(
                      "子休",
                      style: TextStyle(fontSize: 28),
                    ),
                    subtitle: Text("第五人格五阶求生者"),
                  ),
                  Divider(), //分界线
                  ListTile(
                    title: Text("电话：15523238861"),
                  ),
                  ListTile(
                    title: Text("地址：重庆工商大学"),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
