import 'package:flutter/material.dart';
import 'package:login/ui/pages/dashboard.dart';
import 'package:login/ui/pages/sign_in_page.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SignInPage(),
        '/sign-in': (context) => const SignInPage(),
        '/home': (context) => Dashboard(),
        '/sign-up': (context) => const SignInPage()
      },
    );
  }
}
