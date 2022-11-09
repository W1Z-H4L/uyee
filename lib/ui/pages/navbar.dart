import 'dart:html';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:login/ui/pages/activity.dart';
import 'package:login/ui/pages/dashboard.dart';
import 'package:login/ui/pages/navbar_key.dart';
import 'package:login/ui/pages/setting/page/profil/profil.dart';

class navBar extends StatefulWidget {
  @override
  _navBar createState() => _navBar();
}

class _navBar extends State<navBar> {
  int selectedIndex = 0;
  final Screen = [Dashboard(), Activity(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: selectedIndex,
        key: navBarKey.getkey(),
        items: [
          Icon(
            Icons.dashboard,
            size: 23,
          ),
          Icon(
            Icons.local_activity,
            size: 23,
          ),
          Icon(
            Icons.question_mark,
            size: 23,
          ),
          Icon(
            Icons.manage_accounts,
            size: 23,
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        animationCurve: Curves.easeInBack,
        animationDuration: const Duration(milliseconds: 300),
      ),
      body: Screen[selectedIndex],
    );
  }
}
