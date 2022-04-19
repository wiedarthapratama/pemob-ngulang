import 'package:flutter/material.dart';

class Trapesium extends StatefulWidget {
  const Trapesium({Key? key}) : super(key: key);

  @override
  _TrapesiumState createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  TextEditingController diagonalCtrl = TextEditingController();
  TextEditingController diagonal2Ctrl = TextEditingController();
  TextEditingController tinggiCtrl = TextEditingController();

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
                'Sisi 1',
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
                'Sisi 2',
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
          controller: tinggiCtrl,
        ),
        ElevatedButton(
          style: raisedButtonStyle,
          onPressed: () {
            setState(() {
              luas = 0.5 *
                  (double.parse(diagonalCtrl.text) +
                      double.parse(diagonal2Ctrl.text)) *
                  double.parse(tinggiCtrl.text);
              keliling = double.parse(diagonalCtrl.text) +
                  double.parse(diagonal2Ctrl.text) +
                  double.parse(diagonalCtrl.text) +
                  double.parse(diagonal2Ctrl.text);
            });
          },
          child: Text('Hitung'),
        ),
        Text('Luas Trapesium : ${luas?.toStringAsFixed(2)}'),
        Text('Keliling Trapesium : ${keliling?.toStringAsFixed(2)}'),
      ],
    );
  }
}
