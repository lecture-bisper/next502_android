void main(List<String> arguments) {
  print("\n ----- try ~ catch ~ finally -----\n");

  // 예외처리 : 자바의 예외 처리와 동일한 형태의 try ~ catch ~ finally
  // 모든 예외에 대한 예외 처리는 catch 가 진행하고, Exception 클래스는 생략 후 객체 e 만 입력
  // 특정 예외를 지정할 경우 'on 예외종류' 형태로 사용
  // 특정 예외를 지정하고 해당 예외의 객체가 필요한 경우 'on 예외종류 catch(e)' 형태로 사용
  // on{}, catch(e){} 를 사용하여 여러가지 예외 처리 및 나머지 예외 처리가 가능함
  // 스택트레이스가 필요한 경우 'catch(e, s)' 형태로 사용
  // 'throw 예외종류' 를 사용하여 강제로 지정한 예외를 발생시킬 수 있음

  print("\n----- try ~ catch 사용 -----");
  //  예외처리의 기본 형태
  try {
    final String name = 'next502';
    throw Exception('이름을 입력하세요!!');
    print(name);
  } catch (e) {
    print('오류 발생!!\n$e');
  }

  print("\n----- try ~ catch ~ finally 사용 -----");
  try {
    final String name = "문자열";
    throw Exception('try ~ catch ~ finally 사용 중 예외!!');
  } catch (e) {
    print('예외 발생\n$e');
  } finally {
    print('무조건 실행되는 finally 부분');
  }

  print('\n ----- 지정한 예외에 대한 처리 -----');
  try {
    int result = 10 ~/ 0;
    print(result);
    throw FormatException('파일 없음'); // 강제로 예외 발생
    // 예외 지정 및 예외 객체 가져오기
  } on UnsupportedError catch (e) {
    print('0으로 나눌 수 없음');
    print(e);
    // 예외만 지정
  } on FormatException {
    print('FormatException 예외 발생');
    // 모든 예외에 대해서 예외 처리, 예외 객체 및 스택트레이스 객체 가져오기
  } catch (e, s) {
    print('예외 발생 : $e');
    print('예외 위치 : $s');
  }
}
