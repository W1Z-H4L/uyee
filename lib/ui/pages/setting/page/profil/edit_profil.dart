import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/shared/theme.dart';

class EditProfil extends StatefulWidget {
  @override
  State<EditProfil> createState() => _EditProfil();
}

class _EditProfil extends State<EditProfil> {
  final double coverHeight = 280;
  final double profileHeight = 158;
  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          toolbarHeight: 70,
          title: Text(
            "Edit Profile",
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
              // Positioned(
              //     bottom: 20,
              //     right: 170,
              //     child: Container(
              //       height: 40,
              //       width: 40,
              //       decoration: BoxDecoration(
              //         shape: BoxShape.circle,
              //         border: Border.all(
              //           width: 4,
              //           color: Theme.of(context).scaffoldBackgroundColor,
              //         ),
              //         color: subtitleColor2,
              //       ),
              //       child: IconButton(
              //         icon: Icon(
              //           Icons.edit_sharp,
              //           color: Colors.white,
              //         ),
              //         onPressed: () {},
              //       ),
              //     ))
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            'Aditiya Gilang',
            textAlign: TextAlign.center,
            style: greenTextStyle.copyWith(
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
          )
        ]));
  }
}
