import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  // 웹뷰를 사용하기
  WebViewController webViewController = WebViewController()
  // 웹뷰가 접속할 사이트 주소 입력
  ..loadRequest(Uri.parse('https://blog.codefactory.ai'))
  //   자바스크립트 사용 유무 설정, 제약없이 사용
  ..setJavaScriptMode(JavaScriptMode.unrestricted);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // 앱의 상단 정보 프레임임 AppBar 를 사용하도록 설정
        appBar: AppBar(
          backgroundColor: Colors.orange,
          // 앱바에 출력할 내용 입력
          title: Text('Next502'),
          // 앱바의 컨텐츠를 중앙에 표시
          centerTitle: true,
          // 앱바 상단 메뉴 설정
          actions: [
            IconButton(
              onPressed: () {
                // 첫 페이지로 이동
                webViewController.loadRequest(Uri.parse('http://blog.codefactory.ai'));
              },
              icon: Icon(Icons.home),
            ),
          ],
        ),
        // WebViewWidget 을 사용하여 앱에서 웹뷰를 사용하도록 설정
        body: WebViewWidget(
          // 실제 웹 화면을 제어하는 controller 를 등록
          controller: webViewController,
        ),
      ),
    );
  }
}









