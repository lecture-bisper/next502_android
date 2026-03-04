import 'package:flutter/cupertino.dart';

class Logo extends StatelessWidget {
  // 사용자 터치 관련 함수를 멤버 변수로 선언, 부모가 전달한 onNewVideoPressed() 메소드를 저장
  final GestureTapCallback onTap;

  const Logo({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    // 사용자 터치 이벤트를 감지하는 GestureDetector 를 사용
    return GestureDetector(
      onTap: onTap, // onTap 이벤트에 부모에게서 전달받은 메소드 onNewVideoPressed() 를 저장한 멤버 변수 onTap() 을 지정
      child: Image.asset('assets/images/logo.png'), // 사용할 이미지 설정, onTap 이벤트가 지정한 이미지에 등록됨
    );
  }
}









