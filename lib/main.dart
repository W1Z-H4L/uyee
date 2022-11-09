import 'package:flutter/material.dart';
import 'package:login/ui/pages/dashboard.dart';
import 'package:login/ui/pages/setting/page/account/edit_password.dart';
import 'package:login/ui/pages/setting/page/account/edit_username.dart';
import 'package:login/ui/pages/setting/page/profil/edit_profil.dart';
import 'package:login/ui/pages/setting/page/profil/profil.dart';
import 'package:login/ui/pages/setting/pengaturan.dart';
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
        '/edit-bio': (context) => Profile(),
        '/edit-pro': (context) => EditProfil(),
        '/edit-user': (context) => EditUsername(),
        '/edit-pass': (context) => EditPassword(),
        '/pengaturan': (context) => Pengaturan(),
      },
    );
  }
}
