import 'package:flutter/material.dart';
import 'package:flutter_20260227/widgets/column_widget.dart';
import 'package:flutter_20260227/widgets/expanded_widget.dart';
import 'package:flutter_20260227/widgets/flexible_widget.dart';
import 'package:flutter_20260227/widgets/quiz1_widget.dart';
import 'package:flutter_20260227/widgets/row_widget.dart';
import 'package:flutter_20260227/widgets/stack_widget.dart';

void main() {
  // runApp() : 플러터 앱 실행 함수
  // runApp(const MyApp());
  // runApp(const MyApp2());
  runApp(const MyApp3());

}

class MyApp3 extends StatelessWidget {
  const MyApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('배치 위젯 사용'),),
        // body: RowWidget(),
        // body: ColumnWidget(),
        // body: FlexibleWidget(),
        // body: ExpandedWidget(),
        // body: StackWidget(),
        body: Quiz1Widget(),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.red,
          height: 200.0,
        ),
      ),
      // home: SafeArea(
      //   top: true,
      //   bottom: true,
      //   left: true,
      //   right: true,
      //   child: Scaffold(
      //     body: Container(
      //       color: Colors.red,
      //       height: 200.0,
      //     ),
      //   ),
      // ),
    );
  }
}

// 사용자가 생성한 플러터 화면 클래스
// StatelessWidget 클래스를 상속받아 사용 (상태 관리가 없는 위젯, 한번 화면을 그리고 변경 없음)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // StatelessWidget 클래스를 상속받아 화면 UI 를 그리는 메소드
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              // 자식 위젯을 담기 위한 빈 공간을 설정하는 위젯
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(width: 16.0, color: Colors.black),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                height: 200.0,
                width: 100.0,
              ),
              SizedBox(
                height: 50.0,
                width: 100.0,
                child: Container(
                  color: Colors.red,
                ),
              ),
              Container(
                color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.all(16.0,),
                  child: Container(
                    color: Colors.red,
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.black,
                child: Container(
                  color: Colors.blue,
                  margin: EdgeInsets.only(top: 10.0, right: 20.0, bottom: 30.0, left: 40.0),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      color: Colors.red,
                      width: 50.0,
                      height: 50.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}










