// 추상클래스
// 추상 메소드를 가지고 있는 클래스
// 추상 클래스는 abstract 키워드를 사용해야 함
abstract class Idol {
  final String name;
  final int membersCount;

  Idol(this.name, this.membersCount);

  // 추상 메소드
  // 메소드의 선언부만 존재하고, 코드 블럭은 없는 메소드
  void sayName();
  void sayMembersCount();
}

// 추상 클래스를 상속 시 extends 나 implements 둘 다 사용 가능
// extends 는 클래스 상속, implements 는 인터페이스 구현

// 인터페이스를 구현
class GirlGroup implements  Idol {
  // 부모의 멤버를 오버라이딩 하여 자신의 멤버로 변경
  final String name;
  final int membersCount;

  // 멤버 변수가 자식 클래스의 것이기 때문에 super 가 아닌 this 를 사용
  GirlGroup(this.name, this.membersCount);

  // 메소드는 오버라이딩 필수
  @override
  void sayName() {
    print('저는 여자 아이돌 $name 입니다.');
  }

  @override
  void sayMembersCount() {
    print('$name 의 멤버는 $membersCount 명 입니다.');
  }
}

// 추상 클래스로 상속
class BoyGroup extends Idol {
  // 멤버 변수는 부모 클래스에서 상속받아 그대로 사용

  // super 로 부모 생성자를 호출
  BoyGroup(super.name, super.membersCount);

  // 메소드는 오버라이딩 필수
  @override
  void sayName() {
    print('저는 남자 아이돌 $name 입니다.');
  }

  @override
  void sayMembersCount() {
    print('$name 의 멤버는 $membersCount 명 입니다.');
  }
}

void main() {
  print("\n----- 추상 클래스, 추상 메소드 -----\n");

  GirlGroup blackPink = GirlGroup('블랙핑크', 4);
  blackPink.sayName();
  blackPink.sayMembersCount();

  BoyGroup bts = BoyGroup('BTS', 7);
  bts.sayName();
  bts.sayMembersCount();

  print("");
  // 케스케이드 연산자 : 객체 생성 후 '객명.멤버명' 으로 사용하는 것을 '..멤버명' 으로 사용하는 연산자
  // 객체 생성 시 생성자 뒤에 ' ; ' 를 생략
  // '..멤버명' 을 연속으로 사용함
  // '..마지막멤버' 사용 후 ' ; ' 를 입력
  GirlGroup aespa = GirlGroup('에스파', 5)
  ..sayName()
  ..sayMembersCount();

}