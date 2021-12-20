import 'package:flutter/material.dart';

class Cinsiyet extends StatelessWidget {
  final IconData icon;
  final String cinsiyeti;

  Cinsiyet({this.icon, this.cinsiyeti});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50,
          color: Colors.black54,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          cinsiyeti,
          style: TextStyle(color: Colors.black54, fontSize: 20),
        ),
      ],
    );
  }
}
