import 'dart:convert';

import 'package:http/http.dart' as http;

class WebServices{
  final String upBaseURL = "yor api url here";
  Future<dynamic> farmerLogin(String uName,String pass) async {
    final String loginURL = upBaseURL + "FarmerLogin";

    var t = {
      "User_Name":uName,
      "Password":pass
    };
    print(loginURL);
    print(json.encode(t));

    return http.post(
      loginURL, body: json.encode(t), headers: {
      "Accept": "application/json, text/plain, */*",
      "Content-Type": "application/json;charset=utf-8"
    },).then(( val) {
      print(val.body);
      return (json.decode(val.body));
    });
  }

}
