import 'package:flutter/material.dart';
import 'login_page.dart';

void main(){
  runApp(const Kuis());
}

class Kuis extends StatelessWidget {
  const Kuis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BELA NEGARA',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
    );
  }
}

