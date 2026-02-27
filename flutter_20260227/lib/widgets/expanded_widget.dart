
import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Expanded(
        //   child: Container(
        //     color: Colors.blue,
        //   ),
        // ),
        // Expanded(
        //   child: Container(
        //     color: Colors.red,
        //   ),
        // ),
        Container(
          height: 200.0,
          color: Colors.red,
        ),
        Container(
          height: 200.0,
          color: Colors.green,
        ),
        // 남은 영역을 모두 채워서 사용함
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}









