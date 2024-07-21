import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:try240721/main.dart';
import 'package:try240721/HomePage.dart';
import 'package:try240721/HistoricalRecord.dart';

void main() {
  runApp(MaterialApp(
    home: PersonalInfo(),
  ));
}

class PersonalInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('個人資料'),
      //   backgroundColor: Color(0xFFF5E3C3),
      // ),
      body: Column(
        children: [
          Container(
            height: 100,
            color: Color(0xFFF5E3C3),
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                '這12345',
                style: TextStyle(fontSize: 24, height: 5),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text('手機'),
                  subtitle: Text(''),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // 点击处理逻辑
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('姓名'),
                  subtitle: Text(''),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // 点击处理逻辑
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('生日'),
                  subtitle: Text(''),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // 点击处理逻辑
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('性別'),
                  subtitle: Text(''),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // 点击处理逻辑
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('EMAIL'),
                  subtitle: Text(''),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // 点击处理逻辑
                  },
                ),
                Divider(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首頁'),
          BottomNavigationBarItem(icon: Icon(Icons.history_edu), label: '跌倒紀錄'),
          BottomNavigationBarItem(icon: Icon(Icons.lightbulb_outline), label: '123'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_outlined), label: '123'),
          BottomNavigationBarItem(icon: Icon(Icons.person_sharp), label: '個人資料'),
        ],
        currentIndex: 4,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HistoricalRecord()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else if (index == 4) {
            // 当前页面，无需导航
          }
        },
      ),
    );
  }
}
