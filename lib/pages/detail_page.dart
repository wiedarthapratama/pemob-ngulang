import 'package:flutter/material.dart';
import 'package:pemob_p1/models/produk.dart';
import 'package:pemob_p1/pages/keranjang_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.produk}) : super(key: key);
  final Produk produk;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.produk.nama ?? '-')),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.produk.foto ?? ''),
                  fit: BoxFit.cover, // -> 02
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
              child: Text(
                'Deskripsi',
                key: widget.key,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                key: widget.key,
              ),
            ),
            SizedBox(
              height: 10,
              key: widget.key,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {},
                    child: Text("Beli Sekarang",
                        key: widget.key,
                        style: const TextStyle(
                          color: Colors.white,
                        ))),
                TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => KeranjangPage(
                                key: widget.key,
                              )));
                    },
                    child: Text("Tambah Ke Keranjang",
                        key: widget.key,
                        style: const TextStyle(
                          color: Colors.white,
                        ))),
              ],
            )
          ]),
    );
  }
}
