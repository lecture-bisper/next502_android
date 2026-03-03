
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_20260303_uandi/widgets/dday.dart';

import '../widgets/couple_image.dart';

// StatefulWidget 클래스를 상속받아 상태 관리 정보가 있는 자식 클래스 HomeScreen
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  // _HomeScreenState 클래스 타입의 객체 생성
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// State 클래스를 상속받아 setState() 를 호출할 수 있는 자식 클래스 _HomeScreenState
class _HomeScreenState extends State<HomeScreen> {

  // 첫번째 날짜 설정, 기본값으로 오늘을 입력
  DateTime firstDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 배경색 설정
      backgroundColor: Colors.pink[100],
      // SafeArea 를 사용하여 스테이터스바와 컨텐츠가 겹치지 않도록 함
      body:SafeArea(
        top: true, // 상단 스테이터스바와 겹치지 않도록 설정, true = 겹치지 않음
        bottom: false, // 하단 스테이터스바와 겹치지 않도록 설정, false = 겹칠 수 있음
        child: Column( // 자식 위젯을 세로로 배치하는 Column 컬럼 사용
          // 메인 정렬을 세로 방향 양끝으로 붙임 설정
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // 반대 정렬을 가로 방향으로 늘리기로 설정
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // 자식 위젯을 여러개 호출
          children: [
            // // 사용자가 만든 자식 위젯 _DDay 를 호출, 첫번째 매개변수로 onHeartPressed() 함수 전달, 두번째 매개변수로 위에서 설정한 첫번째 날을 전달
            // _DDay(onHeartPressed: onHeartPressed, firstDay: firstDay.subtract(Duration(days: 1))),
            // // 사용자가 만든 자식 위젯 _CoupleImage 를 호출
            // _CoupleImage(),

            // 재활용할 수 있는 형태의 위젯으로 변경하여 호출
            DDay(onHeartPressed: onHeartPressed, firstDay: firstDay.subtract(Duration(days: 1))),
            CoupleImage(),
          ],
        ),
      ),
    );
  }

  // IconButton 클릭 시 동작할 함수를 부모 클래스에서 선언하고 자식 위젯으로 전달함
  void onHeartPressed() {
    // IOS 스타일의 날짜 다이얼로그 사용
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.white,
            height: 300,
            // IOS 스타일의 날짜 선택기 위젯
            child: CupertinoDatePicker(
              // 날짜 선택 모드로 설정
              mode: CupertinoDatePickerMode.date,
              // 날짜가 변경 이벤트 등록
              // 익명함수로 DateTime 객체를 전달받음(사용자가 변경한 날짜 정보)
              onDateTimeChanged: (DateTime date) {
                // State 클래스를 상속받은 자식 클래스가 사용할 수 있는 상태 변경 함수 setState() 를 호출, 현재 위젯의 상태가 dirty 상태로 변경됨
                setState(() {
                  // 위에서 선언한 첫번째 날 정보를 사용자가 변경한 날짜로 변경
                  firstDay = date;
                });
              },
            ),
          ),
        );
      },
      barrierDismissible: true, // 다이얼로그 밖을 클릭 시 다이얼로그 닫기 설정
    );
  }
}

// StatelessWidget 클래스를 상속받아 상태 관리가 없는 자식 클래스 _DDay
// 부모 위젯이 StatefulWidget 을 상속받아 사용하므로 부모의 상태가 변경되어 UI 를 다시 그리면 자식 위젯도 함께 다시 그림
class _DDay extends StatelessWidget {
  // 멤버 변수 선언
  // IconButton 클릭 시 동작할 함수, 매개변수로 부모에게서 전달받음
  final GestureTapCallback onHeartPressed;
  // 매개변수로 받은 첫번째 날짜 정보를 저장할 멤버 변수
  final DateTime firstDay;

  _DDay({required this.onHeartPressed, required this.firstDay});

  @override
  Widget build(BuildContext context) {
    // 현재 적용된 테마 정보를 가져옴
    final textTheme = Theme.of(context).textTheme;
    // 현재 날짜 정보를 가져옴
    final now = DateTime.now();

    // 화면에 출력할 UI 부분
    return Column(
      children: [
        const SizedBox(height: 16.0,),
        // 가져온 테마정보에 입력된 displayLarge 를 적용
        Text('U&I', style: textTheme.displayLarge,),
        const SizedBox(height: 16.0,),
        Text('우리 처음 만난 날', style: textTheme.bodyLarge,),
        Text('${firstDay.year}.${firstDay.month}.${firstDay.day}', style: textTheme.bodyMedium,),
        const SizedBox(height: 16.0,),
        IconButton(
          iconSize: 60.0,
          // 부모에게서 매개변수로 받아온 함수를 버튼 클릭 이벤트 함수로 사용
          onPressed: onHeartPressed,
          icon: Icon(Icons.favorite, color: Colors.red,),
        ),
        const SizedBox(height: 16.0,),
        Text(
          'D+${DateTime(now.year, now.month, now.day).difference(firstDay).inDays + 1}',
          style: textTheme.displayMedium,
        ),
      ],
    );
  }
}

// StatelessWidget 클래스를 상속받아 상태 관리가 없는 자식 클래스 _CoupleImage
// 부모 위젯이 StatefulWidget 을 상속받아 사용하므로 부모의 상태가 변경되어 UI 를 다시 그리면 자식 위젯도 함께 다시 그림
class _CoupleImage extends StatelessWidget {
  const _CoupleImage({super.key});

  @override
  Widget build(BuildContext context) {
    // Center 를 사용하여 컨텐츠를 중앙에 출력
    return Center(
      // Image.asset() 이미지 리소스를 앱에 등록된 내부 리소스를 이용하여 가져옴
      child: Image.asset(
        'assets/images/middle_image.png',
        // MediaQuery 를 이용하여 화면의 크기를 쉽게 가져올 수 있음
        height: MediaQuery.of(context).size.height / 2,
      ),
    );
  }
}









