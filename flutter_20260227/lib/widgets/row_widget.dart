
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // 부모 위젯의 세로 크기를 최대로 늘림
      height: double.infinity,
      // Row 위젯 사용, 자식 위젯을 여러개 가지는 위젯, 자식 위젯을 가로로 배치
      child: Row(
        // 주축에 대한 설정, start : 왼쪽 정렬, center : 중앙 정렬, end : 오른쪽 정렬, spaceBetween : 양 끝으로 정렬, spaceAround : 양 끝을 중앙으로 정렬, spaceEvenly : 양 끝을 균등하게 정렬
        mainAxisAlignment: MainAxisAlignment.center,
        // 반대축에 대한 설정, start : 상단 정렬, center : 중앙 정렬, end : 하단 정렬, stretch : 남은 공간 채우기
        crossAxisAlignment: CrossAxisAlignment.center,
        // Row 위젯의 자식 위젯을 가지는 children 속성, 리스트로 받음
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
          const SizedBox(width: 10.0,),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.green,
          ),
          const SizedBox(width: 10.0,),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}









