
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 부모 클래스인 StatefulWidget 상속받은 자식 클래스 Counter
class Counter extends StatefulWidget {
  // 멤버 변수 선언
  final int initCount;

  // 생성자 선언, 매개변수 initCount 를 받아서 초기화, 기본값 0
  const Counter({super.key, this.initCount = 0});

  // StatefulWidget 클래스의 객체 생성 시 생성자 실행 후 자동 실행되는 createState() 메소드
  // 반환타입이 State 클래스 타입, 제네릭을 통해서 State<Counter> 타입을 반환
  // _CounterState 클래스의 객체 생성 후 반환, ' _ ' 를 사용하여 private 타입으로 객체 생성하여 외부 파일에서는 접근할 수 없음, 같은 파일 안에서만 사용 가능
  @override
  State<Counter> createState() => _CounterState();
}

// 부모 클래스 State 를 상속받은 _CounterState 클래스
class _CounterState extends State<Counter> {
  // 멤버 변수 선언
  // late : 지정한 변수를 선언 시 바로 초기화하지 않고, 해당 변수를 사용 시 초기화함(지연 초기화)
  // dart 언어는 null 안정성을 위해서 null 값을 사용하지 않음, null을 사용할 수 없도록 변수 선언과 동시에 초기값을 설정
  // 선언과 동시에 초기값을 설정하지 않을 경우 late 키워드를 사용하여 나중에 초기화한다고 컴파일러에게 알려줌
  // int _count = 0; // 초기값을 설정해도 됨
  late int _count;

  // State 클래스의 객체 생성 시 생성자 실행 후 자동 실행되는 initState() 메소드
  @override
  void initState() {
    super.initState();
    // 멤버 변수의 초기값 설정
    _count = widget.initCount;
    print('\n===== initState() 호출 (Counter 위젯 초기화) =====\n');
  }

  // initState() 메소드가 호출된 후 현재 위젯의 상태는 dirty 상태가 됨
  // 상태가 dirty 이면 build() 메소드가 자동 호출 됨
  // build() 메소드가 호출된 후 위젯의 상태가 clean 이 됨
  @override
  Widget build(BuildContext context) {
    print("\n===== build() 호출 (Counter 위젯 빌드) =====\n");

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey,),
          borderRadius: BorderRadius.circular(10.0),
          ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 현재 멤버 변수 _count 의 값을 화면에 출력
            Text(
              "현재 카운트 : $_count",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16,),
            // 버튼 클릭 시 멤버 변수의 값 변경
            ElevatedButton(
              onPressed: () {
                // setState() 함수를 호출하여 현재 위젯의 상태를 dirty 로 만듬
                setState(() {
                  // 멤버 변수의 값 증가
                  _count++;
                  print(" *** 카운트 증가 : $_count ***");
                });
              },
              child: Text('증가'),
            ),
          ],
        ),
      ),
    );
  }

  // 부모의 값이 변경 시 자동 호출
  @override
  void didUpdateWidget(Counter oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initCount != widget.initCount) {
      _count = widget.initCount;
      print("\n===== didUpdateWidget() 호출 (Counter 위젯 업데이트) =====\n");
    }
  }

  // 현재 위젯이 위젯 트리에서 삭제될 경우 호출
  // 현재 위젯에서 사용한 리소스를 해제할 때 사용
  @override
  void dispose() {
    print("\n===== dispose() 호출 (Counter 위젯 해제) =====\n");
    super.dispose();
  }
}










