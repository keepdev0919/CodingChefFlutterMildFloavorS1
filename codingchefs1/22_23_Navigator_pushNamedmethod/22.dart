import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Second()));
              // 빌더를 사용해 context를 독립적으로 관리하여 트리구조에서 생길수있는 연쇄적 오류 가능성을 줄일수있다
            },
            child: Text('go to Second'),
          ),
        ));
  }
}

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext Secondcontext) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second'),
        ),
        body: Center(
          child: OutlinedButton(
            onPressed: () {
              Navigator.pop(Secondcontext);
            },
            child: Text('go to First'),
          ),
        ));
  }
}
