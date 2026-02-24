void main() {
  // 문제 1) 1 ~ 10 까지의 숫자 중 홀수만 출력하는 프로그램을 작성하세요 (반복문 사용)
  print('\n----- 문제 1 -----\n');

  for (var i = 1; i < 11; i++) {
    if (i % 2 != 0) {
      print('i : $i');
    }
  }

  // 문제 2) 주어진 리스트의 요소를 모두 출력하는 프로그램을 일반 for 문과 for ~ in 문을 사용하는 방식 2가지로 작성하세요
  // 리스트 : ["red", "orange", "green", "blue", "purple"];
  print('\n----- 문제 2 -----\n');

  List<String> colors = ["red", "orange", "green", "blue", "purple"];

  for (var i = 0; i < colors.length; i++) {
    print('color : ${colors[i]}');
  }
  print("");
  for (String color in colors) {
    print('color : $color');
  }

  // 문제 3) 숫자 1부터 몇까지 더해야 100 이 넘는지 확인하는 프로그램을 작성하세요
  print('\n----- 문제 3 -----\n');

  var total = 0;
  for (var i = 1; i <= 100; i++) {
    total += i;

    if (total > 100) {
      print('100 이 넘게 되는 숫자는 $i 입니다.');
      break;
    }
  }

  // 문제 4) 두 정수를 매개변수로 입력받아 곱한 값을 반환하여 결과를 출력하는 프로그램을 일반 함수 방식과 화살표 함수 방식으로 각각 작성하세요
  print('\n----- 문제 4 -----\n');

  var result = multi(10, 20);
  print('두 수의 곱셈 : $result');
  var multi2 = (int x, int y) => x * y;
  result = multi2(10, 20);
  print('두 수의 곱셈 : $result');

  // 문제 5) 1 ~ 20까지의 정수가 저장된 리스트에서 3 의 배수만 골라내어 새로운 List 를 만드는 프로그램을 작성하세요 (where() 사용)
  // 리스트 : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20];
  print('\n----- 문제 5 -----\n');

  List<int> numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
  ];

  print('원본 리스트 : $numbers');

  Iterable<int> iterNum = numbers.where((num) => num % 3 == 0);
  print('Iterable 타입 데이터 : $iterNum');
  List<int> listNum = iterNum.toList();
  print('3의 배수 리스트 : $listNum');

  // 문제 6) enum 타입 Arrow 를 선언하고, UP/DOWN/LEFT/RIGHT 를 요소를 저장 후 UP = '앞으로 이동', DOWN = "뒤로 이동", LEFT = "왼쪽으로 이동", RIGHT = "오른쪽으로 이동" 을 출력하는 프로그램을 작성하세요(if ~ case 사용)
  print('\n----- 문제 6 -----\n');

  Arrows arrow = Arrows.LEFT;

  if (arrow case Arrows.UP) {
    print('앞으로 이동');
  } else if (arrow case Arrows.DOWN) {
    print('뒤로 이동');
  } else if (arrow case Arrows.LEFT) {
    print('왼쪽으로 이동');
  } else if (arrow case Arrows.RIGHT) {
    print('오른쪽으로 이동');
  }

  print('\n----- 문제 7 -----\n');

  Student student = Student("카리나", 2);
  student.showInfo();

  print('\n----- 문제 8 -----\n');

  Pizza pizza = Pizza(size: "라지");
  pizza.order();

  print('\n----- 문제 9 -----\n');
}

int multi(int x, int y) {
  return x * y;
}

enum Arrows { UP, DOWN, LEFT, RIGHT }

// 문제 7) 멤버 변수로 String name, int grade 를 가지는 Student 클래스를 생성하세요
// 생성자를 통해서 두 값을 초기화하고, 학년과 이름을 출력하는 showInfo() 메소드를 작성하세요
class Student {
  String name;
  int grade;

  // Student(String name, int grade) : this.name = name, this.grade = grade;
  Student(this.name, this.grade);

  void showInfo() {
    print('$grade 학년, $name 입니다.');
  }
}

// 문제 8) String crust, String size, bool hasCheese 멤버 변수를 가지는 Pizza 클래스를 생성하세요
// 생성자는 네임드 매개변수 생성자를 사용하고, size 는 필수로 입력받도록 하고, 주문한 Pizza 내용을 출력하는 order() 메소드를 작성하세요
class Pizza {
  // String crust;
  // String size;
  // bool hasCheese;

  // Pizza({this.crust = "치즈크러스트", required this.size, this.hasCheese = false});

  String crust = "소시지 크러스트";
  String size;
  bool hasCheese = false;

  Pizza({required this.size});

  void order() {
    print('주문받은 피자 - 사이즈 : $size, 추가 옵션 : $crust, 치즈 추가 : $hasCheese');
  }
}

// 문제 9) Book 클래스를 설계하세요
// 멤버 변수 : title, author, isAvailable (기본값 true)
// 생성자 ; 제목, 저자만 입력받음
// 메소드 : borrowBook() (대출 가능 시 isAvailable 을 false 로 변경, 이미 대출 중일 경우 경고 출력)

class Book {
  String title;
  String author;
  bool isAvailable = true;

  Book(this.title, this.author);

  void borrowBook() {
    if (isAvailable == true) {
      isAvailable = false;
      print('저자 $author 인 도서 $title 가 대출 완료 되었습니다.');
    } else {
      print('저자 $author 인 도서 $title 은 이미 대출 중 입니다.');
    }
  }
}

// 문제 10) 다음 조건에 맞는 CoffeeOrder 클래스를 완성하세요.
// String menu, int price, bool isIced 필드를 가짐.
// 모든 필드를 이름 있는 매개변수로 받는 기본 생성자 작성.
// CoffeeOrder.hot(String menu, int price) 네임드 생성자 (isIced를 false로 고정).
// printReceipt() 메서드 (메뉴와 가격을 출력하고, 아이스인 경우 "[ICE]" 문구를 추가 출력).
