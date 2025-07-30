import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

//플러터 토스트 라이브러리 사용이 필요함. pubspec.yaml에 등록 필요
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toast',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast message'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            flutterToast();
          },
          child: Text('Toast'),
        ),
      ),
    );
  }
}

void flutterToast() {
  print("토스트 실행됨");
  Fluttertoast.showToast(
      msg: "Flutter",
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      textColor: Colors.white,
      fontSize: 20.0,
      toastLength: Toast.LENGTH_SHORT);
}
