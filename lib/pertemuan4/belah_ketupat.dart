import 'package:flutter/material.dart';

class BelahKetupat extends StatefulWidget {
  final String judul;
  const BelahKetupat({Key? key, required this.judul}) : super(key: key);

  @override
  _BelahKetupatState createState() => _BelahKetupatState();
}

class _BelahKetupatState extends State<BelahKetupat> {
  TextEditingController diagonalCtrl = TextEditingController();
  TextEditingController diagonal2Ctrl = TextEditingController();

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.grey[300],
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  double? luas;
  double? keliling;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
              label: Text(
                widget.judul == 'segitiga' ? 'Alas' : 'Diagonal 1',
                key: widget.key,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.blue),
                borderRadius: BorderRadius.circular(5),
              )),
          controller: diagonalCtrl,
        ),
        SizedBox(
          height: 10,
          key: widget.key,
        ),
        TextFormField(
          decoration: InputDecoration(
              label: Text(
                widget.judul == 'segitiga' ? 'Tinggi' : 'Diagonal 2',
                key: widget.key,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.blue),
                borderRadius: BorderRadius.circular(5),
              )),
          controller: diagonal2Ctrl,
        ),
        ElevatedButton(
          style: raisedButtonStyle,
          onPressed: () {
            setState(() {
              luas = double.parse(diagonalCtrl.text) *
                  double.parse(diagonal2Ctrl.text) /
                  2;
              keliling = double.parse(diagonalCtrl.text) +
                  double.parse(diagonal2Ctrl.text) +
                  double.parse(diagonalCtrl.text) +
                  double.parse(diagonal2Ctrl.text);
            });
          },
          child: Text('Hitung'),
        ),
        Text('Luas ${widget.judul}: ${luas?.toStringAsFixed(2)}'),
        Text('Keliling ${widget.judul}: ${keliling?.toStringAsFixed(2)}'),
      ],
    );
  }
}
