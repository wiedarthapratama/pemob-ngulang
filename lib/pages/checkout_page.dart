import 'package:flutter/material.dart';
import 'package:pemob_p1/models/produk.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
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
        'Ringkasan Belanja',
        key: widget.key,
      )),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                child: Text(
                  'Produk',
                  key: widget.key,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
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
              Card(
                child: ListTile(
                  title: Text(
                    'Pilih Pengiriman',
                    key: widget.key,
                  ),
                  subtitle: Text(
                    'Pilih alamat pengiriman anda',
                    key: widget.key,
                  ),
                  trailing: Icon(
                    Icons.local_shipping,
                    key: widget.key,
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Pilih Pembayaran',
                    key: widget.key,
                  ),
                  subtitle: Text(
                    'Pilih metode pembayaran anda',
                    key: widget.key,
                  ),
                  trailing: Icon(
                    Icons.money,
                    key: widget.key,
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Kode Voucher',
                    key: widget.key,
                  ),
                  subtitle: Text(
                    'Pilih kode voucher anda',
                    key: widget.key,
                  ),
                  trailing: Icon(
                    Icons.cut,
                    key: widget.key,
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ringkasan Belanja',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                        key: widget.key,
                      ),
                      SizedBox(height: 10, key: widget.key),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Belanja', key: widget.key),
                          Text('Rp 9.999.999',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                              key: widget.key),
                        ],
                      ),
                      SizedBox(height: 5, key: widget.key),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Ongkos Kirim', key: widget.key),
                          Text('Rp 9.999.999',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                              key: widget.key),
                        ],
                      ),
                      SizedBox(height: 5, key: widget.key),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Diskon', key: widget.key),
                          Text('Rp 9.999.999',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                              key: widget.key),
                        ],
                      ),
                      SizedBox(height: 5, key: widget.key),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subtotal', key: widget.key),
                          Text('Rp 9.999.999',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                              key: widget.key),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {},
                    child: Text("Buat Pesanan",
                        key: widget.key,
                        style: const TextStyle(
                          color: Colors.white,
                        ))),
              ),
            ]),
      ),
    );
  }
}
