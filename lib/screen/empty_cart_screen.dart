import 'package:bstmobile_app/mystyle.dart';
import 'package:bstmobile_app/widget/header_cart_widget.dart';
import 'package:bstmobile_app/widget/button_widget.dart';
import 'package:flutter/material.dart';

class EmptyCartScreen extends StatelessWidget {
  const EmptyCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const HeaderCartWidget(text: "Cart",),
          Expanded(
              child: Container(
                  color: bgcolor,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/front/ecart6 (2).png',
                        height: 130,
                        width: 130,
                      ),
                      const SizedBox(height: 15,),
                      const Text(
                        "YOUR CART IS EMPTY",
                        style: heading2,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 5,),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          "There are no items added in your Cart. Shop more to add products to your cart.",
                          textAlign: TextAlign.center,style: heading5,
                        ),
                      )
                    ],
                  ))),
           DesignButttonWidget(text: "SHOP NOW",onPressed: (){},)
        ],
      ),
    ));
  }
}
