import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/User.dart';


class Services{
  String baseURL = "https://reqres.in/api/users/2";

  Future<User> getUser() async {
    var url = '$baseURL';
    var header = {'Content-Type': 'application/json'};

    var response = await http.get(Uri.parse(url),headers: header);

    print(response.body);

      var data = jsonDecode(response.body)['data'];
      User user = User.fromJson(data);
      print(response.statusCode);
    return user;
  }
}