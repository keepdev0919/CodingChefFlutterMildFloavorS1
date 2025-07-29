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
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('hi'),
            ));
          },
          child: Text(
            'Show me',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Appbar icon menu'),
    //     centerTitle: true,
    //     elevation: 0.0,
    //     // 앱바의 그림자 효과를 없앰 이라는데 솔직히 잘 모르겠음
    //     actions: [
    //       IconButton(
    //         // actions는 앱바의 오른쪽에 위치하는 위젯
    //         icon: const Icon(Icons.shopping_cart),
    //         onPressed: () {
    //           print('Shopping cart button is clicked');
    //         },
    //       ),
    //       IconButton(
    //         icon: const Icon(Icons.search),
    //         onPressed: () {
    //           print('Search button is clicked');
    //         },
    //       ),
    //     ],
    //   ),
    //   drawer: Drawer(
    //       //drawer은 icon 설정안하고도 그냥 누르면 메뉴가 나옴
    //       child: ListView(
    //     padding: EdgeInsets.zero, // ListView의 기본 패딩을 제거
    //     children: [
    //       UserAccountsDrawerHeader(
    //         currentAccountPicture: CircleAvatar(
    //           backgroundImage: AssetImage('assets/images/keepdev.jpg'),
    //           backgroundColor: Colors.white,
    //         ),
    //         otherAccountsPictures: [
    //           CircleAvatar(
    //             backgroundImage: AssetImage('assets/images/ChartDog.jpg'),
    //             backgroundColor: Colors.white,
    //           ),
    //           CircleAvatar(
    //             backgroundImage: AssetImage('assets/images/AiGrandFather.jpg'),
    //             backgroundColor: Colors.white,
    //           ),
    //         ],
    //         accountName: Text('KeepDev'),
    //         accountEmail: Text('keepdev0919@gmail.com'),
    //         onDetailsPressed: () {
    //           // onDetailsPressed는 계정 정보 클릭시 이벤트
    //           print('Details pressed');
    //         },
    //         // decoration: BoxDecoration(
    //         //   //userAccountsDrawerHeader의 배경색 설정
    //         //   color: Colors.red[800],
    //         //   borderRadius: BorderRadius.only(
    //         //     topLeft: Radius.circular(40.0),
    //         //     bottomLeft: Radius.circular(40.0),
    //         //     bottomRight: Radius.circular(40.0),
    //         //   ),
    //         // ),
    //       ),
    //       ListTile(
    //         leading: Icon(Icons.home, color: Colors.grey[850]),
    //         title: Text('Home'),
    //         onTap: () {
    //           print('Home is clicked');
    //           // Navigator.pop(context); // 메뉴를 닫음
    //         },
    //         trailing: Icon(Icons.add),
    //       ),
    //       ListTile(
    //         leading: Icon(Icons.home, color: Colors.grey[850]),
    //         title: Text('Setting'),
    //         onTap: () {
    //           print('Setting is clicked');
    //         },
    //         trailing: Icon(Icons.add),
    //       ),
    //       ListTile(
    //         leading: Icon(Icons.question_answer),
    //         title: Text('Q&A'),
    //         onTap: () {
    //           print('Q&A is clicked');
    //         },
    //         trailing: Icon(Icons.add),
    //       ),
    //     ],
    //   )),
    // );
 
