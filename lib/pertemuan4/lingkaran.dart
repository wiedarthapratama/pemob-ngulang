import 'package:flutter/material.dart';

class Lingkaran extends StatefulWidget {
  const Lingkaran({Key? key}) : super(key: key);

  @override
  _LingkaranState createState() => _LingkaranState();
}

class _LingkaranState extends State<Lingkaran> {
  TextEditingController jariCtrl = TextEditingController();

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
                'Jari-jari',
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
          controller: jariCtrl,
        ),
        ElevatedButton(
          style: raisedButtonStyle,
          onPressed: () {
            setState(() {
              luas = 3.14 *
                  double.parse(jariCtrl.text) *
                  double.parse(jariCtrl.text);
              keliling = 2 * 3.14 * double.parse(jariCtrl.text);
            });
          },
          child: Text('Hitung'),
        ),
        Text('Luas Lingkaran: ${luas?.toStringAsFixed(2)}'),
        Text('Keliling Lingkaran: ${keliling?.toStringAsFixed(2)}'),
      ],
    );
  }
}
