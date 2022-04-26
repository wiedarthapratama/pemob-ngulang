import 'package:flutter/material.dart';
import 'package:pemob_p1/pages/daftar_page.dart';
import 'package:pemob_p1/pages/keranjang_page.dart';
import 'package:pemob_p1/pages/pengaturan_page.dart';
import 'package:pemob_p1/pages/produk_page.dart';
import 'package:pemob_p1/pertemuan2.dart';
import 'package:pemob_p1/pertemuan3.dart';
import 'package:pemob_p1/pertemuan4.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: key,
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  key: key,
                  radius: 50,
                  backgroundImage: const NetworkImage(
                      "https://siakad.esaunggul.ac.id/siakad/siakad/index.php?page=download&type=fotomhs&id=eHFJRHV6YzZmaUsydG5ybiUyRmtZb3cwQ3BITkNsdjl4anFFNyUyQnJlN3ZQdlYyTW1GcEh4dnBrdnBLeHdCM29jb0hzRlJ2SWRSSXg1eWdKJTJCTGhLNjJjMWclM0QlM0Q="),
                ),
                Text(
                  'Wied Artha Pratama',
                  key: key,
                ),
                Text(
                  '20180801316',
                  key: key,
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Produk'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProdukPage(
                        key: key,
                      )));
            },
          ),
          ListTile(
            title: const Text('Keranjang Belanja'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => KeranjangPage(
                        key: key,
                      )));
            },
          ),
          ListTile(
            title: const Text('Daftar Keinginan'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DaftarPage(
                        key: key,
                      )));
            },
          ),
          ListTile(
            title: const Text('Pengaturan'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PengaturanPage(
                        key: key,
                      )));
            },
          ),
          ListTile(
            title: const Text('Keluar'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
