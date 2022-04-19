import 'package:flutter/material.dart';
import 'package:pemob_p1/drawer.dart';
import 'package:pemob_p1/pertemuan4/belah_ketupat.dart';
import 'package:pemob_p1/pertemuan4/jajar_genjang.dart';
import 'package:pemob_p1/pertemuan4/lingkaran.dart';
import 'package:pemob_p1/pertemuan4/trapesium.dart';

class Pertemuan4 extends StatefulWidget {
  const Pertemuan4({Key? key}) : super(key: key);

  @override
  _Pertemuan4State createState() => _Pertemuan4State();
}

class _Pertemuan4State extends State<Pertemuan4> {
  String? _dropDownValue;
  TextEditingController jariCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pertemuan 4'),
      ),
      drawer: DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          DropdownButton(
            hint: _dropDownValue == null
                ? Text('Pilih Bangun Datar')
                : Text(
                    _dropDownValue ?? '-',
                    style: TextStyle(color: Colors.blue),
                  ),
            isExpanded: true,
            iconSize: 30.0,
            style: TextStyle(color: Colors.blue),
            items: [
              'lingkaran',
              'belah ketupat',
              'layang-layang',
              'trapesium',
              'jajar genjang',
              'segitiga'
            ].map(
              (val) {
                return DropdownMenuItem<String>(
                  value: val,
                  child: Text(val),
                );
              },
            ).toList(),
            onChanged: (val) {
              setState(
                () {
                  _dropDownValue = val as String;
                },
              );
            },
          ),
          _dropDownValue == "lingkaran"
              ? Lingkaran(
                  key: widget.key,
                )
              : _dropDownValue == "belah ketupat" ||
                      _dropDownValue == "layang-layang" ||
                      _dropDownValue == "segitiga"
                  ? BelahKetupat(
                      key: widget.key,
                      judul: _dropDownValue ?? '-',
                    )
                  : _dropDownValue == "jajar genjang"
                      ? JajarGenjang(
                          key: widget.key,
                        )
                      : _dropDownValue == "trapesium"
                          ? Trapesium(
                              key: widget.key,
                            )
                          : Container()
        ]),
      ),
    );
  }
}
