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
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        // 앱바의 그림자 효과를 없앰 이라는데 솔직히 잘 모르겠음
        leading: IconButton(
          // leading은 앱바의 왼쪽에 위치하는 위젯
          icon: const Icon(Icons.menu),
          onPressed: () {
            print('Menu icon pressed');
          },
        ),
        actions: [
          IconButton(
            // actions는 앱바의 오른쪽에 위치하는 위젯
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shopping cart button is clicked');
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print('Search button is clicked');
            },
          ),
        ],
      ),
    );
  }
}
