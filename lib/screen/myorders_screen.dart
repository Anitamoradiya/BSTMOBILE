import 'package:bstmobile_app/widget/header_cart_widget.dart';
import 'package:flutter/material.dart';

import '../mystyle.dart';
class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:

      Column(
        children: [
          const HeaderCartWidget(text: "My Orders"),
          Expanded(
              child: Container(
                  color: bgcolor,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/front/orders.png',
                        height: 130,
                        width: 130,fit: BoxFit.fill,
                      ),
                      const SizedBox(height: 5,),
                      const Text(
                        "Your haven't placed any orders yet.",
                        style: heading3,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10,),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          "All your purchased orders any orders yet.",
                          textAlign: TextAlign.center,style: head3,
                        ),
                      )
                    ],
                  ))),
        ],
      ),
    ));
  }
}
