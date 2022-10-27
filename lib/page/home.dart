import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/shared/theme.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            elevation: 30,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
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
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/icon_Schedule.png'),
                    ),
                    Text(
                      'Schedule',
                      style: karen,
                    )
                  ],
                ),
              ),
            ),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
          ),
          Card(
            elevation: 30,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
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
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/icon_activity.png'),
                    ),
                    Text(
                      'Activity',
                      style: karen,
                    )
                  ],
                ),
              ),
            ),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
          ),
          Card(
            elevation: 30,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
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
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/icon_padicare.png'),
                    ),
                    Text(
                      'Padi Care',
                      style: karen,
                    )
                  ],
                ),
              ),
            ),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
          ),
          Card(
            elevation: 30,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
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
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/icon_varietedpadi.png'),
                    ),
                    Text(
                      'Varietas Padi',
                      style: karen,
                    )
                  ],
                ),
              ),
            ),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
          ),
        ]);
  }
}
