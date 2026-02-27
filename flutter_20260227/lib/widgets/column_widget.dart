
import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // 부모 위젯의 가로 크기를 최대로 늘림
      width: double.infinity,
      // Column 위젯 사용, 자식 위젯을 여러 개 가지는 위젯, 자식 위젯을 세로로 배치
      child: Column(
        // Column 위젯의 주축 설정, start : 상단 정렬, center : 중앙 정렬, end : 하단 정렬, spaceBetween : 상하단 끝으로 정렬, spaceAround : 상하단 중앙으로 정렬, spaceEvenly : 상하단 여백 균등
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // Column 위젯의 반대축 설정, start : 왼쪽 정렬, center : 중앙 정렬, end : 오른쪽 정렬, stretch : 남은 공간 채우기
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.red,
          ),
          const SizedBox(height: 10.0,),
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.green,
          ),
          const SizedBox(height: 10.0,),
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }

}









