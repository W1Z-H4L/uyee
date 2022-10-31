import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset(
                height: MediaQuery.of(context).size.height / 3,
                fit: BoxFit.cover,
                'assets/backgroun_profil.png'),
            Positioned(
                bottom: -50,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/potoprofil.png'),
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
