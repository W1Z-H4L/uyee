import 'package:flutter/material.dart';
import 'package:login/shared/theme.dart';
import 'package:login/ui/widgets/buttons.dart';

class Pengaturan extends StatefulWidget {
  @override
  State<Pengaturan> createState() => _Pengaturan();
}

class _Pengaturan extends State<Pengaturan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          toolbarHeight: 70,
          title: Text(
            "Pengaturan",
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
        body: ListView(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(
                  left: 45,
                  right: 45,
                  top: 45,
                ),
                child: Text(
                  'Account',
                  textAlign: TextAlign.start,
                  style: greenTextStyle2.copyWith(
                    fontWeight: bold,
                    fontSize: 18,
                    color: subtitleColor2,
                  ),
                )),
            SizedBox(
              height: 6,
            ),
            Container(
                padding: EdgeInsets.only(left: 45, right: 45, bottom: 6),
                child: Container(
                    decoration:
                        const BoxDecoration(color: Colors.black, boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 3.0,
                        offset: Offset(0, 3),
                      ),
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 0),
                      ),
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 2),
                      ),
                    ]),
                    child: ButtonSetting(
                        title: 'Edit Username',
                        height: 44,
                        width: 277,
                        onPressed: () {
                          Navigator.pushNamed(context, '/edit-user');
                        }))),
            // SizedBox(
            //   height: 6,
            // ),
            Container(
                padding: EdgeInsets.only(
                  left: 45,
                  right: 45,
                ),
                child: Container(
                    decoration:
                        const BoxDecoration(color: Colors.black, boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 3.0,
                        offset: Offset(0, 3),
                      ),
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 0),
                      ),
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 2),
                      ),
                    ]),
                    child: ButtonSetting(
                        title: 'Edit Passsword',
                        height: 44,
                        width: 277,
                        onPressed: () {
                          Navigator.pushNamed(context, '/edit-pass');
                        }))),
            SizedBox(
              height: 20,
            ),
            Container(
                padding:
                    EdgeInsets.only(left: 45, right: 45, top: 45, bottom: 6),
                child: Text(
                  'Profile',
                  textAlign: TextAlign.start,
                  style: greenTextStyle2.copyWith(
                    fontWeight: bold,
                    fontSize: 18,
                    color: subtitleColor2,
                  ),
                )),

            Container(
                padding: EdgeInsets.only(left: 45, right: 45, bottom: 6),
                child: Container(
                    decoration:
                        const BoxDecoration(color: Colors.black, boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 3.0,
                        offset: Offset(0, 3),
                      ),
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 0),
                      ),
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 2),
                      ),
                    ]),
                    child: ButtonSetting(
                        title: 'Edit Biodata',
                        height: 44,
                        width: 277,
                        onPressed: () {
                          Navigator.pushNamed(context, '/edit-bio');
                        }))),
            SizedBox(
              height: 6,
            ),
            Container(
              padding: EdgeInsets.only(
                left: 45,
                right: 45,
              ),
              child: Container(
                  decoration:
                      const BoxDecoration(color: Colors.black, boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 3.0,
                      offset: Offset(0, 3),
                    ),
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(2, 0),
                    ),
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 2),
                    ),
                  ]),
                  child: ButtonSetting(
                      title: 'Edit Profil',
                      height: 44,
                      width: 277,
                      onPressed: () {
                        Navigator.pushNamed(context, '/edit-pro');
                      })),
            ),
            Container(
                // height: 30,
                // width: 150,
                padding: EdgeInsets.only(
                  left: 90,
                  right: 90,
                  bottom: 50,
                ),
                child: CustomFilledButton(
                  height: 30,
                  width: 150,
                  title: 'Logout',
                  onPressed: () {},
                ))
          ],
        ));
  }
}
