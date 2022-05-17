class User {
  String? namaLengkap;
  String? kelas;
  String? token;

  User({this.namaLengkap, this.kelas, this.token});

  User.fromJson(Map<String, dynamic> json) {
    namaLengkap = json['nama_lengkap'];
    kelas = json['kelas'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['nama_lengkap'] = namaLengkap;
    data['kelas'] = kelas;
    data['token'] = token;
    return data;
  }
}
