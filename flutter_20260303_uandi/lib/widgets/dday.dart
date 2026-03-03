
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DDay extends StatelessWidget {
  final GestureTapCallback onHeartPressed;
  final DateTime firstDay;

  const DDay({super.key, required this.onHeartPressed, required this.firstDay});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final now = DateTime.now();

    return Column(
      children: [
        const SizedBox(height: 16.0,),
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







