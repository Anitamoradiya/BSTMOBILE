import 'package:flutter/material.dart';
import '../mystyle.dart';
import '../widget/header_widget.dart';
import '../widget/menu_list.dart';
import 'contactus_screen.dart';

class AboutScreens extends StatelessWidget {
  const AboutScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(),
              Material(
                elevation: 3,
                child: Container(
                  height: 165,
                  color: const Color(0xFFFFE0B2),
                  width: double.infinity,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/front/download.png'),
                                fit: BoxFit.fill)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Bapa Sitaram Mobile Tools",
                        style: heading3,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 240,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: contanierradius, color: wcolor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "About us",
                          style: head3,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const MenuList(text: "Rate us", icon: Icons.star_rate),
                      const Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Divider(
                            color: gcolor,
                          )),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const ContactUsScreen()));
                          },
                          child: const MenuList(
                            text: "Contact us",
                            icon: Icons.contact_page_sharp,
                          )),
                      const Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Divider(
                            color: gcolor,
                          )),
                      const MenuList(
                        text: "Share",
                        icon: Icons.share,
                      ),
                      const Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Divider(
                            color: gcolor,
                          )),
                      const MenuList(
                        text: "Terms and Conditions",
                        icon: Icons.list_alt_outlined,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: contanierradius, color: wcolor),
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
                          "Find us on",
                          style: head3,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MenuList(
                        text: "Facebook",
                        chk: true,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Divider(
                            color: gcolor,
                          )),
                      MenuList(
                        text: "Twitter",
                        chk: true,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Divider(
                            color: gcolor,
                          )),
                      MenuList(
                        text: "Instagram",
                        chk: true,
                      ),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: contanierradius, color: wcolor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "POWERED BY",
                          style: TextStyle(
                              fontSize: 7, fontFamily: "Merriweather"),
                        ),
                        Text(
                          "Vajro",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 25,
                              color: Colors.red),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
