Future<void> main() async{
  //1.await를 쓰는 함수는 async 함수여야 한다.
  //2.그 함수는 Future를 리턴해야 한다.

  String data = await getDataFromServer();
  print(data);

  print("a");
  print("b");
  print("c");
}

Future<String> getDataFromServer() {
  //가짜로 만들어본 Future 예제.
  //Future.delayed 이름있는 생성자.
  //delayed 생성자를 쓰면,
  //delayed의 1번쨰 인자(Duration), 2번쨰 인자(함수)
  //Duration 시간의양을 나타낼때 씀.. 3초.를 나타냄.
  //2번째 인자의 함수는 Duration뒤에 실행되는것... 그래서, 그 함수의 결과를 then을 통해서 알려줌.
  return Future.delayed(Duration(days: 3), () {
    return "data";
  });
}
