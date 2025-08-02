import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: C(),
    );
  }
}

class C extends StatelessWidget {
  const C({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("페이지 C")),
      body: Center(child: Text("이건 C 페이지야")),
    );
  }
}
