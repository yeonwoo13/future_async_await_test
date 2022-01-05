void main() {
  Future dataFuture = getDataFromServer();
  //getDataFromServer를 이용해서 데이터를 받아서 A기능해라(print)해라.
  dataFuture.then((value){
    print(value);
  });

  //저게 끝나기 전에, B기능, C기능, D기능을 순차적으로 실행해라.(pint)
  print('a');
  print('b');
  print('c');
  print('d');
}

Future<String> getDataFromServer() {
  return Future.delayed(Duration(seconds: 3), () {
    return "data";
  });
}
