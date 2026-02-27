import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 300.0,
          height: 300.0,
          color: Colors.red,
        ),
        Visibility(
          visible: false,
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          ),
        ),
        Container(
          width: 100.0,
          height: 100.0,
          color: Colors.blue,
        ),
      ],
    );
  }
}









