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
          // AppBar(
          //    // appBar: AppBar(
          //   brightness: Brightness.dark,
          //   toolbarHeight: 141,
          //   title: Text(
          //     "HALLO!! \n Selamat Datang Di EdiFarm",
          //   ),
          //   titleTextStyle: blackTextStyle1,
          //   titleSpacing: 20,
          //   centerTitle: false,
          //   // leading: Image.asset('potoprofil.png'),
          //   automaticallyImplyLeading: true,
          //   shadowColor: Color.fromARGB(255, 47, 101, 88),
          //   backgroundColor: Color.fromARGB(255, 47, 101, 88),
          //   flexibleSpace: Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.only(
          //         bottomLeft: Radius.circular(50),
          //         bottomRight: Radius.circular(50),
          //       ),
          //       image: DecorationImage(
          //         image: AssetImage(
          //           'assets/potoprofil.png',
          //         ),
          //         alignment: Alignment.centerRight,
          //       ),
          //     ),
          //     // body: list[index],
          //     // drawer: MyDrawer(
          //     //   onTap: (ctx, i) {
          //     //     setState(() {
          //     //       index = i;
          //     //       Navigator.pop(ctx);
          //     //     });
          //     //   },
          //     // ),
          //   ),
          // ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(
              top: 5,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/gambarcuaca.png'),
              ),
            ),
          ),
          SizedBox(
            height: 15,
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
                      child: Image.asset('assets/icon_Schedule.png'),
                    ),
                    SizedBox(
                      height: 5,
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
                    SizedBox(
                      height: 5,
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
                    SizedBox(
                      height: 5,
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
                    SizedBox(
                      height: 5,
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
