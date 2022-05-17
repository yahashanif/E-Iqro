import 'dart:convert';

import 'package:eiqro/models/kegiatan.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../models/User.dart';

class Services {
   late List<Kegiatan> kegiatan;
   late Kegiatan kdata;
   late  List splitted;
  String baseURL = "https://eiqro.elites.id/api/";
  

  Stream<List<Kegiatan>> getKegiatans() {
    return Stream.periodic(Duration(seconds: 1))
        .asyncMap((event) => getKegiatan());
  }
  Stream<List<dynamic>> getKegiatanDatas(String tgl) {
    return Stream.periodic(Duration(seconds: 1))
        .asyncMap((event) => getKegiatanData(tgl));
  }
  Stream<Kegiatan> getKeterangans(String tgl) {
    return Stream.periodic(Duration(seconds: 1))
        .asyncMap((event) => getKeterangan(tgl));
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

  Future<List<Kegiatan>> getKegiatan() async {
    var url = baseURL + "v1/motorik";
    var box = GetStorage();
    var token = box.read("token");
    var header = {'Content-Type': 'application/json','Authorization': 'Bearer $token',};

    var response = await http.get(Uri.parse(url), headers: header);

    print(response.body);

    List data = jsonDecode(response.body)['data']['data'];
   kegiatan = data.map((i) => Kegiatan.fromJson(i)).toList();
    print(response.statusCode);
    return kegiatan;
  }

   Future<List<dynamic>> getKegiatanData(String tgl) async {
    var url = baseURL + "v1/motorik";
    var box = GetStorage();
    var token = box.read("token");
    var header = {'Content-Type': 'application/json','Authorization': 'Bearer $token',};

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
    var header = {'Content-Type': 'application/json','Authorization': 'Bearer $token',};

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
