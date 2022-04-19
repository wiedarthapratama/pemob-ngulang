import 'package:flutter/material.dart';
import 'package:pemob_p1/drawer.dart';

class Pertemuan2 extends StatelessWidget {
  const Pertemuan2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pertemuan 2',
          key: key,
        ),
      ),
      drawer: DrawerWidget(key: key),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
              key: key,
            ),
            Text(
              'Selamat Datang di Universitas Esa Unggul',
              key: key,
            ),
            Text(
              'Program Studi Teknik Informatika - Fakultas Ilmu Komputer',
              key: key,
            ),
            SizedBox(
              height: 10,
              key: key,
            ),
            Image.network(
                "https://siakad.esaunggul.ac.id/siakad/siakad/index.php?page=download&type=fotomhs&id=eHFJRHV6YzZmaUsydG5ybiUyRmtZb3cwQ3BITkNsdjl4anFFNyUyQnJlN3ZQdlYyTW1GcEh4dnBrdnBLeHdCM29jb0hzRlJ2SWRSSXg1eWdKJTJCTGhLNjJjMWclM0QlM0Q="),
            SizedBox(
              height: 10,
              key: key,
            ),
            Text(
              'Nama Saya: Wied Artha Pratama',
              key: key,
            ),
            Text(
              'NIM Saya: 20180801316',
              key: key,
            ),
            Text(
              'Hobby Saya: Bermain game',
              key: key,
            ),
            Text(
              'Pekerjaan Saya: Programmer',
              key: key,
            ),
            Text(
              'Status Saya: Belum Menikah',
              key: key,
            ),
          ],
        ),
      ),
    );
  }
}
