class Idol {
  // flutter 의 최신 트랜드는 클래스의 필드에 final 키워드를 사용하여 상수로 사용함
  // 한번 객체 생성 시 수정이 불가능
  // copyWith 라는 방식을 사용하여 데이터 수정이 필요 시 새로 객체를 생성하여 사용함
  final String name;
  final int age;
  final String email;

  // required 를 사용하여 반드시 모든 멤버 변수에 대한 데이터 입력 요구
  Idol({required this.name, required this.age, required this.email});

  void sayName() {
    print('저는 $name 이고, $age 살 입니다. 이메일은 $email 입니다.');
  }

  // 네임드 매개변수 방식을 사용, 모든 매개변수를 'null 허용'으로 사용함
  // 반환 타입은 현재 클래스로 지정
  Idol copyWith({String? name, int? age, String? email}) {
    // 현재 클래스 타입의 객체를 생성하여 리턴
    return Idol(
      // 생성자 호출 시 네임드 매개변수 방식으로 호출
      // ?? 연산자를 사용하여 새 값이 있으면 새 값으로 사용
      // 새 값이 없으면 기본값으로 기존의 데이터를 사용
      name: name ?? this.name,
      age: age ?? this.age,
      email: email ?? this.email
    );
  }
}

// 부모 클래스를 사용하는 클래스
class Idol2 {
  final String name;
  final int membersCount;

  // 기본 방식의 생성자
  // Idol2(String name, int membersCount) : this.name = name, this.membersCount = membersCount;
  // 간략화된 생성자
  Idol2(this.name, this.membersCount);
  // 네임드 매개변수 방식의 생성자
  // Idol2({required this.name, required this.membersCount});

  void sayName() {
    print('저는 $name 입니다.');
  }

  void sayMembersCount() {
    print('$name 멤버는 $membersCount 명 입니다.');
  }
}

// Idol2 클래스를 상속받은 자식 클래스 BoyGroup
class BoyGroup extends Idol2 {
  // dart 언어에서도 객체 생성 시 상속 관계에 있는 부모 생성자를 먼저 호출해야 함
  // 상속 받을 경우 부모 생성자와 자식 생성자의 형식을 통일하는 것이 좋음
  // super : 부모 객체를 의미하는 키워드
  // this : 객체 자신을 의미하는 키워드

  // 기본 방식의 생성자, 부모 생성자를 super() 로 호출
  // BoyGroup(String name, int membersCount) : super(name, membersCount);

  // 간략화된 생성자, super 키워드로 부모 클래스의 멤버 변수 호출
  BoyGroup(super.name, super.membersCount);

  // 네임드 매개변수를 사용하는 생성자, super 키워드로 부모 멤버 호출
  // BoyGroup({required super.name, required super.membersCount});

  // 자식 클래스 전용 메소드
  void sayMale() {
    print('저희는 남자 아이돌입니다.');
  }
}

// Idol2 클래스를 상속받은 자식 클래스 GirlGroup
class GirlGroup extends Idol2 {

  GirlGroup(super.name, super.membersCount);

  // dart 의 어노테이션
  // 현재 메소드는 부모에게서 상속받아 오버라이딩으로 내용을 수정하여 사용
  // 자바와 달리 @Override 가 아닌 @override 로 모두 소문자임
  @override
  void sayName() {
    print('저는 여자 아이돌 $name 입니다.');
  }
}

// dart 언어의 클래스는 클래스이면서 인터페이스임
// extends 사용 시 클래스 상속이고, implements 사용 시 인터페이스 구현임
// 인터페이스 구현 시 부모의 멤버를 반드시 오버라이딩해야 함

// 부모 클래스 Idol2 를 인터페이스로 상속받아 구현한 자식 클래스 GirlGroup2
class GirlGroup2 implements Idol2 {
  final String name;
  final int membersCount;

  GirlGroup2(this.name, this.membersCount);

  // 부모 인터페이스에서 상속받은 메소드를 오버라이딩
  @override
  void sayName() {
    print('저는 한국의 대표 여자 아이돌 $name 입니다.');
  }

  // 부모 인터페이스에서 상속받은 메소드를 오버라이딩
  @override
  void sayMembersCount() {
    print('저희 팀 $name 의 멤버는 $membersCount 명 입니다.');
  }
}

void main(List<String> arguments) {
  print("\n----- final 멤버 변수 사용 시 내용 변경 -----\n");

  // Idol 클래스 타입의 객체 idol 을 생성
  Idol idol = Idol(name: '아이유', age: 32, email: 'iu@bitc.ac.kr');
  idol.sayName();

  // Idol 클래스 타입의 객체 idol의 멤버 변수에 final 을 사용하여 수정이 불가능
  // idol.name = '카리나';
  // idol.age = 25;
  // idol.email = 'karina@bitc.ac.kr';
  // idol.sayName();

  print("\n----- copyWith 방식 사용 시 -----");

  idol = idol.copyWith(name: '카리나', age: 25, email: 'karina@bitc.ac.kr');
  idol.sayName();
  idol = idol.copyWith(name: '윈터');
  idol.sayName();

  print("\n----- 그냥 새 객체 생성 시 -----");

  idol = Idol(name: '하니', age:21, email: 'hani@bitc.ac.kr');
  idol.sayName();
  // Idol 클래스의 생성자는 3개의 데이터를 요구하는데 객체 생성 시 2개의 데이터만 제공하여 오류 발생
  // idol = Idol(name: '다니엘', age: 20);

  print("\n ----- 클래스 상속 -----\n");

  Idol2 idol2 = Idol2('bts', 5);
  idol2.sayName();
  idol2.sayMembersCount();
  // idol2.sayMale();  // sayMale() 는 자식 클래스 전용 메소드

  BoyGroup bts = BoyGroup('bts', 5);
  bts.sayName();
  bts.sayMembersCount();
  bts.sayMale();

  print("");

  GirlGroup newjeans = GirlGroup('newjeans', 5);
  // 상속받은 메소드를 오버라이딩하여 재선언 후 사용
  newjeans.sayName();
  // 상속받은 메소드를 그대로 사용
  newjeans.sayMembersCount();

  GirlGroup2 aespa = GirlGroup2('aespa', 5);
  aespa.sayName();
  aespa.sayMembersCount();
}








