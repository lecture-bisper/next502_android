
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_20260304_vid_player/widgets/app_name.dart';
import 'package:flutter_20260304_vid_player/widgets/custom_video_player.dart';
import 'package:flutter_20260304_vid_player/widgets/logo.dart';
import 'package:image_picker/image_picker.dart';

// 동영상의 상태 관리를 하기 위해서 StatefulWidget 상속받아 사용, setState() 사용 가능
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // 동영상이 저장될 변수, setState()로 상태가 변경될 변수
  XFile? video;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          // 선택한 동영상이 없으면 renderEmpty() 호출, 있으면 renderVideo() 호출
          // 소스를 직접 입력 시 소스코드가 복잡하기 때문에 함수로 따로 빼서 사용
          child: video == null ? renderEmpty() : renderVideo(),
        ),
      ),
    );
  }

  // 동영상이 없을 경우 동작할 메소드, UI 관련이기 때문에 반환값을 Widget 으로 함
  Widget renderEmpty() {
    return Container(
      // 화면 너비를 최대로 사용
      width: MediaQuery.of(context).size.width,
      decoration: getBoxDecoration(), // 화면 모양 설정, 미리 정의함 함수를 입력
      // 자식 위젯을 Column 으로 사용하여 여러개의 위젯을 세로로 배치
      child: Column(
        // 메인 정렬 방향을 세로 중앙으로 설정
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 자식 위젯 로딩
          Logo(onTap: onNewVideoPressed,), // 사용자가 만든 Logo 위젯 호출
          SizedBox(height: 30.0,),
          AppName() // 사용자가 만든 AppName 위젯 호출
        ],
      ),
    );
  }

  // 동영상이 있을 경우 동작할 메소드, UI 관련이기 때문에 반환값을 Widget 으로 함
  Widget renderVideo() {
    return Container(
      // 사용자가 만든 위젯
      child: CustomVideoPlayer(
        video: video!,
        onNewVideoPressed: onNewVideoPressed,
      ),
    );
  }

  // 동영상 파일이 없을 경우 화면 모양 설정
  BoxDecoration getBoxDecoration() {
    return BoxDecoration(
      // 그라데이션으로 색상 적용
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xff2a3a7c),
          Color(0xff000118),
        ],
      ),
    );
  }

  // 자식 위젯에 넘겨줄 함수, async/await 를 사용하여 비동기 프로그래밍 사용
  void onNewVideoPressed() async {
    // 동영상을 선택하기 위한 다이얼로그 출력, 위치는 안드로이드 시스템의 갤러리(이미지, 동영상)
    final video = await ImagePicker().pickVideo(
      source: ImageSource.gallery,
    );

    // 선택한 영상이 있을 경우 setState() 를 사용하여 동영상 파일 정보를 저장
    if (video != null) {
      // 클래스의 멤버 변수인 video 에 사용자가 선택한 동양상 파일 정보를 저장
      // setState() 가 호출되어 상태가 dirty 가 되고 build() 자동 실행됨
      setState(() => this.video = video);
    }
  }
}










