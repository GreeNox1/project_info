import 'package:http/http.dart';

class NetworkService{

  static final String baseUrl = "654b800b5b38a59f28ef30cd.mockapi.io";

  static final String apiArt = "/info";

  static Future<String>getData(String api)async{
    Uri url = Uri.https(baseUrl, api);
    Response response = await get(url);
    return response.body;
  }

}