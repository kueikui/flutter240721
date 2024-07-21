import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:try240721/main.dart';
import 'package:try240721/HomePage.dart';
void main() {
  runApp(MaterialApp(
    home: HistoricalRecord(),
  ));
}

class  HistoricalRecord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('跌倒紀錄'),
        backgroundColor: Color(0xFFF5E3C3),
      ),
      body: Center(
        child: Text(
          '這是跌倒紀錄頁面',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
/*bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首頁'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: '門市據點'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: '最新消息'),
          BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: '線上訂餐'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '會員專區'),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.orange,
        onTap: (index) {
          // 底部导航栏切换操作
        },
      ),*/