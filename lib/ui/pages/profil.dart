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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(0, 0, 106, 108),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        body: Column(children: <Widget>[
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
                  bottom: 0,
                  right: 100,
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
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 160,
          ),
          Text(
            'Aditiya Gilang',
            textAlign: TextAlign.center,
            style: greenTextStyle2.copyWith(
              fontWeight: semiBold,
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
          Text(
            'Account Info',
            textAlign: TextAlign.start,
            style: greenTextStyle2.copyWith(
              fontSize: 16,
              color: subtitleColor2,
            ),
          ),
          TextField()
        ]));
  }
}
