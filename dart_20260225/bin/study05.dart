import 'dart:async';

void addNumber(int num1, int num2) {

  print('$num1 + $num2 비동기 계산 시작!!');

  // Future.delayed() 를 사용하여 연산을 3초 기다렸다가 진행
  Future.delayed(Duration(seconds: 3), () {
    print('$num1 + $num2 = ${num1 + num2}');
  });

  print('$num1 + $num2 비동기 계산 완료!!');
}

//  비동기 프로그래밍 중 반드시 동기 방식으로 동작해야 하는 부분에 async, await 키워드를 사용
// async 는 지정한 함수의 매개변수와 코드 블럭 사이에 입력
Future<void> addNumber2(int num1, int num2) async {
  print('$num1 + $num2 동기 계산 시작!!');

  // await 는 대기할 부분에 입력
  await Future.delayed(Duration(seconds: 3), () {
    print('$num1 + $num2 = ${num1 + num2}');
  });

  print('$num1 + $num2 동기 계산 완료!!');
}

void main() {

  // addNumber(1, 2);
  // addNumber2(10, 20);

  final controller = StreamController();
  // 기본 스트림은 listen 이 1개 임
  // final stream = controller.stream;
  //
  // final streamListener = stream.listen((item) {
  //   print('item : $item');
  // });

  // 브로드캐스트 스트림은 listen 을 여러개 사용 가능
  final stream = controller.stream.asBroadcastStream();

  final listener1 = stream.listen((item) => print('listener1 item : $item'));

  final listener2 = stream.listen((value) => print('listener2 value : $value'));

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);

}