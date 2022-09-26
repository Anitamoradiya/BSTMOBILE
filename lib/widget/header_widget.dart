import 'package:bstmobile_app/mystyle.dart';
import 'package:bstmobile_app/screen/empty_cart_screen.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: wcolor,
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: [
          const Icon(
            Icons.menu,
            size: 30,
            color: Colors.black,
          ),
          Expanded(
              child: Image.asset(
            'assets/front/download1.png',
            width: 150,
            height: 70,
          )),
                    Stack(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const EmptyCartScreen()));
                },
                child: const SizedBox(
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.shopping_cart,
                      size: 30,
                      color: Colors.black,
                    )),
              ),
              Positioned(
                right: 0,
                child: Container(
                  height: 20,
                  width: 20,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.orange),
                  child: const Text(
                    "0",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
