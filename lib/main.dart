import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab Bar'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.announcement),),
                Tab(icon: Icon(Icons.cake),),
                Tab(icon: Icon(Icons.cloud),),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(child: Text('1. Информация'),),
              Center(child: Text('2. Дни рождения'),),
              Center(child: Text('3. Облако'),)
            ],
          ),
        ),
      ),
    );

  }
}
