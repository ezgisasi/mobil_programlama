import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Renk Değiştirici',
      home: Ekran(),
    );
  }
}

class Ekran extends StatefulWidget {
  @override
  _EkranRengi createState() => _EkranRengi();
}

class _EkranRengi extends State<Ekran> {
  Color mevcutArkaPlanRengi = Colors.yellow;

  void arkaPlanRenginiDegistir() {
    setState(() {
      mevcutArkaPlanRengi = (mevcutArkaPlanRengi == Colors.yellow)
          ? Colors.blue
          : Colors.yellow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mevcutArkaPlanRengi,
      body: Center(
        child: ElevatedButton(
          onPressed: arkaPlanRenginiDegistir,
          child: Text('Rengi Değiştir'),
        ),
      ),
    );
  }
}
