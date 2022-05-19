import 'dart:convert';

import 'package:eiqro/models/kegiatan.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

import '../models/User.dart';

class Services {
  late List<Kegiatan> kegiatan;
  late Kegiatan kdata;
  late List splitted;
  late List<String> SpiderHalusName;
  List SpiderHalusvalueLast = [];
  List SpiderHalusvalueBefore = [];
  List<int> SpiderHalusvalueLastfix = [];
  List<int> SpiderHalusvalueBeforefix = [];

  late List<String> SpiderKasarName;
  List SpiderKasarvalueLast = [];
  List SpiderKasarvalueBefore = [];
  List<int> SpiderKasarvalueLastfix = [];
  List<int> SpiderKasarvalueBeforefix = [];
  var box = GetStorage();

  String baseURL = "https://eiqro.elites.id/api/";

  Stream<List<Kegiatan>> getKegiatans() {
    return Stream.periodic(Duration(seconds: 3))
        .asyncMap((event) => getKegiatan());
  }

  Stream<List<dynamic>> getKegiatanDatas(String tgl) {
    return Stream.periodic(Duration(seconds: 3))
        .asyncMap((event) => getKegiatanData(tgl));
  }

  Stream<Kegiatan> getKeterangans(String tgl) {
    return Stream.periodic(Duration(seconds: 3))
        .asyncMap((event) => getKeterangan(tgl));
  }

   getSpiderHalus() async{
      var url = baseURL + "v1/spider_chart";
    var token = box.read("token");
    var header = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    var response = await http.get(Uri.parse(url),headers: header);

    var data = jsonDecode(response.body)['data']['spider_latest']['motorik_halus'] as Map<String,dynamic>;
    var data2 = jsonDecode(response.body)['data']['spider_before']['motorik_halus'] as Map<String,dynamic>;
     SpiderHalusvalueLast = [];
     SpiderHalusvalueLastfix = [];
    print(data.length);
   SpiderHalusName = data.keys.toList();
    data.values.map((e) => SpiderHalusvalueLast.add(e['value'])).toList();
   print(SpiderHalusName);
     SpiderHalusvalueBefore = [];
     SpiderHalusvalueBeforefix = [];
     SpiderHalusvalueLast.map((e) => SpiderHalusvalueLastfix.add(int.parse(e.toString()))).toList();
    data2.values.map((e) => SpiderHalusvalueBefore.add(e['value'])).toList();
     SpiderHalusvalueBefore.map((e) => SpiderHalusvalueBeforefix.add(int.parse(e.toString()))).toList();
    
   print(SpiderHalusvalueLastfix);
   print(SpiderHalusvalueBeforefix);
  //  
   var data3 = jsonDecode(response.body)['data']['spider_latest']['motorik_kasar'] as Map<String,dynamic>;
    var data4 = jsonDecode(response.body)['data']['spider_before']['motorik_kasar'] as Map<String,dynamic>;
     SpiderKasarvalueLast = [];
     SpiderKasarvalueLastfix = [];
    print(data3.length);
   SpiderKasarName = data3.keys.toList();
    data3.values.map((e) => SpiderKasarvalueLast.add(e['value'])).toList();
   print(SpiderKasarName);
     SpiderKasarvalueBefore = [];
     SpiderKasarvalueBeforefix = [];
     SpiderKasarvalueLast.map((e) => SpiderKasarvalueLastfix.add(int.parse(e.toString()))).toList();
    data4.values.map((e) => SpiderKasarvalueBefore.add(e['value'])).toList();
     SpiderKasarvalueBefore.map((e) => SpiderKasarvalueBeforefix.add(int.parse(e.toString()))).toList();
    
   print(SpiderKasarvalueLastfix);
   print(SpiderKasarvalueBeforefix);

  }
  

  Future<User> getUser() async {
    var url = baseURL + "v1/siswa";
    var header = {'Content-Type': 'application/json'};

    var response = await http.get(Uri.parse(url), headers: header);

    print(response.body);

    List data = jsonDecode(response.body)['data']['data'];
    List<User> user = data.map((i) => User.fromJson(i)).toList();
    print(response.statusCode);
    return user.first;
  }

  Future<User> login(String notelp, String password) async {
    var url = baseURL + "login";

    var response = await http.post(Uri.parse(url), body: {
      "telp_ibu": notelp,
      "password": password,
    });
    var data = jsonDecode(response.body)['data'];
    User user = User.fromJson(data);

    print(user);
    return user;
  }

   getMeet() async {
    var url = baseURL + "v1/meet";
    var token = box.read("token");
    var header = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    var response = await http.get(Uri.parse(url), headers: header);
    var data = jsonDecode(response.body)['data']['link'];
    print(data);
    await launch(data);
  }

  Future<List<Kegiatan>> getKegiatan() async {
    var url = baseURL + "v1/motorik";
    var token = box.read("token");
    var header = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    var response = await http.get(Uri.parse(url), headers: header);

    print(response.body);

    List data = jsonDecode(response.body)['data']['data'];
    kegiatan = data.map((i) => Kegiatan.fromJson(i)).toList();
    // print(response.statusCode);
    return kegiatan;
  }

  Future<List<dynamic>> getKegiatanData(String tgl) async {
    var url = baseURL + "v1/motorik";
    var box = GetStorage();
    var token = box.read("token");
    var header = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    var response = await http.get(Uri.parse(url), headers: header);

    print(response.body);

    List data = jsonDecode(response.body)['data']['data'];
    kegiatan = data.map((i) => Kegiatan.fromJson(i)).toList();
    print(response.statusCode);
    kegiatan = kegiatan.where((element) => element.tanggal == tgl).toList();
    kdata = kegiatan.first;
    var kk = json.decode(kdata.kegiatan.toString());
    // print(kk['data_kegiatan']);
    print(kk['data_kegiatan'].toString().split(":").length);
    splitted = kk['data_kegiatan'].toString().split(':');
    return splitted;
  }

  Future<Kegiatan> getKeterangan(String tgl) async {
    var url = baseURL + "v1/motorik";
    var box = GetStorage();
    var token = box.read("token");
    var header = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    var response = await http.get(Uri.parse(url), headers: header);

    print(response.body);

    List data = jsonDecode(response.body)['data']['data'];
    kegiatan = data.map((i) => Kegiatan.fromJson(i)).toList();
    print(response.statusCode);
    kegiatan = kegiatan.where((element) => element.tanggal == tgl).toList();
    kdata = kegiatan.first;

    return kdata;
  }
}
