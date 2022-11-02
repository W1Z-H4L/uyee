import 'package:flutter/material.dart';
import 'package:login/ui/pages/dashboard.dart';
import 'package:login/ui/pages/sign_in_page.dart';
import 'package:login/ui/pages/splash_screen.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/sign-in': (context) => SignInPage(),
        '/home': (context) => Dashboard(),
      },
    );
  }
}
