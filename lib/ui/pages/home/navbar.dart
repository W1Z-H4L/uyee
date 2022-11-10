import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/shared/theme.dart';
import 'package:login/ui/pages/activity.dart';
import 'package:login/ui/pages/home/dashboard.dart';
import 'package:login/ui/pages/setting/page/profil/edit_profil.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentTab = 0;
  static final List<Widget> screen = <Widget>[
    Dashboard(),
    Activity(),
    EditProfil()
  ];
  void onTap(int index) {
    setState(() {
      currentTab = index;
    });
  }

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: screen.elementAt(currentTab)),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentTab,
          selectedItemColor: subtitleColor2,
          unselectedItemColor: subtitleColor2,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              label: "Dashboard",
              icon: Icon(
                Icons.dashboard_outlined,
              ),
              activeIcon: Icon(
                Icons.dashboard_rounded,
              ),
            ),
            BottomNavigationBarItem(
                label: "Aktivitas",
                icon: Icon(Icons.local_activity_outlined),
                activeIcon: Icon(Icons.local_activity)),
            BottomNavigationBarItem(
                label: "Akun",
                icon: Icon(Icons.manage_accounts_outlined),
                activeIcon: Icon(Icons.manage_accounts)),
          ]),
    );
  }
}
