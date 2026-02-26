import 'study03-1.dart';

void main() {
  print("\n----- 클래스 제한자 base -----\n");

  // base : 지정한 클래스가 클래스의 기능만 사용하도록 하는 제한자
  // dart 의 클래스는 클래스이지만 암묵적으로 인터페이스로 동작할 수 있음
  // base 클래스 제한자를 사용한 클래스는 클래스로만 사용 가능하고 인터페이스로 사용 불가
  // 자식 클래스에서도 클래스 제한자를 사용해야 함
  
  
  // base 클래스 제한자를 사용한 클래스의 객체 생성 가능
  Parent parent = Parent();

  print("\n----- 클래스 제한자 final -----\n");

  // final : 지정한 클래스를 상속 및 구현없이 객체를 생성하여 사용하는 용도로만 사용하도록 함
  // final 사용 시 base 의 기능도 포함되어 있음
  
  // final 클래스 제한자를 사용한 클래스의 객체 생성 가능
  Parent2 parent2 = Parent2();

  print("\n----- 클래스 제한자 interface -----\n");

  // interface : 지정한 클래스를 상속 기능을 제거하고, 인터페이스의 구현 기능만 사용하도록 함

  // interface 클래스 제한자를 사용한 클래스의 객체 생성 가능
  Parent3 parent3 = Parent3();

  print("\n----- 클래스 제한자 sealed -----\n");

  // sealed : 지정한 클래스의 객체 생성 및 클래스 상속, 인터페이스 구현 기능을 모두 제거함

  // sealed 클래스 제한자를 사용한 클래스의 객체 생성 불가
  // Parent4 parent4 = Parent4();


}

// base 클래스 제한자를 사용한 부모 클래스를 상속받으려면 클래스 제한자를 사용해야 함
base class Child extends Parent {

}

// base 클래스 제한자를 사용한 부모 클래스를 상속받았으나 자식 클래스에 클래스 제한자를 사용하지 않아서 오류 발생
// class Child2 extends Parent {}

// base 클래스 제한자를 사용한 부모 클래스는 인터페이스로 동작하지 않기 때문에 오류 발생
// base class Child3 implements Parent {}


// final 클래스 제한자를 사용한 클래스는 부모 클래스로 상속받을 수 없음
// class Child4 extends Parent2 {}

// final 클래스 제한자를 사용한 클래스는 부모 인터페이스로도 사용할 수 없음
// class Child5 implements Parent2 {}


// interface 클래스 제한자를 사용한 클래스는 부모 클래스로 상속 받을 수 없음
// class Child6 extends Parent3 {}

// interface 클래스 제한자를 사용한 클래스는 부모 인터페이스로 동작할 수 있음
class Child7 implements Parent3 {}


// sealed 클래스 제한자를 사용한 클래스는 부모 클래스 및 부모 인터페이스로 동작할 수 없음
// class Child8 extends Parent4 {}
// class Child9 implements Parent4 {}

