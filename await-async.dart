void main() async {
  String data = await getDataFromServer(); //Future는 원래 미리 줘야하는데, 기다리게 만드는게 await이다. data가 왔음.
  print(data);

  print('a');
  print('b');
  print('c');
  print('d');
}

Future<String> getDataFromServer() async {
  return Future.delayed(Duration(seconds: 1), () {
    return "data";
  });
}
