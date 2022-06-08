class User {
  String? namaLengkap;
  String? kelas;
  String? token;
  String? alamat;
  String? jenis_kelamin;

  User({this.namaLengkap, this.kelas, this.token,this.alamat,this.jenis_kelamin});

  User.fromJson(Map<String, dynamic> json) {
    namaLengkap = json['nama_lengkap'];
    kelas = json['kelas'];
    token = json['token'];
    alamat = json['alamat'];
    jenis_kelamin = json['jenis_kelamin'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['nama_lengkap'] = namaLengkap;
    data['kelas'] = kelas;
    data['token'] = token;
    data['alamat'] = alamat;
    data['jenis_kelamin'] = jenis_kelamin;
    return data;
  }
}
