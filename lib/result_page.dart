import 'package:flutter/material.dart';
import 'package:yasamsuresi2/user_data.dart';
import 'package:yasamsuresi2/hesap.dart';

class ResultPage extends StatelessWidget {
  final UserData userData;
  ResultPage(this.userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Sonuc Sayfası')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 8,
              child: Center(
                child: Text(
                  Hesap(userData).hesaplama().round().toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  'Tekrar Hesapla',
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ));
  }
}
