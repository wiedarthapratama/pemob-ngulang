import 'package:flutter/material.dart';
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
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://siakad.esaunggul.ac.id/siakad/siakad/index.php?page=download&type=fotomhs&id=eHFJRHV6YzZmaUsydG5ybiUyRmtZb3cwQ3BITkNsdjl4anFFNyUyQnJlN3ZQdlYyTW1GcEh4dnBrdnBLeHdCM29jb0hzRlJ2SWRSSXg1eWdKJTJCTGhLNjJjMWclM0QlM0Q="),
                ),
                Text('Wied Artha Pratama'),
                Text('20180801316'),
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
            title: const Text('Pertemuan 2'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Pertemuan2(
                        key: key,
                      )));
            },
          ),
          ListTile(
            title: const Text('Pertemuan 3'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Pertemuan3(
                        key: key,
                      )));
            },
          ),
          ListTile(
            title: const Text('Pertemuan 4'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Pertemuan4(
                        key: key,
                      )));
            },
          ),
        ],
      ),
    );
  }
}
