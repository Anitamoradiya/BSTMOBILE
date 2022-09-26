import 'package:bstmobile_app/mystyle.dart';
import 'package:bstmobile_app/screen/about_screens.dart';
import 'package:bstmobile_app/screen/home_screen.dart';
import 'package:bstmobile_app/screen/wishlist_screen.dart';
import 'package:flutter/material.dart';

import 'account_screeen.dart';
import 'category_screen.dart';
import 'login_screen.dart';

class BottomNavigationHome extends StatefulWidget {
  const BottomNavigationHome({Key? key}) : super(key: key);

  @override
  State<BottomNavigationHome> createState() => _BottomNavigationHomeState();
}

class _BottomNavigationHomeState extends State<BottomNavigationHome> {
  List pagelist = [const HomeScreen(), const CategoryScreen(),const WishlistScreen(), const LoginScreen(),const AboutScreens()];
  var selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(child: pagelist[selectedindex]),
        Container(
          height: 60,
          width: double.infinity,
          color: wcolor,
          child: Row(
            children: [
              Expanded(
                child: Container(
                    child: bottomNavigationBarItem(0, "Home", Icons.home)),
              ),
              Expanded(
                child: Container(
                    child: bottomNavigationBarItem(1, "Category", Icons.category_outlined)),
              ),
              Expanded(
                child: Container(
                    child: bottomNavigationBarItem(2, "Wishlist", Icons.favorite_border)),
              ),
              Expanded(
                child: Container(
                    child: bottomNavigationBarItem(
                        3, "Account", Icons.person)),
              ),
              Expanded(
                child: Container(
                    child: bottomNavigationBarItem(
                        4, "About", Icons.info_outline_rounded)),
              )
            ],
          ),
        )
      ],
    ));
  }

  Widget bottomNavigationBarItem(index, text, IconData icon) {
    return InkWell(
        onTap: () {
          setState(() {
            selectedindex = index;
          });
        },
        child: Container(
          decoration: index == selectedindex
              ? BoxDecoration(
                  border: const Border(
                      bottom: BorderSide(width: 4.0, color: ocolor)),
                  gradient: LinearGradient(colors: [
                    ocolor.withOpacity(0.4),
                    ocolor.withOpacity(0.0125)
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                )
              : const BoxDecoration(),
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  alignment: Alignment.center,
                  child: Icon(
                    icon,
                    color: selectedindex == index ? ocolor : gcolor,
                  )),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: TextStyle(fontSize: 16,fontFamily: "Calibri",
                      color: selectedindex == index
                          ? Colors.black
                          : Colors.black87),
                ),
              ),
            ],
          ),
        ));
  }
}
