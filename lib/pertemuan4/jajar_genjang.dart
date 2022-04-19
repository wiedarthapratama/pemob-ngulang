import 'package:flutter/material.dart';

class JajarGenjang extends StatefulWidget {
  const JajarGenjang({Key? key}) : super(key: key);

  @override
  _JajarGenjangState createState() => _JajarGenjangState();
}

class _JajarGenjangState extends State<JajarGenjang> {
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
                'Alas',
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
                'Tinggi',
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
                  double.parse(diagonal2Ctrl.text);
              keliling = double.parse(diagonalCtrl.text) +
                  double.parse(diagonal2Ctrl.text) +
                  double.parse(diagonalCtrl.text) +
                  double.parse(diagonal2Ctrl.text);
            });
          },
          child: Text('Hitung'),
        ),
        Text('Luas Jajar Genjang : ${luas?.toStringAsFixed(2)}'),
        Text('Keliling Jajar Genjang : ${keliling?.toStringAsFixed(2)}'),
      ],
    );
  }
}
