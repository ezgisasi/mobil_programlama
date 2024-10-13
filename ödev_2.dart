import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Renk Değiştirici',
      home: RenkDegistiriciEkran(),
    );
  }
}

class RenkDegistiriciEkran extends StatefulWidget {
  @override
  _RenkDegistiriciEkranDurumu createState() => _RenkDegistiriciEkranDurumu();
}

class _RenkDegistiriciEkranDurumu extends State<RenkDegistiriciEkran> {
  Color arkaPlanRengi = Colors.yellow;

  void rengiDegistir() {
    setState(() {
      arkaPlanRengi = (arkaPlanRengi == Colors.yellow)
          ? Colors.blue
          : Colors.yellow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: arkaPlanRengi,
      body: Center(
        child: ElevatedButton(
          onPressed: rengiDegistir,
          child: Text('Rengi Değiştir'),
        ),
      ),
    );
  }
}

