import 'package:flutter/material.dart';

class PengaturanPage extends StatefulWidget {
  const PengaturanPage({Key? key}) : super(key: key);

  @override
  _PengaturanPageState createState() => _PengaturanPageState();
}

class _PengaturanPageState extends State<PengaturanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Pengaturan',
        key: widget.key,
      )),
      body: Column(children: [
        Card(
          child: ListTile(
            title: Text(
              'Akun',
              key: widget.key,
            ),
            subtitle: Text(
              'Pengaturan Akun',
              key: widget.key,
            ),
            trailing: Icon(
              Icons.person,
              key: widget.key,
            ),
          ),
        ),
        Card(
          child: ListTile(
            title: Text(
              'Terakhir Dilihat',
              key: widget.key,
            ),
            subtitle: Text(
              'Terakhir Dilihat',
              key: widget.key,
            ),
            trailing: Icon(
              Icons.history,
              key: widget.key,
            ),
          ),
        ),
        Card(
          child: ListTile(
            title: Text(
              'Bahasa',
              key: widget.key,
            ),
            subtitle: Text(
              'Pengaturan Bahasa',
              key: widget.key,
            ),
            trailing: Icon(
              Icons.language,
              key: widget.key,
            ),
          ),
        ),
        Card(
          child: ListTile(
            title: Text(
              'Bantuan',
              key: widget.key,
            ),
            subtitle: Text(
              'Pengaturan Bantuan',
              key: widget.key,
            ),
            trailing: Icon(
              Icons.info,
              key: widget.key,
            ),
          ),
        )
      ]),
    );
  }
}
