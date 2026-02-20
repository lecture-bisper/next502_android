void main() {
  print("\n----- map 사용 -----\n");
  // 하나의 변수명으로 여러개의 데이터를 저장할 수 있는 데이터 타입
  // dart 의 Map 은 java의 HashMap 과 동일한 기능함
  // index 가 없고, key 와 value 가 1:1로 연동되어 있음 (순서에 상관없이 저장)
  // {} 기호를 사용, key 와 value 는 ' : ' 기호로 구분, 각각의 데이터는 ' , ' 기호로 구분
  // key 가 String 타입일 경우 'key명' 형태로 사용
  // map변수명[key] 로 데이터 접근, map변수명[key] = value 로 데이터 수정
  // map변수명[key] = value 사용 시 존재하지 않은 key 일 경우 데이터를 추가함
  // Map 타입도 여러가지 메소드를 제공함

  // Map의 주요 메소드
  // containsKey(key) : 지정한 Map 에 저장된 key 중 지정한 key 가 존재하는 여부 확인 (true/false)
  // remove(key) : Map 에서 지정한 key 를 가지는 value 를 삭제
  // clear() : 지정한 Map 의 모든 데이터 삭제
  // keys : 지정한 Map 에 저장된 모든 key 를 Iterable 타입으로 출력
  // values : 지정한 Map 에 저장된 모든 values 를 Iterable 타입으로 출력
  // isEmpty : 지정한 Map 이 비었는지 여부 확인 (true/false)
  // length : 지정한 Map 의 길이를 출력

  // var 과 Map() 생성자를 사용하여 데이터 추론이 가능한 빈 Map 을 생성
  var map1 = Map();
  // 저장할 데이터 타입을 Map<String, String> 타입으로 고정한 빈 Map 생성
  var map2 = Map<String, String>();
  // 저장할 데이터 타입을 추론하는 빈 Map 생성
  Map map3 = {};
  // Map<String, String> 타입의 데이터를 선언과 동시에 저장한 Map
  Map map4 = {'first': '첫번째', 'second': '두번째'};
  // 저장할 데이터 타입을 Map<String, String> 타입으로 고정한 빈 Map 생성
  Map<String, String> map5 = {};

  print(map4);
  print(map4['first']); // key 를 사용하여 데이터 출력
  map4['second'] = '2번'; // 지정한 key 에 새로운 데이터를 저장 (기존 데이터 수정)
  print(map4['second']);

  print(map4);
  // 지정한 key 에 새로운 데이터를 저장, 기존에 존재하는 key 가 아닐 경우 새로운 데이터를 Map 에 추가
  map4['three'] = '세번째';
  print(map4['three']);

  // 지정한 key 가 Map 에 있으면 true, 없으면 false
  print(map4.containsKey('second'));
  map4.remove('first'); // Map 에 지정한 key 를 가지고 있는 value 를 삭제
  print(map4);

  var mapKeys = map4.keys; // 지정한 Map 의 모든 key 를 출력
  var mapValues = map4.values; // 지정한 Map 의 모든 value 를 출력
  print(mapKeys);
  print(mapValues);

  print(map4.isEmpty); // 지정한 Map 이 비었는지 확인
  map4.clear(); // Map 에 저장된 모든 데이터 삭제
  print(map4.length);
}
