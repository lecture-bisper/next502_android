import 'dart:async';

class Counter {
  int num1 = 0; // 일반 멤버 변수
  static int num2 = 0; // static 멤버 변수

  // 일반 메소드
  void num1Print() {
    num1 = num1 + 10;
    print('num1 의 값 : $num1');
  }

  // 메소드
  void num2Print() {
    // 일반 메소드에서 static 멤버 변수 사용
    num2 = num2 + 100;
    print('static num2 의 값 : $num2');
  }
}

void main() {
  print("\n----- static 멤버 -----\n");

  // 객체 생성
  Counter c1 = Counter();
  Counter c2 = Counter();
  Counter c3 = Counter();

  // 각각의 객체가 가지고 있는 인스턴스 멤버 호출
  print('c1 의 num1 : ${c1.num1}');
  print('c2 의 num1 : ${c2.num1}');
  print('c3 의 num1 : ${c3.num1}');

  // 각각의 객체가 가지고 있는 인스턴스 멤버에 데이터 저장
  c1.num1 = 10;
  c2.num1 = 200;
  c3.num1 = 3000;

  print("");
  print('c1 의 num1 : ${c1.num1}');
  print('c2 의 num1 : ${c2.num1}');
  print('c3 의 num1 : ${c3.num1}');

  print("");
  // 클래스의 static 멤버에 데이터 저장
  Counter.num2 = 100;
  // num2 는 static 멤버이므로 클래스명으로만 접근 가능
  // c1.num2 = 100;
  print("Counter 의 멤버 num2 : ${Counter.num2}");

  print("");
  print('c1의 num1Print() 사용');
  c1.num1Print();
  print('c2의 num1Print() 사용');
  c2.num1Print();
  print('c3의 num1Print() 사용');
  c3.num1Print();

  print("");
  print('c1의 num2Print() 사용');
  c1.num2Print();
  print('c2의 num2Print() 사용');
  c2.num2Print();
  print('c3의 num2Print() 사용');
  c3.num2Print();


}