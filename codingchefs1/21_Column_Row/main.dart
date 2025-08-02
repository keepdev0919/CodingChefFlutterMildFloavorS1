import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: Text('1'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text('2'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text('3'),
            ),
          ],
        ),
      )),
    );
  }
}
