void main() {
  print("\n ----- dart 의 List -----\n");

  // dart 언어에서는 배열 대신 List를 사용함
  // List 에 제네릭을 사용하여 데이터 타입을 고정할 수 있음
  // List 에 제네릭을 사용하지 않을 경우 데이터 타입 추론을 통해서 자동으로 데이터 타입을 지정함
  // 사용 방법은 JS 의 배열과 동일함
  // [] 기호와 index 를 사용하여 원하는 위치의 데이터에 접근함
  // index 의 시작 번호는 0 부터 시작
  // List 의 범위를 넘어서는 index 에 접근 시 오류 발생

  // 제네릭으로 데이터 타입을 지정하지 않은 List
  List blackPinkList = ['리사', '로제', '지수', '제니'];

  print(blackPinkList);
  print(blackPinkList[0]);
  print(blackPinkList[1]);
  print(blackPinkList[2]);
  print(blackPinkList[3]);
  // 지정한 List의 최대 크기를 넘어서는 index에 접근하여 오류 발생
  // print(blackPinkList[4]);

  // 제네릭으로 데이터 타입을 지정한 List
  List<String> aespaList = ["카리나", "윈터", "지젤", "닝닝"];
  print(aespaList);
  print(aespaList[0]);
  print(aespaList[1]);
  print(aespaList[2]);
  print(aespaList[3]);

  print("\n ----- List 의 주요 메소드 -----");
  // length : 지정한 리스트의 길이를 출력
  // add(value) : 지정한 리스트의 마지막에 데이터를 추가
  // insert(index, value) : 지정한 리스트의 지정한 index 에 데이터를 추가
  // remove(value) : 지정한 리스트에서 데이터 삭제 후 결과를 반환 (true/false)
  // removeAt(index) : 지정한 리스트에서 지정한 index 의 데이터 삭제 후 삭제한 데이터 반환
  // removeLast() : 지정한 리스트의 가장 마지막 데이터 삭제 후 삭제한 데이터 반환
  // contains(value) : 지정한 리스트에 지정한 데이터가 있는지 여부 확인 (true/false)
  // clear() : 지정한 리스트의 내용을 모두 삭제
  // isEmpty : 지정한 리스트가 비었는지 여부 확인 (true/false)

  // 데이터 타입 추론으로 정수 타입의 List 를 선언과 동시에 데이터를 저장
  var list1 = [1, 2, 3];
  // 데이터 타입 추론으로 정수 타입의 List 를 선언만 함
  var list2 = <int>[];
  // 데이터 타입 추론을 하는 List 를 선언만 함
  var list3 = [];
  // 제네릭을 사용하여 정수 타입의 List를 선언만 함
  List<int> list4 = [];

  // 정수 타입의 List 인 list1 의 각 index 에 정수 데이터를 저장
  list1[0] = 10;
  list1[1] = 20;
  list1[2] = 30;
  print(list1[0]);
  print(list1[1]);
  print(list1[2]);

  // list2 는 정수 타입 List 를 선언만 했기 때문에 List의 길이가 0 임
  // 0 index 가 없는 상태인데, 0 index 에 데이터를 저장하기 때문에 오류 발생
  // list2[0] = 10;

  print("\n ----- 저장 메소드 -----");

  List<int> list5 = [10, 30, 40];
  print(list5);

  // add(), insert() 를 사용하여 리스트에 데이터 추가
  list5.add(50); // 가장 뒤에 추가
  list5.insert(1, 20); // 지정한 index 에 추가
  print(list5);

  print("\n ----- 삭제 메소드 -----");

  // 리스트에서 지정한 데이터를 삭제 후 삭제 결과를 출력
  var remove1 = list5.remove(10);
  print(list5);
  print(remove1); // 삭제 결과 true/false

  // 리스트의 지정한 index 의 데이터 삭제 후 삭제 데이터를 출력
  var remove2 = list5.removeAt(1);
  print(list5);
  print(remove2); // 삭제된 데이터 출력

  // 리스트의 가장 마지막 데이터를 삭제 후 삭제 데이터를 출력
  var remove3 = list5.removeLast();
  print(list5);
  print(remove3); // 삭제된 데이터 출력

  // length 를 사용하여 지정한 리스트의 길이를 출력
  for (int i = 0; i < list5.length; i++) {
    print(list5[i]);
  }

  print("\n ----- contains, clear, isEmpty -----");

  print(list5);
  print(list5.isEmpty); // 지정한 List 가 비었는지 확인

  var result = list5.contains(20); // 지정한 데이터가 List에 존재하는지 확인
  print(result);

  print(list5.length); // 지정한 List의 길이를 출력
  list5.clear(); // 지정한 List의 모든 데이터 삭제
  print(list5.isEmpty);
  print(list5);

  print("\n ----- List의 출력 메소드 -----");
  // List의 모든 데이터를 순서대로 출력하기 위한 출력용 메소드
  // 메소드의 매개변수로 함수를 가지는 출력용 메소드임

  // where() : 지정한 리스트의 요소를 하나씩 순서대로 모두 접근하면서 지정한 조건에 맞는 데이터만 모아서 Iterable 타입으로 출력
  // map() : 지정한 리스트의 요소를 하나씩 순서대로 모두 접근하면서 연산을 진행 후 그 결과값을 모두 모아서 Iterable 타입으로 출력
  // reduce() : 지정한 리스트의 요소를 하나씩 순서대로 모두 접근하면서 이전 데이터와 현재 데이터를 합연산을 진행 후 현재 리스트의 요소 타입으로 출력
  // fold() : reduce() 와 동일한 기능을 제공하지만 사용자가 원하는 데이터 타입으로 출력

  List<String> bp = ['리사', '로제', '지수', '제니'];

  print('\n ----- where() -----');
  // 지정한 List에서 where() 을 사용하여 데이터에 하나씩 접근
  // 가져온 데이터를 함수의 매개변수로 사용
  // 출력할 결과가 조건식에 맞으면 Iterable 타입으로 출력, 아니면 버림
  final bpUnit = bp.where((name) {
    return name == '리사' || name == '지수';
  });

  // 반환된 데이터 출력
  print(bpUnit); // Iterable 타입의 데이터 출력
  print(bpUnit.toList()); // Iterable 타입을 List 타입으로 변환하여 출력

  print('\n ----- where() 을 for 로 구현 -----');
  List<String> resultList = [];

  for (int i = 0; i < bp.length; i++) {
    if (bp[i] == '리사' || bp[i] == '지수') {
      resultList.add(bp[i]);
    }
  }

  print(resultList);

  print('\n ----- map() -----');
  // 지정한 List에 map() 을 사용하여 데이터에 하나씩 접근
  // 가져온 데이터를 함수의 매개변수로 사용
  // 가져온 데이터를 연산에 사용 후 결과값을 Iterable 타입으로 반환
  final newBP = bp.map((name) {
    return "블랙핑크 " + name;
  });

  // 반환된 데이터 출력
  print(newBP); // Iterable 타입의 데이터 출력
  print(newBP.toList()); // Iterable 타입을 List 타입으로 변환하여 출력

  print('\n ----- map() 을 for 로 구현 -----');

  resultList = [];

  for (int i = 0; i < bp.length; i++) {
    String result = "블랙핑크 " + bp[i];
    resultList.add(result);
  }

  print(resultList);

  print('\n ----- reduce() -----');
  // 지정한 List에 reduce() 를 사용하여 데이터에 하나씩 접근
  // 가져온 데이터를 함수의 매개변수로 사용
  // 누적 데이터와 현재 데이터를 연산 후 지정한 리스트의 데이터 타입으로 출력
  final bpList = bp.reduce((prevValue, currValue) {
    return prevValue + ", " + currValue;
  });

  print(bpList);

  print('\n ----- reduce() 을 for 로 구현 -----');

  String resultStr = "";

  for (int i = 0; i < bp.length; i++) {
    if (i == 0) {
      resultStr += bp[i];
    } else {
      resultStr += ", " + bp[i];
    }
  }

  print(resultStr);

  print('\n ----- fold() -----');

  // List<String> bp = ['리사', '로제', '지수', '제니'];
  // 지정한 List에 fold() 를 사용하여 데이터에 하나씩 접근
  // 가져온 데이터를 함수의 매개변수로 사용
  // 초기데이터, 누적데이터, 현재 데이터를 모아서 fold() 사용 시 지정한 타입으로 출력
  final bpSize = bp.fold<int>(0, (prevValue, currValue) {
    return prevValue + currValue.length;
  });

  print(bpSize);

  print('\n ----- reduce() 을 for 로 구현 -----');

  var total = 0;

  for (int i = 0; i < bp.length; i++) {
    total += bp[i].length;
  }

  print(total);

  List<String> lesserafim = ['김채원', '사쿠라', '허윤진', '카즈하', '홍은채'];
  final lesserafimSize = lesserafim.fold<int>(0, (prev, curr) {
    return prev + curr.length;
  });

  print(lesserafimSize);
}
