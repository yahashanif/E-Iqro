class User {
  int? id;
  String? nama_lengkap;
  String? nama_panggilan;
  String? tempat_lahir;
  String? tanggal_lahir;
  String? jenis_kelamin;
  String? alamat;
  String? nama_ayah;
  String? telp_ayah;
  String? nama_ibu;
  String? telp_ibu;
  int? active;

  User({this.id,this.nama_lengkap,this.nama_panggilan,this.tempat_lahir,this.tanggal_lahir,this.jenis_kelamin,this.alamat,this.nama_ayah,this.telp_ayah,this.nama_ibu,this.telp_ibu,this.active});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama_lengkap = json['nama_lengkap'];
    nama_panggilan = json['nama_panggilan'];
    tempat_lahir = json['tempat_lahir'];
    tanggal_lahir = json['tanggal_lahir'];
    jenis_kelamin = json['jenis_kelamin'];
    alamat = json['alamat'];
    nama_ayah = json['nama_ayah'];
    telp_ayah = json['telp_ayah'];
    nama_ibu = json['nama_ibu'];
    telp_ibu = json['telp_ibu'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama_lengkap': nama_lengkap,
      'nama_panggilan': nama_panggilan,
      'tempat_lahir': tempat_lahir,
      'tanggal_lahir': tanggal_lahir,
      'jenis_kelamin': jenis_kelamin,
      'alamat': alamat,
      'nama_ayah': nama_ayah,
      'telp_ayah': telp_ayah,
      'nama_ibu': nama_ibu,
      'telp_ibu': telp_ibu,
      'active': active,
      
    };
  }
}


