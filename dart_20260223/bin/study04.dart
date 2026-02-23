// 함수 : dart 의 함수는 js의 함수나 java의 메소드와 비슷함
//    형태에 따라서 일반 함수, 화살표 함수(람다), 익명함수로 구분

//    일반 함수 : dart 언어의 일반적인 함수 선언 방식
//    js의 함수 및 java의 메소드를 선언하는 방식과 비슷함
//    매개변수의 형태에 따라 포지션 매개변수, 네임드 매개변수. 기본값 매개변수로 나누어짐
//      - 포지션 매개변수 : js 및 java 에서 사용하는 일반적인 형태의 매개변수, 함수 호출 시 함수의 선언부와 동일한 순서대로 데이터를 입력하는 방식

//      - 네임드 매개변수 : 매개변수 선언 시 매개변수의 이름을 설정하고, 해당 함수 호출 시 매개변수의 이름과 데이터를 함께 입력하여 함수를 호출, 이름 기반이므로 매개변수의 순서는 상관 없음
//        - {} 기호로 매개변수를 감싸고, required 키워드를 매개변수 앞에 사용, null 허용 변수일 경우는 생략 가능

//      - 기본값 매개변수 : 함수의 선언부에 매개변수 선언 시 기본값도 함께 선언하여 사용, 함수 호출 시 해당 매개변수의 데이터를 입력하지 않으면 설정된 기본값을 사용함
//        - [] 기호로 매개변수를 감싸고, 매개 변수 선언 및 기본값 설정
//        - 기본값 매개변수는 매개변수 순서 중 가장 마지막에 설정
//        - 네임드 매개변수에 기본 값을 설정 시 [] 기호 대신 {} 를 사용함, 기본값이 있으므로 required 키워드 생략 가능


//    화살표 함수(람다 함수) : 함수의 내용이 'return 반환값' 과 같이 단 한줄만 있는 경우 함수를 짧게 사용하기 위한 방식
//       - 정확하게는 한 줄이 아니라 명령 단위가 하나임
//    dart 언어의 화살표 함수는 자바스크립트의 화살표 함수와 달리 여러 라인을 사용할 수 없음
//       - 'return 반환값', 'return 연산식' 형태로 한줄만 사용
//    화살표 함수의 매개변수가 없거나 1개일 경우에도 () 를 무조건 사용
//    매개변수를 받았지만 사용하지 않을 경우 매개변수를 '_' 로 표시하고, 매개변수가 2개 이상일 경우 '-' 의 수를 추가하여 사용

//    익명 함수 : 함수의 이름이 없는 형태의 함수로 일회용으로 사용
//    dart 언어에서는 익명 함수와 화살표 함수는 같은 형태의 함수라고 할 수 있음


//  일반 함수 (포지션 매개변수)
int sum(int a, int b) {
  return a + b;
}

//  일반 함수 (포지션 매개변수), 반환값 없음
void sub(int a, int b) {
  print('두 수의 뺄셈은 ${a - b} 입니다.');
}

// 일반 함수 (기본값 매개변수)
void multi(int a, [int b = 20]) {
  print('두 수의 곱셈은 ${a * b} 입니다');
}

// 일반 함수 (네임드 매개변수)
void div({required int a, required int b}) {
  print('두 수의 나눗셈은 ${a ~/ b} 입니다');
}

// 일반 함수 (네임드 매개변수의 기본값)
void div2({required int a, int b = 3}) {
  print('두 수의 나눗셈은 ${a ~/ b} 입니다.');
}


// typedef 로 사용자 정의 타입 선언
typedef Calculator = int Function(int a, int b);

// 사용자 정의 타입과 선언부가 동일한 함수
int sum2(int a, int b) {
  return a + b;
}

int sub2(int a, int b) {
  return a - b;
}

// 사용자 정의 타입을 매개변수로 사용함
void calculate(int a, int b, Calculator oper) {
  print(oper(a, b));
}

void main() {
  print('----- 일반 함수 (포지션 매개변수) -----');
  var result = sum(10, 20);
  print('두 수의 덧셈은 $result 입니다');
  sub(10, 20);
  multi(10, 20);

  print('\n----- 일반 함수 (기본값 매개변수) -----');
  multi(10); // 기본값 매개변수를 사용

  print('\n----- 일반 함수 (네임드 매개변수) -----');
  div(a: 10, b: 3); // 네임드 매개변수 사용
  div(b: 3, a: 10); // 네임드 매개변수를 사용하여 순서는 상관없음
  div2(a: 10, b: 3);
  div2(b: 3, a: 10);
  div2(a: 10); // 네임드 매개변수에 기본값을 사용

  print("\n----- 람다함수, 익명함수 -----\n");

  List<int> numbers = [10, 20, 30, 40, 50];
  final int all = numbers.reduce((prev, curr) => prev + curr);
  print(all);

  print("\n----- 화살표 함수로 표현 -----");
  // 화살표함수(람다함수) 로 표현
  numbers.forEach((item) => print('item : $item'));

  print("\n----- 익명 함수로 표현 -----");
  numbers.forEach((item) {
    print('item : $item');
  });
  

  print("\n ----- typedef 로 사용자 정의 타입 선언 -----\n");

  // 사용자 정의 타입 Calculator 의 변수 cal 선언
  // cal 에 sum2() 함수를 저장
  Calculator cal = sum2;
  // cal() 함수 호출
  var result2 = cal(10, 20);
  print("sum2() 함수를 저장한 cal() 호출 : $result2");

  // cal 에 sub2() 함수를 저장
  cal = sub2;
  // cal() 함수 호출
  // 하나의 함수명으로 여러 개의 함수를 바꿔가면서 실행
  result2 = cal(10, 20);
  print("sub2() 함수를 저장한 cal() 호출 : $result2");

  // 사용자 정의 타입을 매개변수로 사용 가능
  calculate(10, 20, sum2);
  calculate(10, 20, sub2);

}













