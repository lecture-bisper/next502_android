void main(List<String> arguments) {
  print("vscode 개발하는 dart !!");

  // 한줄 주석 사용하기;

  /* 여러줄
  * 주석 
  * 사용하기
  */

  /// 슬래시 3개 짜리 주석 사용하기
  /// 문서 주석을 사용할 수 있음, IDE에서 문서로 인식됨

  print("\n----- dart의 변수 선언 -----\n");
  print("\n----- var -----");
  // dart 에서 변수 선언 시 var 키워드 사용
  // dart 는 데이터 타입 추론 방식 사용
  // dart 의 변수는 데이터 초기화 후 데이터 타입이 고정됨
  // dart 의 변수는 동일한 이름으로 재선언이 불가능함
  var name = "Next502";
  print(name);

  name = "김고은";
  print(name);

  // 동일한 이름으로 변수를 재선언하여 오류 발생
  // var name = "린자오밍";

  // name 변수를 문자열로 초기화하여 데이터 타입이 String 으로 고정되었으나 int 타입을 대입하여 오류 발생
  // name = 1000;

  print("\n----- dynamic -----");

  // dynamic 으로 변수 선언 시 서로 다른 데이터 타입의 데이터로 계속 변경하여 입력할 수 있음
  // 기본적으로 var 를 사용하고 필요 시 dynamic 을 활용
  dynamic name1 = "김고은";
  print(name1);

  // dynamic 으로 선언한 변수이므로 서로 다은 데이터 타입의 데이터를 저장할 수 있음
  name1 = 1000;
  print(name1);

  // dynamic 으로 선언한 변수도 동일한 이름으로 재선언이 불가능함
  // dynamic name1 = "린자오밍";

  print("\n----- dart 의 상수 (final / const)-----\n");
  // dart 의 상수 선언 시 final 과 const 사용
  // final 은 프로그램 실행 시점에 상수의 데이터가 고정 시 사용
  // const 는 프로그램 실행 시점과 상관없이 데이터가 고정되어야 할 경우 사용

  final String name2 = "블랙핑크";
  print(name2);
  // final 로 선언한 상수의 데이터를 수정하려고 하기 때문에 오류 발생
  // name2 = "르세라핌";

  const String name3 = "BTS";
  print(name3);
  // const 로 선언헌 상수의 데이터를 수정하려고 하기 때문에 오류 발생
  // name3 = "빅뱅";

  // final 은 런타임 시 상수의 데이터가 고정
  final DateTime now1 = DateTime.now();
  print(now1);

  // const 는 컴파일 시 상수의 데이터가 고정
  // const DateTime now2 = DateTime.now();
  // const 로 선언한 상수에 리터럴 데이터를 선언과 동시에 저장
  const int now2 = 1000;
  print(now2);

  print("\n----- dart 의 데이터 타입 (String, int, double, bool) -----\n");

  // dart 의 기본 데이터 타입은 String, int, double, bool 이 있음
  // 기본적으로 변수 선언 시 var 혹은 dynamic 을 사용
  // 변수의 데이터 타입을 지정할 필요가 있을 경우 기본 데이터 타입으로 변수를 선언하여 사용

  // var 키워드를 사용하여 변수 선언 후 데이터 초기화 시 데이터 타입을 고정
  var val1 = "문자열";
  var val2 = 100;
  var val3 = 3.14;
  var val4 = true;

  print(val1);
  print(val2);
  print(val3);
  print(val4);

  // String, int, double, bool 키워드를 사용하여 변수의 데이터 타입을 고정하여 선언
  int num1 = 100;
  double num2 = 3.14;
  bool bool1 = true;
  String str = "문자열";

  print(str);
  print(num1);
  print(num2);
  print(bool1);
}
