import 'package:flutter/material.dart';
import 'package:pemob_p1/models/produk.dart';

import '../drawer.dart';
import '../models/kategori.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({Key? key}) : super(key: key);

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  List<Kategori> kategories = [
    Kategori(id: 1, nama: 'Buah-produk'),
    Kategori(id: 2, nama: 'Sayur-sayuran'),
    Kategori(id: 3, nama: 'Kacang-kacangan'),
    Kategori(id: 4, nama: 'Umbi-umbian'),
  ];
  List<Produk> produk = [
    Produk(
        id: 1,
        nama: 'Paprika',
        harga: 11850,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2021/10/21/a4ecd7bb-7a50-451b-a9cb-fd07852ad06e.jpg"),
    Produk(
        id: 2,
        nama: 'Timun',
        harga: 2800,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/product-1/2020/9/3/76700307/76700307_6094c198-5b81-4cde-a494-9e6ae96175b5_1000_1000"),
    Produk(
        id: 3,
        nama: 'Labu',
        harga: 9262,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2020/12/31/4ac6b793-8093-41c2-8021-cc7fd8eb8013.jpg"),
    Produk(
        id: 4,
        nama: 'Wortel',
        harga: 5635,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2020/12/24/f22f0d36-a66f-4e7e-a7ff-0934ec0b1362.jpg"),
    Produk(
        id: 5,
        nama: 'Apel',
        harga: 28800,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2021/3/29/7fad8179-edc4-4208-a326-88db6bab122e.jpg"),
    Produk(
        id: 6,
        nama: 'Strawberry',
        harga: 8750,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2021/12/5/4b83c5b6-6c4d-44bf-b5ca-7d431407fa35.jpg"),
    Produk(
        id: 7,
        nama: 'Pisang',
        harga: 16650,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2021/12/5/5cdc6a3f-ff99-4af9-9ff5-7500ffe62577.jpg"),
    Produk(
        id: 8,
        nama: 'Jeruk',
        harga: 24500,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/3/6/9bab152d-cadd-447b-90ed-50c75d17dd08.jpg"),
    Produk(
        id: 9,
        nama: 'Almond',
        harga: 35000,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/product-1/2020/5/8/10852164/10852164_cc828794-0dfc-444b-a2fc-2a7b6bd4ae62_1042_1042"),
    Produk(
        id: 10,
        nama: 'Walnut',
        harga: 99000,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/product-1/2020/5/8/10852164/10852164_c83f8c99-a696-45d7-9642-33284bdfa5b2_1042_1042"),
    Produk(
        id: 11,
        nama: 'Mede',
        harga: 47500,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2020/11/3/9d0ea0ef-fa08-4f0b-8d81-e7b51b3e3ed7.jpg"),
    Produk(
        id: 12,
        nama: 'Merah',
        harga: 23000,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2021/5/27/9e5628d7-bb6b-47b5-aef8-cf07da5d5389.jpg"),
    Produk(
        id: 13,
        nama: 'Blue liliy',
        harga: 35000,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2021/10/20/f001ab56-f354-4aa8-8b71-44c16bf3e23a.jpg"),
    Produk(
        id: 14,
        nama: 'Lili paris',
        harga: 2500,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/product-1/2018/1/23/254047232/254047232_bdc8af8a-eaf3-4d34-abab-452e260ef9b8_1024_1365.jpg"),
    Produk(
        id: 15,
        nama: 'Menjalar',
        harga: 6500,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2020/8/6/fd917a06-1ee8-4fb1-9081-ad24b9f04abf.jpg"),
    Produk(
        id: 16,
        nama: 'Rain lily',
        harga: 120000,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2021/10/23/a84facd4-74d7-43e8-b6f0-8c1c150ae1ef.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Semua Produk',
        key: widget.key,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.sort,
          key: widget.key,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 4,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) {
                  return Card(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.network(produk[i].foto ?? ''),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    produk[i].nama ?? '',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    key: widget.key,
                                    height: 10,
                                  ),
                                  Text('Rp ' + produk[i].harga.toString())
                                ]),
                          )
                        ]),
                  );
                },
                itemCount: produk.length,
              ),
            ]),
      ),
      drawer: DrawerWidget(key: widget.key),
    );
  }
}
