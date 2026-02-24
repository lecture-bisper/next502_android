class Idol8 {
  final String name; // 일반 멤버 변수
  final int age; // 일반 멤버 변수
  final String _email = "iu@bitc.ac.kr"; // private 멤버 변수

  Idol8(this.name, this.age);

  void sayName() {
    // 클래스 내부에서는 자신의 멤버 변수 사용 시 제약이 없음
    print('저의 이름은 $name 이고, 나이는 $age 이며, 이메일은 $_email 입니다.');
  }
}
