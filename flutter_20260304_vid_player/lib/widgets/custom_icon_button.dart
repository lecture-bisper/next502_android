
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final GestureTapCallback onPressed; // 부모가 전달한 터치 이벤트용 메소드
  final IconData iconData; // 부모가 전달한 아이콘 모양 정보

  const CustomIconButton({super.key, required this.onPressed, required this.iconData});

  @override
  Widget build(BuildContext context) {
    // IconButton 위젯으로 아이콘을 출력
    return IconButton(
      onPressed: onPressed, // 클릭 이벤트에 부조가 전달한 터치 이벤트 메소드를 적용
      iconSize: 30.0,
      color: Colors.white,
      icon: Icon(iconData), // icon 모양에 부모가 전달한 icon 모양 정보를 적용
    );
  }
}









