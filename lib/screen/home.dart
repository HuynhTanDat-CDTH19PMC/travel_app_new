import 'package:flutter/material.dart';

import 'dang_nhap.dart';
import 'chi_tiet_dia_diem.dart';

void main() {
  runApp(const home());
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Trang chủ',
                ),
                Tab(
                  icon: Icon(Icons.room),
                  text: 'Địa điểm',
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: 'Bạn bè',
                ),
                Tab(
                  icon: Icon(Icons.notifications),
                  text: 'Thông báo',
                ),
                Tab(
                  icon: Icon(Icons.menu),
                  text: 'Menu',
                ),
              ],
            ),
            title: Text('Travel App'),
          ),
        ),
      ),
    );
  }
}
