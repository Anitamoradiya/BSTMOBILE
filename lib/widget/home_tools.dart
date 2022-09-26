import 'package:bstmobile_app/mystyle.dart';
import 'package:flutter/material.dart';

class HomeTools extends StatelessWidget {
  final String? img,name,price;


  const HomeTools({Key? key,this.img,this.name,this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 300,
      decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          color: Colors.white,boxShadow: [BoxShadow(blurRadius: 5,color: (Colors.grey[200])!)]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            height: 130,
            alignment: Alignment.bottomCenter,
            child: Image.asset(img?? ""),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10.0),
            child: Text(name??""),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10.0),
            child: Text(price??""),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 15.0),
            height: 30,
            width: 150,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: const Text('Description'),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            height: 37,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: (Colors.grey[400])!),
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0)),
            ),
            child: const Text('Buy Once'),
          )
        ],
      ),
    );
  }
}
