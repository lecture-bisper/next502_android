void main() {
  print('\n ----- 구조분해할당 ----- \n');
  // 리스트 선언
  final List<String> newJeans = ['민지', '하니', '해린', '혜인'];
  print('newJeans 멤버 : $newJeans');

  // 리스트의 데이터를 하나씩 출력하는 일반적인 방법
  final String minji = newJeans[0];
  final String hani = newJeans[1];
  final String haerin = newJeans[2];
  final String heyin = newJeans[3];

  print("newJeans 멤버명 : $minji, $hani, $haerin, $heyin");

  // 구조분해할당 방식을 사용하여 리스트의 내용을 모두 출력
  // ' = ' 연산자 오른쪽에 있는 리스트의 요소를 ' = ' 왼쪽에 있는 변수 리스트에 순서대로 대입함
  // ' = ' 왼쪽에 있는 변수 리스트는 각각의 변수로 동작
  final [minji2, hani2, haerin2, heyin2] = ['민지', '하니', '해린', '혜인'];

  print("newJeans 멤버명 : $minji2, $hani2, $haerin2, $heyin2");

  final [minji3, hani3, haerin3, heyin3] = newJeans;

  print("newJeans 멤버명 : $minji3, $hani3, $haerin3, $heyin3");

  print('\n ----- 스프레드 연산자를 사용한 구조분해할당 -----');

  // ... : 스프레드 연산자, 구조 분해 할당 시 나머지 모든 내용을 의미하는 연산자
  const List<int> numbers = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];

  // 구조분해할당 방식을 사용하여 ' = ' 연산자 왼쪽에 선언한 x, y, z 변수에 각각 데이터를 저장하고 남은 데이터를 스프레드 연산자를 사용하여 모두 출력, 저장할 변수를 지정하지 않아서 데이터가 버려짐
  final [x, y, ..., z] = numbers;

  print('변수 x : $x');
  print('변수 y : $y');
  print('변수 z : $z');

  print("");
//   스프레드 연산자를 사용하여 리스트의 남은 내용을 변수에 저장
  final [a, b, ...middle, j] = numbers;
  print('변수 a : $a');
  print('변수 b : $b');
  print('변수 j : $j');
  print('변수 middle : $middle');

  print("\n ----- record 의 데이터를 구조분해할당 -----\n");
  // record 로 저장된 데이터
  var result = ('다니엘', 25, '가수');

  // record 에서 변수로 데이터 출력
  var name = result.$1;
  var age = result.$2;
  var job = result.$3;

  print('이름 : $name, 나이 : $age, 직업 : $job');

  // record 의 데이터를 구조분해할당을 통해서 한번에 변수로 출력
  var (name2, age2, job2) = ('하니', 25, 'idol');
  print('이름 : $name2, 나이 : $age2, 직업 : $job2');


  print("\n ----- Map 의 데이터를 구조분해할당 -----\n");

  final Map HaerinMap = {'name': '해린', 'age': 19, 'job': 'idol'};

  // Map 데이터를 변수로 출력하는 일반적인 방식
  var haerinName = HaerinMap['name'];
  var haerinAge = HaerinMap['age'];
  var haerinJob = HaerinMap['job'];

  print('이름 : $haerinName, 나이 : $haerinAge, 직업 : $haerinJob');

  // Map 데이터를 구조분해할당 방식을 사용하여 변수로 출력
  // Map 데이터의 Key 명과 일치하도록 설정, 원하는 이름으로 변수명 설정
  // Map 데이터이므로 순서와는 상관 없음
  var {'age': haerinAge2, 'job': haerinJob2, 'name': haerinName2} = HaerinMap;

  print('이름 : $haerinName2, 나이 : $haerinAge2, 직업 : $haerinJob2');

  print("\n ----- 클래스의 구조분해 할당 -----\n");

  // 객체 생성
  final hyein = Idol('혜인', 17, 'idol');
  hyein.printInfo();

  // 클래스의 구조 분해 할당, 클래스의 생성자 구조와 동일하게 입력
  // key 이름을 클래스의 멤버 변수명과 동일하게 사용
  final Idol(name: hyeinName, age: hyeinAge, job: hyeinJob) = hyein;
  print('이름 : $hyeinName, 나이 : $hyeinAge, 직업 : $hyeinJob');
}

class Idol {
  final String name;
  final int age;
  final String job;

  Idol(this.name, this.age, this.job);

  void printInfo() {
    print('이름 : $name, 나이 : $age, 직업 : $job');
  }
}









