import 'package:flutter/material.dart';
import 'package:flutter_20260227_blog_web_app/screens/home_screen.dart';

void main() {
  // webview 는 원래 위젯의 상태 정보가 필요함
  // 현재는 StatelessWidget 를 상속받아 상태 정보 없이 사용하기 때문에
  // 플러터 프레임워크가 앱을 실행할 준비가 될 때까지 기다림
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
