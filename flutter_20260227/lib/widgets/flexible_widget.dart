import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {

  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          // 남은 공간의 비율을 설정, 다른 Flexible 위젯의 flex 속성 값을 모두 합한 후 현재 Flexible 위젯의 비율
          flex: 3,
          child: Container(
            color: Colors.red,
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }

}









