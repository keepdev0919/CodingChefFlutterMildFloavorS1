import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Button Types',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Buttons'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ElevatedButton
              ElevatedButton(
                onPressed: () {
                  print('ElevatedButton pressed');
                },
                child: Text('ElevatedButton'),
              ),

              SizedBox(height: 16),

              // TextButton
              TextButton(
                onPressed: () {
                  print('TextButton pressed');
                },
                child: Text('TextButton'),
              ),

              SizedBox(height: 16),

              // OutlinedButton
              OutlinedButton(
                onPressed: () {
                  print('OutlinedButton pressed');
                },
                child: Text('OutlinedButton'),
              ),

              SizedBox(height: 16),

              // IconButton + 텍스트
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      print('IconButton pressed');
                    },
                    icon: Icon(Icons.favorite),
                  ),
                  Text('IconButton'),
                ],
              ),

              SizedBox(height: 16),

// FloatingActionButton + 텍스트
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      print('FloatingActionButton pressed');
                    },
                    child: Icon(Icons.add),
                    tooltip: 'Add',
                    mini: true, // 텍스트와 어울리게 크기 줄이고 싶으면
                  ),
                  SizedBox(width: 8),
                  Text('FloatingActionButton'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
