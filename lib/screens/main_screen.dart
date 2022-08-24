import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:la_vie/screens/plant_screen.dart';
import 'package:la_vie/screens/profile_screen.dart';
import 'package:la_vie/screens/qr_scan_screen.dart';


import 'home_screen.dart';
import 'notification_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 2;
  final List<Widget> screens = [
    PlantScreen(),
    QRScanScreen(),
    HomeScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];
  final List<Widget> items = [
    Icon(Ionicons.leaf_outline,),
    Icon(Ionicons.scan,),
    Icon(Ionicons.home_outline,),
    Icon(FontAwesomeIcons.bell,),
    Icon(FontAwesomeIcons.user,),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          body: screens[index],
          bottomNavigationBar:
             Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        spreadRadius: 7,
                        blurRadius: 10,
                        offset: Offset(5, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: CurvedNavigationBar(
                    items: items,
                    index: index,
                    onTap: (index) => setState(() {
                      this.index = index;
                    }),
                    backgroundColor: Colors.transparent,
                    buttonBackgroundColor: Color(0xFF1ABC00),
                    key: navigationKey,
                  ),
                ),


            ),
    );
  }
}