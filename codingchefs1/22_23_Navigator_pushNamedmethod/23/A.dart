import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: A(),
    );
  }
}

class A extends StatelessWidget {
  const A({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'b');
              },
              child: Text('Go to B'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'c');
              },
              child: Text('Go to c'),
            ),
          ],
        ),
      ),
    );
  }
}
