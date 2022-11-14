import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login/shared/theme.dart';
import 'package:toggle_bar/toggle_bar.dart';

class Riwayat extends StatefulWidget {
  @override
  _RiwayatState createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  List<String> labels = ['Irigasi', 'Pemupukan', 'Pestisida'];
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        brightness: Brightness.dark,
        toolbarHeight: 70,
        title: Text(
          "Riwayat",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        titleTextStyle: whiteTextStyle1,
        titleSpacing: 20,
        shadowColor: Color.fromARGB(255, 47, 101, 88),
        backgroundColor: Color.fromARGB(255, 47, 101, 88),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
        ),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        ToggleBar(
          labels: labels,
          textColor: Colors.white,
          selectedTextColor: Colors.black,
          backgroundColor: subtitleColor2,
          selectedTabColor: calmgreen,
          labelTextStyle: TextStyle(fontWeight: FontWeight.bold),
          onSelectionUpdated: (index) {
            setState(() {
              counter = index;
            });
          },
        ),
        SizedBox(
          height: 200,
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/model.png'),
            ),
          ),
          child: Text(
            labels[counter],
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
        ),
      ])),
    );
  }
}
