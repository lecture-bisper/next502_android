import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 항상 최상단에 위치
      home: Scaffold( // 항상 두번째 위치
        body: Container(
          // 너비를 지정하지 않을 경우 자식 위젯의 크기를 기준으로 함
          // width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFF99231),
          ),
          child: Row(
            // 주축 및 반대축을 모두 중앙 정렬
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                // 주축 및 반대축을 모두 중앙 정렬
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // 프로젝트에 등록된 이미지 가져오기
                  Image.asset(
                    'assets/logo.png',
                    width: 200.0,
                  ),
                  // 로딩 아이콘 출력
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}









