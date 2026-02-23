void main() {

  print("\n ----- while -----\n");
//   js 및 java 의 while 문과 동일함
  var total = 0; // 총합을 저장할 변수
  var count = 1; // 초기화 변수

  // while 문과 조건식
    while (count <= 10) {
      total += count;
      print('count : $count, total : $total');

      count++; // 증감식
    }
  
  print("\n ----- do ~ while ----- \n");
//   js 및 java 의 do ~ while 문과 동일함

  // 위에서 사용한 변수를 재활용하여 while 문의 조건식 결과가 한번도 true 일 수 없음, 해당 while 문을 한번도 실행하지 않음
  while (count <= 10) {
    total += count;
    print('count : $count, total : $total');

    count++;
  }

  // do ~ while 문은 코드블럭을 먼저 실행하고, 나중에 조건식을 확인하여 조건식 결과가 늘 false 일지라도, 무조건 한번은 실행함
  do {
    total += count;
    print('count : $count, total : $total');
    count++;
  } while(count <= 10);

  print("\n ----- for ----- \n");
//   js 및 java 의 기본 for 문과 동일함
//   for ~ in 문을 기능을 가지고 있음
//   forEach() 함수를 제공하여 람다식으로 사용 가능
//   리스트 컴프리헨션 방식을 지원하여 다중 for 문을 간결하게 사용

  for (var i = 0; i < 5; i++) {
    print("i : $i");
  }

  print("");
  List<int> numList = [10, 20, 30, 40, 50];

  for (var i = 0; i < numList.length; i++) {
    print('numList[$i] : ${numList[i]}');
  }

  print("");
  // for ~ in 문 을 사용하여 리스트의 내용을 모두 출력
  for (var num in numList) {
    print('num : $num');
  }

  print("");
  // forEach() 함수와 람다식을 사용하여 리스트의 내용을 모두 출력
  numList.forEach((item) => print('item : $item'));

  print("");
  // 람다식 대신 함수를 풀어서 사용
  numList.forEach((item) {
    print('item : $item');
  });

  print("");
  // 2차원 리스트 만들기
  List listInList = [];
  for (var i = 0; i < 3; i++) {
    List<int> row = [];
    for (var j = 0; j < 3; j++) {
      row.add(i + j);
    }
    listInList.add(row);
  }

  print(listInList);
  // 리스트 컴프리헨션 방식으로 2차원 리스트 만들기
  print("");
  List listInList2 = [
    for (var i = 0; i < 3; i++)
      [for (var j = 0; j < 3; j++) i + j]
  ];

  print(listInList2);


}







