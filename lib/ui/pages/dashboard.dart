import 'package:flutter/material.dart';
import 'package:login/page/home.dart';
import 'package:login/page/profile.dart';
import 'package:login/page/settings.dart';
import 'package:login/shared/theme.dart';
import 'package:login/ui/pages/sign_in_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Dashboard extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);
  @override
  State<Dashboard> createState() => _DashboardState();
}

//schafold
class _DashboardState extends State<Dashboard> {
  int index = 0;
  List<Widget> list = [Home(), Profile(), Settings()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            brightness: Brightness.dark,
            toolbarHeight: 141,
            title: Text(
              "HALLO!! \n Selamat Datang Di EdiFarm",
            ),
            titleTextStyle: blackTextStyle1,
            titleSpacing: 20,
            centerTitle: false,
            // leading: Image.asset('potoprofil.png'),
            automaticallyImplyLeading: true,
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
                    'assets/gambar1.png',
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
          drawer: MyDrawer(
            onTap: (ctx, i) {
              setState(() {
                index = i;
                Navigator.pop(ctx);
              });
            },
          ),
          body: list[index],
        ));
  }
}

//schafold
class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({required this.onTap});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 47, 101, 88)),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/logo.png'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Edifarm",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "edifarm@gmail.com",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Dashboard"),
              onTap: () => onTap(context, 0),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () => onTap(context, 1),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () => onTap(context, 2),
            ),
            Divider(
              height: 1,
            ),
            const SizedBox(
              height: 35,
            ),
            OutlinedButton.icon(
                onPressed: () async {
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  await pref.clear();
                  // ignore: use_build_context_synchronously
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => SignInPage()),
                      (route) => false);
                },
                icon: const Icon(Icons.logout),
                label: const Text("Logout")),
          ],
        ),
      ),
    );
  }
}
