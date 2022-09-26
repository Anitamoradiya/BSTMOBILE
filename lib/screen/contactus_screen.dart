import 'package:bstmobile_app/mystyle.dart';
import 'package:bstmobile_app/widget/header_cart_widget.dart';
import 'package:flutter/material.dart';

import '../widget/menu_list.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const HeaderCartWidget(
              text: "Get in Touch",
            ),
            Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/front/bk.jpg'),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  const SizedBox(height: 5),
                  CircleAvatar(
                    radius: 37,
                    backgroundColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(3), // Border radius
                      child: ClipOval(
                          child: Image.asset('assets/front/download.png')),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Bapa Sitaram Mobile Tools',
                    style: TextStyle(
                        color: wcolor,
                        fontFamily: "Calibri",
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const ContactMenu(
                    icon: Icons.call,
                    text: "9925609200",
                  ),
                  const SizedBox(height: 7),
                  const ContactMenu(
                    icon: Icons.mail,
                    text: "bapasitramtools@gmail.com",
                  ),
                  const SizedBox(height: 7),
                  const ContactMenu(
                    icon: Icons.location_pin,
                    text:
                        "A-92 (FF), Group Wazirpur,New Delhi-110052 New Delhi Delhi - 110052",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Have any questions?",
              style: heading2,
            ),
            const SizedBox(
              height: 5,
            ),
            const Flexible(
                child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                'Feel that tingling in your fingertips? That is the magical urge to contact us. We are just a tap away.',
                textAlign: TextAlign.center,
                style: heading4,
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 125,
                width: double.infinity,
                decoration:
                    BoxDecoration(borderRadius: contanierradius, color: wcolor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Reach us",
                        style: head3,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    MenuList(text: "Mail us", icon: Icons.send),
                    SizedBox(
                      height: 10,
                    ),
                    MenuList(
                      text: "Give us a call",
                      icon: Icons.share,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Container(
                height: 120,
                width: double.infinity,
                decoration:
                BoxDecoration(borderRadius: contanierradius, color: wcolor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Find us on",
                        style: head3,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    MenuList(text: "Instagram", iconimg: "assets/front/insta.png",social: true,chk: true,),
                    SizedBox(
                      height: 10,
                    ),
                    MenuList(text: "Facebook", iconimg: "assets/front/fb1.png",social: true,chk: true,),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
