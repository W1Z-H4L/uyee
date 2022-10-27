import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/shared/theme.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: subtitleColor2,
      child: InkWell(
        onTap: () {},
        splashColor: greenColor,
        highlightColor: greenColor,
        hoverColor: greenColor,
        borderRadius: BorderRadius.circular(40),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset('assets/icon_Schedule.png'),
              ),
              Text(
                'Schedule',
                style: karen,
              )
            ],
          ),
          // mainAxisSize: MainAxisSize.min,
          // children: const <Widget>[
          //   Text(
          //     'Schedule',
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 12,
          //     ),
          //   ),
          // ],
        ),
      ),
      margin: EdgeInsets.only(left: 20, right: 20, top: 7),
    );
  }
}
