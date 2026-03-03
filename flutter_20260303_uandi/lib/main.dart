import 'package:flutter/material.dart';
import 'package:flutter_20260303_uandi/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ThemeData : 앱의 기본 테마를 설정하는 클래스
      // 플러터가 기본으로 제공하는 대부분의 위젯의 기본 스타일을 지정할 수 있음
      theme: ThemeData(
        // 기본 글씨체 설정
        fontFamily: 'sunflower',
        // TextTheme : 글자 테마를 설정하는 클래스
        textTheme: TextTheme(
          // TextTheme 에서 기본적으로 제공하는 텍스트 스타일
          // displayLarge, displayMedium, displaySmall : 큰 제목
          // headlineLarge, headlineMedium, headlineSmall : 중간 제목
          // bodyLarge, bodyMedium, bodySmall : 일반 텍스트
          // labelLarge, labelMedium, labelSmall : 작은 텍스트
          displayLarge: TextStyle(
            color: Colors.white,
            fontSize: 80.0,
            fontWeight: FontWeight.w700,
            fontFamily: 'parisienne', // 폰트 설정
          ),
          displayMedium: TextStyle(
            color: Colors.white,
            fontSize: 50.0,
            fontWeight: FontWeight.w700,
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      title: 'D + Day App',
      home: HomeScreen(),
    );
  }
}

