void main() {
  print("\n ----- switch 의 새 기능 -----\n");

  String dayKor = '목요일';

  // switch 의 표현식 기능을 사용
  // switch 를 함수처럼 사용 가능함
  // case 문 대신 => 를 사용하는 방식을 사용
  String dayEnglish = switch (dayKor) {
    // case 키워드 삭제 후 매칭할 값만 입력
    // ' : ' 기호 대신 ' => ' 사용
    '월요일' => 'monday',
    '화요일' => 'tuesday',
    '수요일' => 'wednesday',
    '목요일' => 'thursday',
    '금요일' => 'friday',
    '토요일' => 'saturday',
    '일요일' => 'sunday',
    // default : 대신 ' _ => ' 사용
    _ => 'not found',
  };

  print('$dayKor 을 영어로 $dayEnglish');

  print('\n ----- 기존 switch 로 표현 -----');

  dayKor = '금요일';

  switch (dayKor) {
    case '월요일':
      dayEnglish = 'monday';
      break;

    case '화요일':
      dayEnglish = 'tuesday';

    case '수요일':
      dayEnglish = 'wednesday';

    case '목요일':
      dayEnglish = 'thursday';

    case '금요일':
      dayEnglish = 'friday';

    case '토요일':
      dayEnglish = 'saturday';

    case '일요일':
      dayEnglish = 'sunday';

    default:
      dayEnglish = 'not found';
  }

  print('$dayKor 을 영어로 $dayEnglish');

  print("\n ----- switch ~ case 로 패턴 매칭 ----- \n");

  switcher('aaa');
  switcher([1, 2]);
  switcher(['문', 10, false]);
  switcher([40, 50]);
  switcher(('윈터', 25));
  switcher(true);

  print("\n ----- switch ~ case 엄격한 조건 검사 ----- \n");

  bool? val;
  // switch ~ case 문의 조건식 부분에 입력된 데이터가 가질 수 있는 모든 패턴을 case 로 제공해야 함
  // 모든 패턴을 case 제공하지 않으려면 default: 를 제공해야 함
  switch (val) {
    case true:
      print('true 와 일치');
    case false:
      print('false 와 일치');
    // case null:
    //   print('null 과 일치');
    default:
      print('일치하는 것 없음');
  }

  print("\n ----- switch ~ case 보호 구문 ----- \n");

  (int num1, int num2) value = (1, 5);

  switch (value) {
    // 첫번째 비교는 패턴 비교, Record 타입이며, 첫번째 데이터는 정수 1, 두번째 데이터는 어떤 데이터든지 상관없음
    // 첫번째 비교 결과가 true 일 경우 두번째 조건 확인, record 의 두번째 값이 0보다 크면 true
    case (1, _) when value.$2 > 0:
      print('(1, _) 형태와 일치, 값은 1, ${value.$2}');

    default:
      print('일치하는 것 없음');
  }

  print("\n ----- when 보호 구문 없이 사용 -----");

  switch (value) {
    // 패턴 비교
    case (1, _):
      // 패턴 비교가 true 이면 if 문으로 조건식 확인
      if (value.$2 > 0) {
        print('(1, _) 형태와 일치, 값은 1, ${value.$2}');
      }
      else {
        print('일치하는 것 없음');
      }
      break;

    default:
      print('일치하는 것 없음');
  }
}

void switcher(dynamic any) {
  // switch ~ case 에 패턴 추가
  switch (any) {
    // 기존 방식 그대로 값을 비교, 문자열 'aaa'
    case 'aaa':
      print('"aaa" 와 일치');
    // 기존 방식 그대로 값을 비교, 요소가 2개인 리스트이면서 요소 값이 1, 2
    case [1, 2]:
      print('[1, 2] 와 일치');

    //   패턴 비교, 요소가 3개인 리스트인지 확인, 각 요소의 값은 비교 안함
    case [_, _, _]:
      print('[_, _, _] 와 일치');

    //   패턴 비교, 요소가 2개인 리스트 이면서 각 요소는 정수인 리스트
    case [int a, int b]:
      print('[정수 $a, 정수 $b] 와 일치');

    //   패턴 비교, 문자열과 정수 데이터를 순서대로 1개씩 가지고 있는 Record 타입
    case (String a, int b):
      print('Record (String: $a, int $b) 와 일치');

    default:
      print('일치하는 것이 없음');
  }
}








