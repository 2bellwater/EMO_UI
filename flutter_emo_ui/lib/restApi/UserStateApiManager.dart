import 'package:flutter_emo_ui/model/UserState.dart';
import 'package:http/http.dart';

class UserStateApiManager {
  Client client = Client();

  Future<int> saveUserStateToServer(UserState userState) async {
    var url = "https://temp~~~";
    var requestjson = userState.toJson();
    var response = await client.post(url, body:requestjson);

    print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return response.statusCode;
    } else {
      // If that call was not successful, throw an error.
      //throw Exception('Failed to load post');
      print("not response for search list");
      return response.statusCode;
    }
  }
}

