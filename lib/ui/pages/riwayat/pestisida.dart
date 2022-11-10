import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/shared/theme.dart';

class Pestisida extends StatefulWidget {
  @override
  State<Pestisida> createState() => _Pestisida();
}

class _Pestisida extends State<Pestisida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        toolbarHeight: 70,
        title: Text(
          "Riwayat",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        titleTextStyle: whiteTextStyle,
        titleSpacing: 20,
        shadowColor: Color.fromARGB(255, 47, 101, 88),
        backgroundColor: Color.fromARGB(255, 47, 101, 88),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(100),
            ),
          ),
        ),
      ),
      body: ListView(),
    );
  }
}
