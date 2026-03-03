
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // PageView 를 컨트롤하기 위한 PageController 객체 생성
  final PageController pageController = PageController();

  // 위젯 생성 시 1번만 실행되는 메소드
  @override
  void initState() {
    super.initState();

    // 타이머 설정
    // Timer() : 지정한 시간 후에 콜백함수 실행, 1회용
    // Timer.periodic() : 주기적으로 지정한 시간 후에 콜백함수 실행, 반복 실행
    Timer.periodic(
      // 동작 시간을 3초 마다 한번씩 동작하도록 설정
      // days, hours, minutes, seconds, milliseconds, microseconds 를 사용할 수 있음
      Duration(seconds: 5),
      // 타이머 동작 시 실행될 콜백 함수
      (timer) {
        print("실행");
        // 현재 pageController 에 등록된 페이지 번호를 가져와서 PageView 에 표시될 다음 페이지 번호를 설정
        int? nextPage = pageController.page?.toInt(); // toInt() 를 사용하여 정수로 변경

        // 다음 페이지 번호가 없으면 종료
        if (nextPage == null) {
          return;
        }

        // 다음 페이지 번호가 4이면 페이지 번호를 0 으로 변경
        if (nextPage == 4) {
          nextPage = 0;
        }
        else {
          // 페이지 번호 1 증가
          nextPage++;
        }

        // PageController 클래스 객체를 사용하여 페이지 이동
        pageController.animateToPage(
          nextPage, // 이동할 페이지
          duration: Duration(seconds: 1), // 페이지 변경 시 걸리는 시간
          curve: Curves.easeIn); // 페이지 변경 시 애니메이션 형태
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // 상태바의 글자 색상 변경, dark/light
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      // PageView : 여러개의 위젯의 단독 페이지로 생성하고 가로/세로 스와이프로 페이지를 넘길 수 있도록 하는 위젯
      body: PageView(
        // PageView 를 컨트롤하기 위해서 위에서 생성한 PageController 클래스 객체를 controller 속성에 등록
        controller: pageController,
        // 샘플 리스트 생성, map 을 사용하여 이미지의 이름을 설정
        children: [1, 2, 3, 4, 5]
          .map((number) => Image.asset(
            'assets/img/image_$number.jpg',
            // 이미지의 크기를 비율을 유지하면서 화면에 꽉 차도록 확대
            fit: BoxFit.cover,
          ),
        ).toList(),
      ),
    );
  }
}











