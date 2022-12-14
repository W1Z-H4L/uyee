import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:login/shared/theme.dart';
import 'package:login/ui/pages/activity.dart';
import 'package:login/ui/pages/home/navbar.dart';
import 'package:login/ui/pages/home/navbar.dart';
import 'package:login/ui/pages/riwayat/togglebar.dart';
import 'package:login/ui/pages/setting/page/profil/profil.dart';
import 'package:login/ui/pages/setting/pengaturan.dart';
import 'package:login/ui/pages/sign_in_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  State<Dashboard> createState() => _DashboardState();
}

//schafold
class _DashboardState extends State<Dashboard> {
  // static final List<Widget> screen = <Widget>[
  //   Dashboard(),
  //   Activity(),
  //   Pengaturan(),
  // ];
  // int currentTab = 0;
  // void onTap(int index) {
  //   setState(() {
  //     currentTab = index;
  //     // currentScreen = HomePage();
  //   });
  // }

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        toolbarHeight: 141,
        // leading: Padding(
        //   padding: EdgeInsets.all(8),
        //   child: GestureDetector(
        //     onTap: () {
        //       Navigator.push(
        //           context, MaterialPageRoute(builder: (context) => navBar()));
        //     },
        //     child: Icon(Icons.keyboard_arrow_left),
        //   ),
        // ),
        title: Text(
          "HALLO!! \n Selamat Datang Di EdiFarm",
        ),
        titleTextStyle: whiteTextStyle3,
        titleSpacing: 14,
        centerTitle: false,
        leading: Padding(
          padding: EdgeInsets.all(8),
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Navbar()));
            },
            child: Image.asset(
                width: 3,
                'assets/potoprofil.png',
                alignment: Alignment.centerLeft),
          ),
        ),
        automaticallyImplyLeading: false,

        // leading: Image.asset(
        //     width: 3, 'assets/potoprofil.png', alignment: Alignment.centerLeft),
        // automaticallyImplyLeading: true,
        shadowColor: Color.fromARGB(255, 47, 101, 88),
        backgroundColor: Color.fromARGB(255, 47, 101, 88),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            image: DecorationImage(
              image: AssetImage(
                'assets/gambar_dekorasi1.png',
              ),
              alignment: Alignment.centerRight,
            ),
          ),
          // body: list[index],
          // drawer: MyDrawer(
          //   onTap: (ctx, i) {
          //     setState(() {
          //       index = i;
          //       Navigator.pop(ctx);
          //     });
          //   },
          // ),
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(
              top: 5,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/gambarcuaca.png'),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Card(
            elevation: 60,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            color: subtitleColor2,
            child: InkWell(
              onTap: () {},
              splashColor: splashcolor,
              highlightColor: splashcolor,
              hoverColor: splashcolor,
              borderRadius: BorderRadius.circular(40),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      // borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        'assets/gambar_schedule.png',
                        cacheHeight: 70,
                        cacheWidth: 70,
                        height: 70,
                        width: 70,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Jadwal',
                      style: karen,
                    )
                  ],
                ),
              ),
            ),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
          ),
          Card(
            elevation: 60,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            color: subtitleColor2,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Activity()));
              },
              splashColor: splashcolor,
              highlightColor: splashcolor,
              hoverColor: splashcolor,
              borderRadius: BorderRadius.circular(40),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      // borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        'assets/gambar_activity.png',
                        cacheHeight: 70,
                        cacheWidth: 70,
                        height: 70,
                        width: 70,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Aktivitas',
                      style: karen,
                    )
                  ],
                ),
              ),
            ),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
          ),
          Card(
            elevation: 60,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            color: subtitleColor2,
            child: InkWell(
              onTap: () {},
              splashColor: splashcolor,
              highlightColor: splashcolor,
              hoverColor: splashcolor,
              borderRadius: BorderRadius.circular(40),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      // borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        'assets/gambar_padicare.png',
                        cacheHeight: 70,
                        cacheWidth: 70,
                        height: 70,
                        width: 70,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Diagnosa',
                      style: karen,
                    )
                  ],
                ),
              ),
            ),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
          ),
          Card(
            elevation: 60,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            color: subtitleColor2,
            child: InkWell(
              onTap: () {},
              splashColor: splashcolor,
              highlightColor: splashcolor,
              hoverColor: splashcolor,
              borderRadius: BorderRadius.circular(40),
              child: Center(
                // height: 110,
                // width: 149,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      // borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        'assets/gambar_variety.png',
                        cacheHeight: 70,
                        cacheWidth: 70,
                        height: 70,
                        width: 70,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Jenis Padi',
                      style: karen,
                    )
                  ],
                ),
              ),
            ),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
          ),
          Card(
            elevation: 60,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            color: subtitleColor2,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Riwayat()));
              },
              splashColor: splashcolor,
              highlightColor: splashcolor,
              hoverColor: splashcolor,
              borderRadius: BorderRadius.circular(40),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipRRect(
                      // borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        'assets/gambar_history.png',
                        cacheHeight: 70,
                        cacheWidth: 70,
                        height: 70,
                        width: 70,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Riwayat',
                      style: karen,
                    )
                  ],
                ),
              ),
            ),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
          ),
          Card(
            elevation: 120,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            color: subtitleColor2,
            child: InkWell(
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pengaturan()))
              },
              splashColor: splashcolor,
              highlightColor: splashcolor,
              hoverColor: splashcolor,
              borderRadius: BorderRadius.circular(40),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    // Opacity(opacity: 0.8),
                    ClipRRect(
                      // borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        'assets/gambar_acount.png',
                        cacheHeight: 70,
                        cacheWidth: 70,
                        height: 70,
                        width: 70,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Pengaturan',
                      style: karen,
                    )
                  ],
                ),
              ),
            ),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     iconSize: 30,
      //     selectedFontSize: 0,
      //     unselectedFontSize: 0,
      //     type: BottomNavigationBarType.fixed,
      //     backgroundColor: Colors.white,
      //     onTap: onTap,
      //     currentIndex: currentTab,
      //     selectedItemColor: subtitleColor2,
      //     unselectedItemColor: subtitleColor2,
      //     showSelectedLabels: false,
      //     showUnselectedLabels: false,
      //     elevation: 0,
      //     items: const [
      //       BottomNavigationBarItem(
      //           label: "Dashboard",
      //           icon: Icon(
      //             Icons.dashboard_outlined,
      //           ),
      //           activeIcon: Icon(
      //             Icons.dashboard_rounded,
      //           )),
      //       BottomNavigationBarItem(
      //           label: "Aktivitas",
      //           icon: Icon(Icons.local_activity_outlined),
      //           activeIcon: Icon(Icons.local_activity)),
      //       BottomNavigationBarItem(
      //           label: "Akun",
      //           icon: Icon(Icons.manage_accounts_outlined),
      //           activeIcon: Icon(Icons.manage_accounts)),

      //     ]),
      // bottomNavigationBar: Navbar(),
    );
  }
}

//schafold
// class MyDrawer extends StatelessWidget {
//   final Function onTap;
//   MyDrawer({required this.onTap});
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width * 0.8,
//       child: Drawer(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             DrawerHeader(
//               decoration:
//                   BoxDecoration(color: Color.fromARGB(255, 47, 101, 88)),
//               child: Padding(
//                 padding: EdgeInsets.all(6),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     Container(
//                       width: 60,
//                       height: 60,
//                       child: CircleAvatar(
//                         backgroundImage: AssetImage('assets/logo.png'),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     Text(
//                       "Edifarm",
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.white),
//                     ),
//                     SizedBox(
//                       height: 3,
//                     ),
//                     Text(
//                       "edifarm@gmail.com",
//                       style: TextStyle(color: Colors.white, fontSize: 12),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.home),
//               title: Text("Dashboard"),
//               onTap: () => onTap(context, 0),
//             ),
//             ListTile(
//               leading: Icon(Icons.person),
//               title: Text("Profile"),
//               onTap: () => onTap(context, 1),
//             ),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text("Settings"),
//               onTap: () => onTap(context, 2),
//             ),
//             Divider(
//               height: 1,
//             ),
//             const SizedBox(
//               height: 35,
//             ),
//             OutlinedButton.icon(
//                 onPressed: () async {
//                   SharedPreferences pref =
//                       await SharedPreferences.getInstance();
//                   await pref.clear();
//                   // ignore: use_build_context_synchronously
//                   Navigator.of(context).pushAndRemoveUntil(
//                       MaterialPageRoute(builder: (context) => SignInPage()),
//                       (route) => false);
//                 },
//                 icon: const Icon(Icons.logout),
//                 label: const Text("Logout")),
//           ],
//         ),
//       ),
//     );
//   }
// }
