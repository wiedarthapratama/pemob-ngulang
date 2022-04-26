import 'package:flutter/material.dart';
import 'package:pemob_p1/models/produk.dart';

import '../drawer.dart';

class KeranjangPage extends StatefulWidget {
  const KeranjangPage({Key? key}) : super(key: key);

  @override
  State<KeranjangPage> createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  List<Produk> produk = [
    Produk(
        id: 1,
        nama: 'Paprika',
        harga: 11850,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2021/10/21/a4ecd7bb-7a50-451b-a9cb-fd07852ad06e.jpg"),
    Produk(
        id: 2,
        nama: 'Apel',
        harga: 28800,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2021/3/29/7fad8179-edc4-4208-a326-88db6bab122e.jpg"),
    Produk(
        id: 3,
        nama: 'Almond',
        harga: 35000,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/product-1/2020/5/8/10852164/10852164_cc828794-0dfc-444b-a2fc-2a7b6bd4ae62_1042_1042"),
    Produk(
        id: 4,
        nama: 'Blue liliy',
        harga: 35000,
        foto:
            "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2021/10/20/f001ab56-f354-4aa8-8b71-44c16bf3e23a.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Keranjang Belanja',
        key: widget.key,
      )),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {},
                  child: Text("Checkout",
                      key: widget.key,
                      style: const TextStyle(
                        color: Colors.white,
                      ))),
            ]),
      ),
      drawer: DrawerWidget(key: widget.key),
    );
  }
}
