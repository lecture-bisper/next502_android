
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_20260304_random_dice/colors.dart';

class HomeScreen extends StatelessWidget {
  final int number;

  const HomeScreen({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset('assets/images/$number.png'),
        ),
        SizedBox(height: 32.0,),
        Text(
          '행운의 숫자',
          style: TextStyle(
            color: secondaryColor,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 12.0,),
        Text(
          '$number',
          style: TextStyle(
            color: primaryColor,
            fontSize: 60.0,
            fontWeight: FontWeight.w200,
          ),
        ),
      ],
    );
  }
}








