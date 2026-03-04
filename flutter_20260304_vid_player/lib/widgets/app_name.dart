
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// logo 이미지 아래의 'videoplayer' 텍스트 화면
class AppName extends StatelessWidget {
  const AppName({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      color: Colors.white,
      fontSize: 30.0,
      fontWeight: FontWeight.w300,
    );

    return Row(
      // 자식 위젯을 가로 중앙으로 정렬
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 위에 정의한 스타일 그대로 사용
        Text('VIDEO', style: textStyle,),
        // 위에 정의한 스타일에서 폰트 굵기만 변경하여 사용
        Text('PLAYER', style: textStyle.copyWith(fontWeight: FontWeight.w700),),
      ],
    );
  }
}









