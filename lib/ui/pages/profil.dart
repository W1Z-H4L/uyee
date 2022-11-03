import 'package:flutter/material.dart';
import 'package:login/shared/theme.dart';

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
    return Column(
      children: <Widget>[
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset(
              height: coverHeight,
              width: double.infinity,
              fit: BoxFit.cover,
              color: Color.fromARGB(199, 0, 106, 108),
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
                  backgroundImage: AssetImage('assets/gambar_lingkaran.png'),

                  // child: Image.asset(
                  //   'assets/potoprofil.png',
                  // ),
                  // decoration: const BoxDecoration(
                  //   image: DecorationImage(
                  //       image: AssetImage(
                  //     'assets/potoprofil.png',
                  //   )),
                  // )))
                ))
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container()
      ],
    );
  }
}
