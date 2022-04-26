class Produk {
  int? id;
  String? nama;
  int? harga;
  String? foto;

  Produk({this.id, this.nama, this.harga, this.foto});

  Produk.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    harga = json['harga'];
    foto = json['foto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama'] = this.nama;
    data['harga'] = this.harga;
    data['foto'] = this.foto;
    return data;
  }
}
