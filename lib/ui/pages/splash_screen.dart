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
      const Duration(seconds: 10),
      () => Navigator.pushNamed(context, '/sign-in'),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: <Widget>[
          Column(
            children: [
              Image.asset(
                'assets/icon_splash.png',
                height: 250.0,
                width: 250.0,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "PROSES\n",
                textAlign: TextAlign.center,
                style: greenTextStyle4,
              ),
              SizedBox(
                height: 60,
              ),
              Text("\n Sedang Memuat fitur \n Mohon Tunggu Sebentar ... \n \n",
                  textAlign: TextAlign.center, style: greenTextStyle5),
              SizedBox(
                height: 40,
              ),
              LinearPercentIndicator(
                padding: EdgeInsets.only(left: 45, right: 45, bottom: 20),
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
        ],
      ),
    );
  }
}
