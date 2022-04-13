import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/User.dart';


class Services{
  String baseURL = "http://eiqro.elites.id/api/v1/";

  Future<User> getUser() async {
    var url = baseURL+"siswa";
    var header = {'Content-Type': 'application/json'};

    var response = await http.get(Uri.parse(url),headers: header);

    print(response.body);

      List data = jsonDecode(response.body)['data']['data'] ;
      List<User> user = data.map((i) => User.fromJson(i)).toList();
      print(user.first.nama_lengkap);
      print(response.statusCode);
    return user.first;
  }
}