// Dart 의 클래스
// 자바의 클래스와 비슷한 형태임
// dart 의 클래스는 자바와 달리 하나의 파일에 여러 개의 클래스를 선언해도 상관없음
// class 키워드를 사용하여 클래스를 선언하고, 멤버 변수, 생성자, 메소드를 가지고 있음
// 자바와 달리 클래스의 객체(인스턴스) 생성 시 'new' 키워드를 사용하지 않음(생성자만 호출)
// 클래스의 객체 멤버 사용 방법은 자바와 동일함 (객체명.멤버명)
// Dart 의 클래스 멤버는 자바와 달리 접근제한자가 없음 (모두 public 으로 동작)
//    private 사용 시 '_멤버변수명' 형태로 사용
//    Dart 의 private 은 클래스가 아닌 파일을 기준으로 함
// static 키워드를 사용하여 정적 멤버를 가질 수 있음
// this 키워드는 자바와 같이 객체 자신을 의미
// 자바의 getXXX()/setXXX() 와 같은 getter/setter 가 아닌 get/set 키워드가 따로 존재
// dart 언어의 최신 트랜드에서는 멤버 변수를 모두 final 키워드를 사용하여 상수로 선언하여 사용
//    멤버 변수의 값을 변경 시 새로운 객체를 만들어 사용하는 형태로 사용함 (copyWith 방식)

// dart 의 사용자 클래스 Idol 선언

import 'Idol8.dart';

class Idol {
  // 클래스의 멤버 변수(필드) 선언
  String name = "블랙핑크";

  // 생성자를 선언하지 않은 클래스
  // 컴파일러가 기본 생성자를 만들어서 사용

  // 클래스의 메소드 선언
  void sayName() {
    // this. 키워드를 사용하여 클래스의 멤버 변수 호출
    print('저는 ${this.name} 입니다.');
    // 같은 이름의 매개변수가 없으므로 this. 를 생략하여 멤버 변수 호출
    print('저는 $name 입니다.');
  }
}

class Idol2 {
  final String name;

  // 사용자가 기본 생성자를 선언하여 사용
  // 생성자 뒤에 {} 대신 ' : ' 을 사용하고, 초기화할 멤버 변수에 데이터를 직접 저장
  Idol2() : this.name = '윈터';

  void sayName() {
    print('저는 ${this.name} 입니다.');
  }
}

class Idol3 {
  final String name;

  // 매개변수가 1개인 생성자 선언
  // 생성자 뒤에 {} 대신 ' : ' 을 사용하고, 초기화할 멤버 변수에 매개변수로 받은 데이터를 저장
  // Idol3(String name) : this.name = name;

  // 매개변수가 있는 생성자를 줄여서 사용
  Idol3(this.name);

  // 자바의 생성자 형태
  // Idol3(String name) {
  //   this.name = name;
  // }

  void sayName() {
    print("저는 ${this.name} 입니다.");
  }
}

class Idol4 {
  final String name;
  final int memberCount;

  // 매개변수가 2개 이상일 경우 ' , ' 로 구분함
  // Idol4(String name, int memberCount)
  //   : this.name = name,
  //     this.memberCount = memberCount;
  Idol4(this.name, this.memberCount); // 줄임 방식

  void sayName() {
    print('저는 ${this.name} 입니다.');
    print('${this.name} 의 멤버는 ${this.memberCount} 명 입니다.');
  }
}

class Idol5 {
  final String name;
  final int memberCount;

  // 네임드 매개변수를 사용하는 생성자 사용
  Idol5({required this.name, required this.memberCount});

  void sayName() {
    print('저는 ${this.name} 입니다.');
    print('${this.name} 의 멤버는 ${this.memberCount} 명 입니다.');
  }
}

class Idol6 {
  final String name;
  final int age;
  final String email;

  // 기본 생성자 사용, 값 직접 입력
  Idol6() : this.name = '아이유', this.age = 32, this.email = "iu@bitc.ac.kr";

  // 네임드 생성자 사용
  // 클래스에서 여러개의 생성자를 사용해야 할 경우 생성자의 이름을 설정하여 사용
  // 자바의 생성자 오버로딩과 비슷한 개념
  Idol6.setName(String name)
    : this.name = name,
      this.age = 32,
      this.email = "iu@bitc.ac.kr";

  // 네임드 생성자 사용, 포지션 매개변수 방식, 짧은 형식의 생성자, 매개변수 2개 입력, 1개 직접 입력
  Idol6.setNameAge(this.name, this.age) : this.email = "iu@bitc.ac.kr";

  // 네임드 생성자 사용, 포지션 매개변수 방식, 짧은 형식의 생성자, 매개변수로 모두 입력
  Idol6.setNameAgeEmail(this.name, this.age, this.email);

  // 네임드 생성자 사용, 네임드 매개변수 방식
  Idol6.namedInfo({required this.name, required this.age, required this.email});

  void sayName() {
    print('저의 이름은 $name 이고, 나이는 $age 이며, 이메일은 $email 입니다.');
  }
}

class Idol7 {
  final String name; // 일반 멤버 변수
  final int age; // 일반 멤버 변수
  String _email = "iu@bitc.ac.kr"; // private 변수 선언

  Idol7(this.name, this.age);

  // getter 와 setter 의 이름을 동일하게 설정

  // private 멤버 변수에 getter 설정
  String get email {
    return _email;
  }

  // private 멤버 변수에 setter 설정
  set email(String email) {
    _email = email;
  }

  void sayName() {
    // 클래스 내부에서는 자신의 멤버 변수 사용 시 제약이 없음
    print('저의 이름은 $name 이고, 나이는 $age 이며, 이메일은 $_email 입니다.');
  }
}

void main() {
  // Idol 클래스 타입의 객체 생성
  // 자바와 달리 new 키워드를 사용하지 않음
  Idol blackPink = Idol();
  // 메소드 sayName() 호출
  blackPink.sayName();

  Idol2 aespa = Idol2();
  aespa.sayName();

  Idol3 bts = Idol3('정국');
  bts.sayName();

  Idol4 newJeans = Idol4('뉴진스', 5);
  newJeans.sayName();

  Idol5 lesserafim = Idol5(name: '르세라핌', memberCount: 5);
  lesserafim.sayName();

  print("");

  // 기본 생성자 사용
  Idol6 iu1 = Idol6();
  iu1.sayName();

  // 네임드 생성자 사용, 매개변수 1개
  Idol6 iu2 = Idol6.setName("아이유");
  iu2.sayName();

  // 네임드 생성자 사용, 매개변수 2개
  Idol6 iu3 = Idol6.setNameAge("아이유", 32);
  iu3.sayName();

  // 네임드 생성자 사용, 매개변수 3개
  Idol6 iu4 = Idol6.setNameAgeEmail("아이유", 32, "iu@bitc.ac.kr");
  iu4.sayName();

  // 네임드 생성자 사용, 네임드 파라미터 사용
  Idol6 iu5 = Idol6.namedInfo(age: 32, name: "아이유", email: "iu@bitc.ac.kr");
  iu5.sayName();

  print("");

  Idol7 iu7 = Idol7("아이유", 32);
  iu7.sayName();
  // public 로 설정된 일반 멤버 변수에 접근 가능
  print('이름 : ${iu7.name}');
  print('나이 : ${iu7.age}');
  // _ 를 사용하여 private 으로 설정된 멤버 변수에 접근
  // 자바에서는 private 으로 설정 시 외부에서 접근이 불가능하였으나 dart 에서는 private 의 기준이 파일을 기준으로 하기 때문에 같은 파일에서 선언한 클래스의 private 멤버에 접근이 가능함
  print('이메일 : ${iu7._email}');

  // Idol7 클래스의 멤버 변수에는 email 이 없고, private 변수 _email 이 존재
  // _email 에 getter 를 설정하여 getter email 이 멤버 변수인 것처럼 사용함
  print('getter 로 _email 값 출력 : ${iu7.email}');
  // _email 에 setter 를 설정하여 setter email 이 멤버 변수인 것처럼 사용함
  iu7.email = 'iu7@gmail.com';
  print('setter 로 _email 값 수정 후 결과 : ${iu7.email}');

  print("");

  Idol8 iu8 = Idol8("아이유", 32);
  iu8.sayName();
  print("이름 : ${iu8.name}");
  print("나이 : ${iu8.age}");
  // Idol8 클래스의 private 멤버 변수인 _email 에 접근할 수 없음
  // Idol8 클래스는 현재 실행하는 파일과 다른 파일이기 때문에 다른 파일의 클래스에서 선언한 private 멤버에는 접근할 수 없음
  // print("이메일 : ${iu8._email}");
}
