import 'package:bstmobile_app/mystyle.dart';
import 'package:bstmobile_app/screen/myorders_screen.dart';
import 'package:bstmobile_app/widget/header_widget.dart';
import 'package:bstmobile_app/widget/menu_list.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: bgcolor,
      body: Column(
        children: [
          const HeaderWidget(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: contanierradius),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
                    child: const Icon(
                      Icons.person,
                      size: 90,
                      color: gcolor,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'anita patel',
                    style: heading3,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.mail,
                        color: gcolor,
                        size: 17,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "anitamoradiya@gmail.com",
                        style: head3,
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),
          //const MenuWidget(text: "My Orders",icon: Icons.list_alt,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const MyOrdersScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Container(
                height: 50,
                decoration: BoxDecoration(color: wcolor, borderRadius: contanierradius),
                child: const MenuList(icon: Icons.list_alt,text: "My Orders",style: true,),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              height: 50,
              decoration: BoxDecoration(color: wcolor, borderRadius: contanierradius),
              child: const MenuList(icon: Icons.home_outlined,text: "Default Address",style: true,),
            ),
          ),

        ],
      ),
    ));
  }
}
