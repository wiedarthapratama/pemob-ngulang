import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pemob P1',key: key,),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10,key: key,),
            Text('Selamat Datang di Universitas Esa Unggul',key: key,),
            Text('Program Studi Teknik Informatika - Fakultas Ilmu Komputer',key: key,),
            SizedBox(height: 10,key: key,),
            Image.network("https://siakad.esaunggul.ac.id/siakad/siakad/index.php?page=download&type=fotomhs&id=eHFJRHV6YzZmaUsydG5ybiUyRmtZb3cwQ3BITkNsdjl4anFFNyUyQnJlN3ZQdlYyTW1GcEh4dnBrdnBLeHdCM29jb0hzRlJ2SWRSSXg1eWdKJTJCTGhLNjJjMWclM0QlM0Q="),
            SizedBox(height: 10,key: key,),
            Text('Nama Saya: Wied Artha Pratama',key: key,),
            Text('NIM Saya: 20180801316',key: key,),
            Text('Hobby Saya: Bermain game',key: key,),
            Text('Pekerjaan Saya: Programmer',key: key,),
            Text('Status Saya: Belum Menikah',key: key,),
          ],
        ),
      ),
    );
  }
}