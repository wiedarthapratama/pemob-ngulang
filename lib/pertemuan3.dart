import 'package:flutter/material.dart';
import 'package:pemob_p1/drawer.dart';

class Pertemuan3 extends StatelessWidget {
  const Pertemuan3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pertemuan 3',
          key: key,
        ),
      ),
      drawer: DrawerWidget(key: key),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
          ),
          Text(
            'Curriculum Vitae',
            key: key,
            style: TextStyle(fontWeight: FontWeight.bold),
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
            'Data Diri',
            key: key,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
            key: key,
          ),
          Text(
            'Nama: Wied Artha Pratama',
            key: key,
          ),
          Text(
            'Jenis Kelamin: Laki-laki',
            key: key,
          ),
          Text(
            'Tempat Lahir: Banyumas',
            key: key,
          ),
          Text(
            'Tanggal Lahir: 07 Februari 1999',
            key: key,
          ),
          SizedBox(
            height: 10,
            key: key,
          ),
          Text(
            'Data Riwayat Pekerjaan',
            key: key,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
            key: key,
          ),
          Text(
            'Perusahaan: PT. My Fashion Grosir',
            key: key,
          ),
          Text(
            'Jabatan: Programmer',
            key: key,
          ),
          Text(
            'Periode: November 2021 - Sekarang',
            key: key,
          ),
          SizedBox(
            height: 5,
            key: key,
          ),
          Text(
            'Perusahaan: PT. Nawastra Teknologi Nimpuna',
            key: key,
          ),
          Text(
            'Jabatan: Programmer',
            key: key,
          ),
          Text(
            'Periode: Agustus 2019 - November 2021',
            key: key,
          ),
          SizedBox(
            height: 5,
            key: key,
          ),
          Text(
            'Perusahaan: PT. Wallezz Finansial Teknologi',
            key: key,
          ),
          Text(
            'Jabatan: Programmer',
            key: key,
          ),
          Text(
            'Periode: Februari 2018 - Agustus 2019',
            key: key,
          ),
          SizedBox(
            height: 10,
            key: key,
          ),
          Text(
            'Data Pendidikan',
            key: key,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
            key: key,
          ),
          Text(
            'Universitas - Esa Unggul - (2018-sekarang)',
            key: key,
          ),
          Text(
            'SMK - SMKS Yuppentek 2 - (2014-2017)',
            key: key,
          ),
          Text(
            'SMP - SMPN 1 Cikupa - (2011-2014)',
            key: key,
          ),
          Text(
            'SD - SDN Dukuh 3 - (2005-2011)',
            key: key,
          ),
        ],
      ),
    );
  }
}
