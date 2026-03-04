
void main() {
  print("\n----- Duration -----\n");

  Duration duration = Duration(seconds: 192);
  print('시간 정보 : $duration'); // 0:03:12.000000 로 출력

  String strTime = duration.toString();
  var timeSplit = strTime.split('.');
  print('split() 사용 후 : $timeSplit'); // 리스트로 [0:03:12, 000000] 출력
  print('시간 정보 : ${timeSplit[0]}');

//   0:03:12 에서 시간 부분은 없으니 생략하고, 분과 초만 사용
  strTime = timeSplit[0];
  timeSplit = strTime.split(':');
  print(' : 으로 시간 정보를 나눈 후 : $timeSplit'); // 리스트로 [0, 03, 12] 출력

  strTime = timeSplit[1] + ':' + timeSplit[2];
  print('분과 초만 출력 : $strTime'); // 03:12 출력
  strTime = '${timeSplit[1]}:${timeSplit[2]}';
  print('분과 초만 출력 : $strTime'); // 03:12 출력

  print("\n----- Duration 의 메소드 이용하여 출력 -----\n");
  print('duration : $duration');
  // 생성된 Duration 클래스 타입의 객체가 가지고 있는 시간 정보를 분으로 출력
  var min = duration.inMinutes;
  // 생성된 Duration 클래스 타입의 객체가 가지고 있는 시간 정보를 초로 출력
  var sec = duration.inSeconds;
  // sec % 60 는 총 시간에서 60초로 나누고 남은 초만 출력
  print('분 : $min, 초 : ${sec % 60}, $sec');
  // 생성된 시간 정보를 toString() 을 사용하여 문자열로 변환, 10 의 자리 숫자가 0 일 경우 0을 생략
  // padLeft() 를 사용하여 문자열을 2자리로 만들고, 10의 자리가 0일 경우 생략이 아닌 문자열 0 을 추가
  String strMin = duration.inMinutes.toString().padLeft(2, '0');
  String strSec = (duration.inSeconds % 60).toString().padLeft(2, '0');
  print('분 : $strMin, 초 : $strSec');
  print('분과 초만 출력 : $strMin:$strSec');

}









