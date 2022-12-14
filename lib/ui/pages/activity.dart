import 'package:flutter/material.dart';
import 'package:login/shared/theme.dart';

class Activity extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);
  @override
  State<Activity> createState() => _ActivityState();
}

//schafold
class _ActivityState extends State<Activity> {
  int index = 0;
  List<Widget> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        toolbarHeight: 70,
        title: Text(
          "Activity",
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
      body: Container(
          child: Center(
              child: Text(
        "KASI TANGGAL TAPI NTAR AJA",
        style: greenTextStyle1,
      ))),
    );
  }
}
