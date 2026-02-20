void main() {
  print("\n ----- Set 사용 -----\n");
  // 하나의 변수명으로 여러개의 데이터를 중복없이 저장하는 데이터 타입
  // Java 의 HashSet 과 동일한 기능
  // 중복되는 데이터를 삭제 후 저장함
  // index 가 없어 순서에 상관없이 데이터를 저장
  // {} 기호를 사용, 각각의 데이터는 ' , ' 기호로 구분
  // Map 타입처럼 {} 를 사용하지만, key 가 없음
  // 데이터 출력 시 반복문을 사용하거나 toList() 를 사용하여 List 로 변환 후 출력

  // Set 의 주요 메소드
  // add(value) : 지정한 Set 에 중복되지 않은 데이터를 추가
  // remove(value) : 지정한 Set 에서 데이터를 삭제 후 결과를 반환 (true/false)
  // contains(value) : 지정한 Set 에 지정한 데이터가 있는지 여부 확인 (true/false)
  // toList() : 지정한 Set 타입의 데이터를 List 타입의 데이터로 변환
  // clear() : 지정한 Set 의 데이터를 모두 삭제
  // isEmpty : 지정한 Set 이 비었는지 여부 확인
  // length : 지정한 Set 의 길이를 출력
  // Set.from(value) : 다른 데이터 타입을 Set 타입으로 변환

  // var 와 Set 생성자를 사용하여 빈 Set 타입 생성
  var num1 = Set<int>();
  // var 와 {} 를 사용하여 빈 Set 타입 생성
  var num2 = <int>{};
  // Set 키워드를 사용하여 Set 타입 선언과 동시에 데이터 저장
  Set<int> num3 = {10, 20, 30, 20};
  // Set 키워드를 사용하여 데이터 추론이 가능한 빈 Set 생성
  Set num4 = {};

  // for ~ in 문을 사용하여 Set 에 저장된 데이터 모두 출력
  for (int item in num3) {
    print(item);
  }

  print(num3);
  // add() 를 사용하여 새로운 데이터 추가
  num3.add(40);

  // add() 사용 후 Set 의 데이터 모두 출력
  for (int item in num3) {
    print(item);
  }

  // 지정한 데이터가 Set 에 있는지 확인
  final result = num3.contains(20);
  print(result);

  // Set 타입의 데이터를 List 타입으로 변환
  final numList = num3.toList();
  print(numList);
  print(num3);

  // 리스트에 데이터 추가
  numList.add(50);
  // List 타입의 데이터를 Set 타입으로 변환
  final newSet = Set.from(numList);
  print(newSet);
  print(numList);

  print(num3.length); // Set 의 길이 출력
  num3.clear(); // Set 에 저장된 모든 데이터 삭제
  print(num3.isEmpty); // Set 이 비었는지 확인
}
