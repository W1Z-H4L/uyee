import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login/shared/theme.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 11),
      () => Navigator.pushNamed(context, '/sign-in'),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        alignment: Alignment.center,
        child: Column(
          children: [
            Image.asset(
              'assets/splashimage.png',
              height: 250.0,
              width: 250.0,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "PROSES\n",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: subtitleColor2,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                fontSize: 24,
              ),
            ),
            Text(
              "\n Sedang Memuat fitur \n Mohon Tunggu Sebentar ... \n \n",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: subtitleColor2,
                fontFamily: 'Montserrat',
                fontSize: 13,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            LinearPercentIndicator(
              animation: true,
              animationDuration: 7500,
              lineHeight: 22,
              percent: 1.0,
              progressColor: subtitleColor2,
              backgroundColor: Color.fromARGB(255, 157, 210, 219),
            ),
            // Container(
            //     height: 30,
            //     padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            //     child: ElevatedButton(
            //       child: const Text('Next'),
            //       onPressed: () {},
            //     )),
          ],
        ),
      ),
    );
  }
}
