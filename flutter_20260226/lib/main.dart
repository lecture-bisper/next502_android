import 'package:flutter/material.dart';

void main() {
  // 실제 플러터 앱을 실행하는 함수
  runApp(
    // 구글의 안드로이드 디자인 가이드인 머티리얼 디자인 위젯 사용
    MaterialApp(
      // 스케폴드 위젯 사용
      home: Scaffold(
        // 모든 위젯은 child 혹은 children 속성이 둘 중 하나가 존재 (둘다 가지고 있는 위젯은 없음)
        // child : 자식 위젯을 1개만 가질 수 있음
        // children : 자식 위젯을 여러개 가질 수 있음, 리스트로 받음

        // child 속성을 사용하여 하나의 자식 위젯을 화면에 출력
        // body: Center(
        //   // Text 위젯 사용
        //   child: Text(
        //     'Hello Next 502',
        //     // 텍스트 스타일 관련 위젯 사용
        //     style: TextStyle(
        //       color: Colors.blue,
        //       fontSize: 24.0,
        //       fontWeight: FontWeight.w700,
        //     ),
        //   ),
        // ),

        // children 속성을 사용하여 여러개의 자식 위젯을 화면에 출력

        // body: SizedBox(
        //   width: double.infinity,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Text('Hello Next 502'),
        //         Text('children 을 통해서'),
        //         Text('여러개의 자식 위젯을 가질 수 있음'),
        //       ],
        //     ),
        // ),

        // body: SizedBox(
        //   width: double.infinity,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       TextButton(
        //         onPressed: () {},
        //         style: TextButton.styleFrom(
        //           foregroundColor: Colors.red,
        //         ),
        //         child: Text('텍스트 버튼'),
        //       ),
        //       OutlinedButton(
        //         onPressed: () {},
        //         style: OutlinedButton.styleFrom(
        //           foregroundColor: Colors.red,
        //         ),
        //         child: Text('아웃라인드 버튼'),
        //       ),
        //       ElevatedButton(
        //         onPressed: (){},
        //         style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        //         child: Text('엘리베이티드 버튼')
        //       ),
        //       IconButton(
        //         onPressed: (){},
        //         icon: Icon(Icons.home),
        //       ),
        //     ],
        //   ),
        // ),

        body: Center(
          child: GestureDetector(
            onTap: () {
              print('한번 탭 하기');
            },
            onDoubleTap: () {
              print('빠르게 2번 탭 하기');
            },
            onLongPress: () {
              print('탭 후 길게 누르고 있기');
            },
            onVerticalDragStart: (details) {
              print('상하 스크롤 시작');
            },
            onVerticalDragEnd: (details) {
              print('상하 스크롤 끝');
            },
            onHorizontalDragStart: (details) {
              print('좌우 스크롤 시작');
            },
            onHorizontalDragEnd: (details) {
              print('좌우 스크롤 끝');
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              width: 400.0,
              height: 400.0,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('플로팅 액션 버튼 클릭!!');
          },
          child: Text('클릭'),
        ),
      ),
    ),
  );
}









