class Kegiatan {
  int? id;
  String? idSiswa;
  String? kegiatan;
  String? keterangan;
  String? tanggal;
  String? attachment;
  String? createdAt;
  String? updatedAt;

  Kegiatan(
      {this.id,
      this.idSiswa,
      this.kegiatan,
      this.keterangan,
      this.tanggal,
      this.attachment,
      this.createdAt,
      this.updatedAt});

  Kegiatan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idSiswa = json['id_siswa'];
    kegiatan = json['kegiatan'];
    keterangan = json['keterangan'];
    tanggal = json['tanggal'];
    attachment = json['attachment'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['id_siswa'] = idSiswa;
    data['kegiatan'] = kegiatan;
    data['keterangan'] = keterangan;
    data['tanggal'] = tanggal;
    data['attachment'] = attachment;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
