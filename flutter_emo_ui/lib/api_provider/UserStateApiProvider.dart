import 'dart:convert';

import 'package:flutter_emo_ui/model/UserState.dart';
import 'package:http/http.dart';

class UserStateApiProvider {
  
  final String baseUrl = "https://baseurl.com";
  final successCode = 200;
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

  Future<List<UserState>> fetchPlayersByCountry(String countryId) async {
    final response = await client.get(baseUrl + "country=" + countryId);

    return parseResponse(response);
  }

  Future<List<UserState>> fetchPlayersByName(String name) async {
    final response = await client.get(baseUrl+"name="+name);

    return parseResponse(response);
  }

  List<UserState> parseResponse(Response response) {
    final responseString = jsonDecode(response.body);

    if (response.statusCode == successCode) {
      return UserStateApiResult.fromJson(responseString);
    } else {
      throw Exception('failed to load players');
    }
  }
}

class UserStateApiResult {
  static List<UserState> fromJson(String response) {
      return null;
  }
}