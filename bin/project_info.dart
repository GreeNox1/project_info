import 'dart:convert';
import 'models/data_info.dart';
import 'service/network_service.dart';

void main()async{

  print("\x1B[1m\x1B[32mWelcome to Dart\x1B[0m\x1B[0m");

  String response = await NetworkService.getData(NetworkService.apiArt);

  List<dynamic> dataList = jsonDecode(response);

  String data = jsonEncode(dataList[0]);

  print(infoFromData(data));

}