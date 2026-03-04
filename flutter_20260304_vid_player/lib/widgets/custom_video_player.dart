import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_20260304_vid_player/widgets/custom_icon_button.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

// StatefulWidget 상속받아 상태 관리를 하는 클래스
class CustomVideoPlayer extends StatefulWidget {
  // 멤버 변수 선언
  final XFile video; // 동영상 파일 정보
  final GestureTapCallback onNewVideoPressed; // 터치 이벤트

  const CustomVideoPlayer({super.key, required this.video, required this.onNewVideoPressed});

  @override
  State<StatefulWidget> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  // 가져온 video_player 라이브러리에서 제공하는 동영상 재생 컨트롤러
  VideoPlayerController? videoPlayerController;

  // 초기화 메소드, 현재 위젯을 처음 호출 시 단 한번만 실행
  @override
  void initState() {
    super.initState();
    initController();
  }

  void initController() async {
    // 부모에게서 전달받은 동영상 파일 정보를 사용하여 VideoPlayerController 초기화 함
    final videoController = VideoPlayerController.file(File(widget.video.path),);
    await videoController.initialize();

    // 추가 이벤트가 필요할 경우 이벤트 리스너에 등록
    videoController.addListener(videoControllerListener);
    // 멤버 변수인 videoPlayerController 에 초기화한 VideoPlayerController 객체 정보를 저장
    setState(() => this.videoPlayerController = videoController);
  }

  void videoControllerListener() {
    setState(() {});
  }

  // 동영상 플레이어 UI 화면
  @override
  Widget build(BuildContext context) {
    // VideoPlayerController 클래스 객체가 없을 경우
    if (videoPlayerController == null) {
      return Center(
        // CircularProgressIndicator 위젯 호출을 통해서 로딩 화면을 구현
        child: CircularProgressIndicator(),
      );
    }

    // AspectRatio : 화면 비율을 가지고 있는 위젯, 주로 동영상 재생 시 사용
    return AspectRatio(
      // 현재 멤버변수 videoPlayerController에 설정된 화면 비율을 적용
      aspectRatio: videoPlayerController!.value.aspectRatio,
      // 
      child: Stack(
        children: [
          // VideoPlayer 라이브러리에서 제공하는 위젯, 동영상 관련 정보를 가지고 있는 videoPlayerController를 매개변수로 사용
          VideoPlayer(videoPlayerController!,),
          // 위치 지정 위젯
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            // 일종의 프로그레스바
            child: Slider(
              min: 0, // 최소값
              // 최대값, 동영상 관련 정보가 있는 videoPlayerController 객체에서 영상의 길이를 가져옴
              max: videoPlayerController!.value.duration.inSeconds.toDouble(),
              // 동영상 재생 시 현재 플레이하고 있는 위치를 가져옴
              value: videoPlayerController!.value.position.inSeconds.toDouble(),
              onChanged: (double val) {
                // 지정한 위치로 플레이 위치를 이동, 재생 위치는 재생 시간(초)
                videoPlayerController!.seekTo(Duration(seconds: val.toInt()),);
              },
            ),
          ),
          //  위치 지정 정렬 위젯
          Align(
            // 위치를 우측 상단으로 지정
            alignment: Alignment.topRight,
            // 자식 위젯을 사용자가 생성한 CustomIconButton 으로 호출
            child: CustomIconButton(
              // 부모 위젯에서 전달받은 터치 이벤트용 메소드를 매개변수로 전달
              onPressed: widget.onNewVideoPressed,
              iconData: Icons.photo_camera_back,
            ),
          ),
          // 위치 지정 정렬 위젯, 동영상 재생 관련 아이콘버튼
          Align(
            alignment: Alignment.center, // 중앙 배치
            child: Row(
              // 자식 위젯을 가로로 배치, 여백 크기를 모두 동일하게 가져가도록 설정
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomIconButton(
                  // 버튼 클릭 이벤트에 이미 만들어 놓은 onReversePressed 메소드를 적용
                  onPressed: onReversePressed,
                  iconData: Icons.rotate_left,
                ),
                CustomIconButton(
                  onPressed: onPlayPressed,
                  // videoPlayerController 를 사용하여 현재 재생 상태를 확인 후 아이콘 모양 변경
                  iconData: videoPlayerController!.value.isPlaying ? Icons.pause : Icons.play_arrow,
                ),
                CustomIconButton(
                  onPressed: onForwardPressed,
                  iconData: Icons.rotate_right,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 위젯이 메모리에서 삭제될 경우 사용한 외부 리소스 제거
  @override
  void dispose() {
    videoPlayerController?.removeListener(videoControllerListener);
    super.dispose();
  }

  // 부모의 상태 변경 시 동작하는 메소드
  @override
  void didUpdateWidget(covariant CustomVideoPlayer oldWidget) {
    super.didUpdateWidget(oldWidget);

    // 부모가 예전에 전달한 동영상 파일 정보와 현재 동영상 파일 정보를 비교
    if (oldWidget.video.path != widget.video.path) {
      // 새로운 동영상 파일 정보로 VideoPlayerController 를 다시 초기화
      initController();
    }
  }

  // 뒤로 감기 버튼 이벤트
  void onReversePressed() {
    // 현재 재생 위치를 가져옴
    final currentPosition = videoPlayerController!.value.position;

    Duration position = Duration();

    // 현재 재생 위치(시간) 이 3초보다 클 경우
    if (currentPosition.inSeconds > 3) {
      // 현재 재생 시간에서 3초 빼기
      position = currentPosition - Duration(seconds: 3);
    }
    // 지정한 재생 시간으로 재생 위치를 이동
    videoPlayerController!.seekTo(position);
  }

  // 재생 버튼 이벤트
  void onPlayPressed() {
    if (videoPlayerController!.value.isPlaying) {
      videoPlayerController!.pause();
    }
    else {
      videoPlayerController!.play();
    }
  }

  // 빨리 감기 버튼 이벤트
  void onForwardPressed() {
    // 지정한 영상 파일의 전체 재생 시간
    final maxPosition = videoPlayerController!.value.duration;
    // 현재 영상 파일의 재생 위치
    final currentPosition = videoPlayerController!.value.position;

    Duration position = maxPosition;

    // 최대 재생 시간 - 3초 가 현재 재생 위치보다 큰지 확인
    if ((maxPosition - Duration(seconds: 3)).inSeconds > currentPosition.inSeconds) {
      // 현재 재생 시간 + 3초
      position = currentPosition + Duration(seconds: 3);
    }

    videoPlayerController!.seekTo(position);
  }

}









