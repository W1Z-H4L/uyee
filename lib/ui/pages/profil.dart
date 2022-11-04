import 'package:flutter/material.dart';
import 'package:login/shared/theme.dart';
import 'package:login/ui/widgets/buttons.dart';

// class Profile extends StatefulWidget {
//   @override
//   _ProfileState createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   final double coverHeight = 280;
//   final double profileHeight = 144;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView(padding: EdgeInsets.zero, children: <Widget>[
//       buildTop(),
//     ]));
//   }

//   Widget buildTop() {
//     final top = coverHeight - profileHeight / 2;
//     return Scaffold(
//         body: Stack(
//             clipBehavior: Clip.antiAliasWithSaveLayer,
//             alignment: Alignment.center,
//             children: [
//           buildCoverImage(),
//           Positioned(
//             top: top,
//             child: buildProfilImage(),
//           ),
//         ]));
//   }

//   Widget buildCoverImage() => Container(
//         color: subtitleColor2,
//         child: Image.asset('assets/backgroun_profil',
//             width: double.infinity, height: coverHeight, fit: BoxFit.cover),
//       );
//   Widget buildProfilImage() => CircleAvatar(
//         radius: profileHeight / 2,
//         backgroundColor: Colors.grey.shade800,
//         backgroundImage: AssetImage('assets/potoprofil.png'),
//       );
// }

class Profile extends StatelessWidget {
  final double coverHeight = 280;
  final double profileHeight = 158;

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(199, 0, 106, 108),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        body: ListView(children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              Image.asset(
                height: coverHeight,
                width: double.infinity,
                fit: BoxFit.cover,
                color: Color.fromARGB(154, 0, 106, 108),
                colorBlendMode: BlendMode.modulate,
                'assets/backgroun_profil.png',
              ),
              Positioned(
                top: top,
                child: CircleAvatar(
                  radius: profileHeight / 2,
                  backgroundColor: whiteColor,

                  child: Image.asset(
                    'assets/potoprofil.png',
                    height: 144,
                    fit: BoxFit.fitHeight,
                  ),
                  backgroundImage: AssetImage(
                    'assets/gambar_lingkaran.png',
                  ),

                  // child: Image.asset(
                  //   'assets/potoprofil.png',
                  // ),
                  // decoration: const BoxDecoration(
                  //   image: DecorationImage(
                  //       image: AssetImage(
                  //     'assets/potoprofil.png',
                  //   )),
                  // )))
                ),
              ),
              Positioned(
                  bottom: 20,
                  right: 170,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 4,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      color: subtitleColor2,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.edit_sharp,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            'Aditiya Gilang',
            textAlign: TextAlign.center,
            style: greenTextStyle2.copyWith(
              fontWeight: extraBold,
              fontSize: 20,
              color: subtitleColor2,
            ),
          ),
          Text(
            'Aditiya',
            textAlign: TextAlign.center,
            style: greenTextStyle2.copyWith(
              fontSize: 12,
              color: subtitleColor2,
            ),
          ),
          Text(
            'Semangat Bertani Yah Gais ;)',
            textAlign: TextAlign.center,
            style: greenTextStyle2.copyWith(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 45, right: 45, bottom: 5),
              child: Text(
                'Account Info',
                textAlign: TextAlign.start,
                style: greenTextStyle2.copyWith(
                  fontSize: 18,
                  fontWeight: extraBold,
                  color: subtitleColor2,
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
              padding: EdgeInsets.only(left: 45, right: 45, bottom: 5),
              child: TextFormField(
                showCursor: true,
                cursorHeight: 20,
                style: blackTextStyle2,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.edit_sharp,
                      color: subtitleColor2,
                    ),
                    onPressed: () {},
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Nama',
                  hintText: 'Aditiya Gilang',
                  hintStyle: subtitleTextStyle,
                  labelStyle: greenTextStyle3,
                  focusColor: subtitleColor2,
                  fillColor: subtitleColor2,
                ),
              )),
          SizedBox(
            height: 3,
          ),
          Container(
              padding: EdgeInsets.only(left: 45, right: 45, bottom: 5),
              child: TextFormField(
                showCursor: true,
                cursorHeight: 25,
                style: blackTextStyle2,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.edit_sharp,
                      color: subtitleColor2,
                    ),
                    onPressed: () {},
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Alamat',
                  hintText: 'Jombang',
                  hintStyle: subtitleTextStyle,
                  labelStyle: greenTextStyle3,
                  focusColor: subtitleColor2,
                  fillColor: subtitleColor2,
                ),
              )),
          SizedBox(
            height: 3,
          ),
          Container(
              padding: EdgeInsets.only(left: 45, right: 45, bottom: 5),
              child: TextFormField(
                enabled: false,
                showCursor: true,
                cursorHeight: 25,
                style: blackTextStyle2,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Tanggal Lahir',
                  hintText: '21 November 2003',
                  hintStyle: subtitleTextStyle,
                  labelStyle: greenTextStyle3,
                  focusColor: subtitleColor2,
                  fillColor: subtitleColor2,
                ),
              )),
          SizedBox(
            height: 3,
          ),
          Container(
              padding: EdgeInsets.only(left: 45, right: 45, bottom: 5),
              child: TextFormField(
                enabled: false,
                showCursor: true,
                cursorHeight: 25,
                style: blackTextStyle2,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Jenis Kelamin',
                  hintText: 'Laki - Laki',
                  hintStyle: subtitleTextStyle,
                  labelStyle: greenTextStyle3,
                  focusColor: subtitleColor2,
                  fillColor: subtitleColor2,
                ),
              )),
          SizedBox(
            height: 50,
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
                title: 'Save',
                onPressed: () {},
              ))
        ]));
  }
}
