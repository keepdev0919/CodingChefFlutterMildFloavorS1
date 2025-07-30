import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch:
            Colors.red, //코딩셰프는 이코드로만 해서 앱바 색 바뀌었는데 나는 안돼서 아래 코드까지 추가함
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red, // 앱바의 배경색을 빨간색으로 설정
          foregroundColor: Colors.white, // 앱바의 글자색을 흰색으로 설정
        ),
      ),
      //primarySwatch는 기본테마색을 설정하는것

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
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Show me'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(
                  'Hello',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.teal,
                duration: Duration(milliseconds: 1000) //메시지 전달시간 지정. 기본 4초
                ),
          );
        },
      ),
    );
  }
}
