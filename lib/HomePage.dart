import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:try240721/main.dart';
import 'package:try240721/HistoricalRecord.dart';
void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        //leading: IconButton(
        //icon: Icon(Icons.menu),
        //onPressed: () {
        // 打开菜单操作
        //},
        //),
        title: Text('首頁'),
        backgroundColor: Color(0xFFF5E3C3), // 设置AppBar背景颜色
        //actions: [
        //IconButton(
        //icon: Icon(Icons.notifications),
        //onPressed: () {
        // 通知操作
        //},
        //),
        //],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Container(
              //color: Color(0xFFFFF0E0),
              //padding: EdgeInsets.all(16),
              // child: Column(
              //   children: [
              //     Image.asset('lib/images/123.jpg',
              //       width: 200, // 设置图片宽度
              //       height: 100, // 设置图片高度
              //       fit: BoxFit.cover, // 设置图片填充方式
              //     ), // 替换为您的图片路径
              //     Text(
              //       '12345667',
              //       style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              //     ),
              //     Text('07/15 - 08/31'),
              //   ],
              // ),
            //),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(16),
              children: [
                _buildGridItem(Icons.history_edu, '跌倒紀錄', context),
                _buildGridItem(Icons.lightbulb_outline, '知識補充', context),
                _buildGridItem(Icons.chat_outlined, '123', context),
                _buildGridItem(Icons.person_sharp, '個人資料', context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(IconData icon, String label,BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.white,
      child: InkWell(//InkWell点击其子元素时创建水波纹效果
        onTap: () {
          if (label == '跌倒紀錄') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HistoricalRecord()),
            );
          }
        },
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 48, color: Colors.orange),
              SizedBox(height: 8),
              Text(label, style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
