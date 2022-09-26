import 'package:bstmobile_app/mystyle.dart';
import 'package:bstmobile_app/widget/header_widget.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: bgcolor,
      body: Column(
        children: [
          const HeaderWidget(),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                        image: AssetImage('assets/front/wishlist-icon-18.jpg'),
                        fit: BoxFit.fill),
                    color: Colors.orange[100]),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Your Wishlist will live here", style: heading4),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "Explore Variety of Products and add your favorite product to Wishlist",textAlign: TextAlign.center,
                  style: head3,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text("Start shopping, now! ",style: TextStyle(color: ocolor,fontSize: 18,fontFamily: "Calibri"),textAlign: TextAlign.center,)
            ],
                
          ))
        ],
      ),
    ));
  }
}
