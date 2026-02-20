// 열거형 데이터 타입 선언
enum Status { approved, pending, rejected }

enum Day { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

void main() {
  print("\n ----- enum 사용 -----\n");
  // 열거형이라 하며 미리 정의된 상수값의 집합
  // 코드의 가독성을 높이고 값의 범위를 제한
  // 모든 값은 정적이며, 수정 불가능
  // 각 값은 고유하며, 동일한 값을 가질 수 없음
  // 타입이 강제되어 허용된 값 이외의 값을 사용할 수 없음
  // index(0부터 시작), name 과 같은 프로퍼티를 제공

  Status state = Status.rejected;
  print(state);

  // 열거형 변수 선언
  Day today = Day.monday;
  print(today);

  if (today == Day.friday) {
    print('불금이다.');
  } else {
    print('주말은 언제오나..');
  }

  // 열거형이 제공하는 index, name 속성으로 열거형 타입의 변수가 가지고 있는 데이터를 출력
  print(today.index);
  print(today.name);
}
