import 'package:flutter/material.dart';
import 'dummy-fakultas.dart';

class HomePage extends StatelessWidget {
  final String username;

  HomePage({Key? key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Halo $username"),
            Text("Sudahkah kamu mengenal UPN Jogja?"),
            Text("UPN Jogja adalah kampus favorit di DIY lho!"),
            Text("Kenalan lebih jauh yuk!"),
          ],
        ),
      ),
    );
  }

}