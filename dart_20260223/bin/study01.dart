void main() {
  // dart 의 연산자
  // js 및 java 의 연산자와 기본적으로 동일함

  // -변수 : 단항 마이스너, 변수 앞에 ' - ' 기호를 사용하여 현재 변수의 부호를 반대로 변경할 수 있음
  // ~/ : 정수만 출력하는 나눗셈 연산자
  //    dart 언어에서는 ' / ' 연산자 사용 시 double 타입으로 몫을 출력함
  //    ~/ 사용 시 몫을 int 타입의 정수만 출력함

  print ("\n ----- 산술 연산자 -----\n");

  int number = 10;
  print('원본 number : $number');

  print(number + 3);
  print(number - 3);
  print(number * 3);
  print(number / 3);
  print(number % 3);

  print('number 의 현재 값 : $number');
  number = -number;
  print('단항 마이너스 연산자 사용 후 값 : $number');

  print('number / 3 은 ${number / 3}');
  print('number ~/ 3 은 ${number ~/ 3}');

  print("\n ----- null관련 연산자 ----- \n");

  // ? : dart 의 변수에 null 을 저장할 수 있도록 하는 연산자
  //    dart 언어는 null 안정성을 위해서 변수에 null 을 저장하지 못하도록 되어 있음
  //    데이터 타입 뒤에 ' ? ' 를 사용할 경우 null 을 저장할 수 있음

  // ??= : 데이터 타입 뒤에 ? 를 사용하여 null 을 저장할 수 있는 변수에 다시 데이터를 입력 시 기존 데이터가 null 일 경우에만 데이터를 저장하는 대입 연산자
  //    기존 데이터가 null 이 아닐 경우 오류를 발생하지 않지만 데이터가 변경되지 않음

  double? number1 = 10; // ? 를 사용하여 null 저장 허용
  double number2 = 20; // ? 이 없기 때문에 null 을 저장할 수 없음
  print("number1 : $number1");
  print("number2 : $number2");

  number1 = null; // ? 를 사용한 변수이므로 null 저장 가능
  print("number1 : $number1");
  // number2 = null; // ? 를 사용하지 않았으므로 null 저장 불가

  print("현재 number1 의 값 : $number1");
  number1 = 10;
  print("number1 에 = 를 사용하여 데이터 저장 : $number1");
  // number1 ??= 20;
  print("number1 에 ??= 를 사용하여 데이터 저장 : $number1");
  number1 = null;
  number1 ??= 20;
  print("number1 에 null 저장 후 다시 ??= 로 다른 데이터 저장 : $number1");

  print("\n ----- 비교 연산자 ----- \n");
//   js 및 java의 비교 연산자와 동일함

  var number3 = 10;
  var number4 = 20;

  print('number3 > number4 : ${number3 > number4}');
  print('number3 < number4 : ${number3 < number4}');
  print('number3 >= number4 : ${number3 >= number4}');
  print('number3 <= number4 : ${number3 <= number4}');
  print('number3 == number4 : ${number3 == number4}');
  print('number3 != number4 : ${number3 != number4}');

//   is : 타입 비교 연산자 지정한 데이터가 지정한 데이터 타입이 맞는지 확인, 맞으면 true, 틀리면 false
//   is! : is 의 반대가 되는 연산자, 맞으면 false, 틀리면 true

  int number5 = 10;
  var str1 = '문자열';
  print('변수 number5 : $number5');
  print('변수 str1 : $str1');

  print('number5 is int : ${number5 is int}');
  print('number5 is double : ${number5 is double}');
  print('number5 is String : ${number5 is String}');
  print('number5 is bool : ${number5 is bool}');
  print('number5 is! int : ${number5 is! int}');
  print('number5 is! double : ${number5 is! double}');
  print('number5 is! String : ${number5 is! String}');
  print('number5 is1 bool : ${number5 is! bool}');
  print('str1 is int : ${str1 is int}');
  print('str1 is double : ${str1 is double}');
  print('str1 is String : ${str1 is String}');
  print('str1 is bool : ${str1 is bool}');
  print('str1 is! int : ${str1 is! int}');
  print('str1 is! double : ${str1 is! double}');
  print('str1 is! String : ${str1 is! String}');
  print('str1 is! bool : ${str1 is! bool}');


  print("\n ----- 논리 연산자 ----- \n");
//   js 및 java 와 동일함

  var result = 12 > 10 && 1 > 0;
  print('12 > 10 && 1 > 0 : $result');

  result = 12 > 10 && 0 > 1;
  print('12 > 10 && 0 > 1 : $result');

  result = 12 > 10 || 1 > 0;
  print('12 > 10 || 1 > 0 : $result');

  result = 12 > 10 || 0 > 1;
  print('12 > 10 || 0 > 1 : $result');

  result = 12 < 10 || 0 > 1;
  print('12 < 10 || 0 > 1 : $result');

  print('현재 result : $result, !result : ${!result}');

  print("\n ----- 단항 연산자, 산술 대입 연산자 -----\n");
//   js 및 java 와 동일함

  var number6 = 10.0;

  print("현재 number6 : $number6");
  number6++;
  print("number6++ : $number6");
  number6--;
  print("number6-- : $number6");

  number6 = 20;
  print("현재 number6 : $number6");
  number6 += 10;
  print("number6 += 10 : $number6");
  number6 -= 10;
  print("number6 -= 10 : $number6");
  number6 *= 10;
  print("number6 *= 10 : $number6");
  number6 /= 3;
  print("number6 /= 3 : $number6");
  number6 = 10;
  number6 %= 3;
  print("number6 %= 3 : $number6");
  var number7 = 10;
  number7 ~/= 3;
  print("number7 ~/= 3 : $number7");

  print("\n ----- 삼항 연산자 -----\n");
//   js 및 java 의 삼항 연산자와 동일함
//  연산1 ?? 연산2 : 기본값 설정, 연산1 이 null 이 아닐 경우 연산 1의 결과를 출력하고, 연산1 이 null 이면 연산2 의 결과를 출력

  var number8 = 10;
  var number9 = 5;
  var result1 = number8 <= number9 ? 'number8 이 크다' : 'number9가 작다';
  print(result1);

  int? number10 = null;
  var result2 = number10 ?? '두번째 연산식의 결과를 출력';
  print(result2);










}








