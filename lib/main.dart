import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'BUGÜN NE YESEM?',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  void degistir() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;
  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Düğün',
    'Yoğurtlu',
  ];
  List<String> yemekAdlari = [
    'Karnı Yarık',
    'Mantı',
    'Fasulye',
    'İçli Köfte',
    'Izgara Balık',
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Doundurma',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: degistir,
                child: Image.asset(
                  'assets/images/corba_$corbaNo.jpg',
                ),
              ),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: degistir,
                child: Image.asset(
                  'assets/images/yemek_$yemekNo.jpg',
                ),
              ),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: degistir,
                child: Image.asset(
                  'assets/images/tatli_$tatliNo.jpg',
                ),
              ),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
