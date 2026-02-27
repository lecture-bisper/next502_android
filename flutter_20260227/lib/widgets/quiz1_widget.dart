import 'package:flutter/material.dart';

// 문제 1) 제공한 ppt 5페이지에 있는 UI 를 구현하세요

class Quiz1Widget extends StatelessWidget {
  const Quiz1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return
    Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.lightBlueAccent,
          ),
        ),
        Container(
          height: 250.0,
          color: Colors.orangeAccent,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_left),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('앞으로'),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_right),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('뒤로'),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.home),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('홈'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}









