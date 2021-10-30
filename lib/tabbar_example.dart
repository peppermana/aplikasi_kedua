import 'package:flutter/material.dart';

class TabbarExample extends StatelessWidget {
  const TabbarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("tabbar example"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.message), text: "message"),
              Tab(icon: Icon(Icons.add_box_outlined), text: "status"),
              Tab(icon: Icon(Icons.call), text: "call"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("message screen"),
            ),
            Center(
              child: Text("status screen"),
            ),
            Center(
              child: Text("call screen"),
            ),
          ],
        ),
      ),
    );
  }
}
