import 'dart:convert';

class Tugas {
  String judul;
  String deskripsi;

  Tugas(this.judul, this.deskripsi);

  Map<String, dynamic> toMap() {
    return {
      'judul': judul,
      'deskripsi': deskripsi,
    };
  }

  factory Tugas.fromMap(Map<String, dynamic> map) {
    return Tugas(
      map['judul'],
      map['deskripsi'],
    );
  }

  static Tugas mapFromString(String tugasString) {
    Map<String, dynamic> tugasMap = Map<String, dynamic>.from(json.decode(tugasString));
    return Tugas.fromMap(tugasMap);
  }

  String toJson() {
    return json.encode(toMap());
  }

  static Tugas fromJson(String jsonString) {
    return Tugas.fromMap(json.decode(jsonString));
  }

  @override
  String toString() {
    return toJson();
  }
}
