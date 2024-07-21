import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:try240721/HomePage.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled=false;
    return Scaffold(
      //appBar: AppBar(
        //title: Text('Demo'),
        //backgroundColor: Color(0xFF81D4FA),
      //),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 40), // 添加间距
                    height: 100, // 设置logo高度
                    child: Icon(
                      Icons.account_circle,
                      size: 100, // 设置图标大小
                      color: Color(0xFF4FC3F7), // 设置图标颜色
                    ),
                  ),
                  Text(
                    '全方位照護守護者',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),//全方位照護守護者
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email_outlined),//https://www.fluttericon.cn/v
                      labelText: '電子信箱',
                    ),
                  ),//電子信箱
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock_outlined),
                      labelText: '密碼',
                    ),
                    obscureText: true,
                  ),//密碼
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Text(' 登入'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF4FC3F7), // 按钮颜色
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),//登入
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // 注册按钮操作
                    },
                    child: Text('立即註冊'),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent, // 无背景颜色
                      textStyle: TextStyle(fontSize: 18),
                      shadowColor: Colors.transparent, // 去除阴影
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // 注册按钮操作
                    },
                    child: Text('忘記密碼'),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent, // 无背景颜色
                      textStyle: TextStyle(fontSize: 18),
                      shadowColor: Colors.transparent, // 去除阴影
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}