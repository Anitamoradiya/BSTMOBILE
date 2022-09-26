import 'package:flutter/material.dart';
class HomeGridviewWidget extends StatelessWidget {
  final String? img,name;
   const HomeGridviewWidget({Key? key,this.name,this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: Colors.white),
      child: Column(
        children: [
          Container(
            //  margin: const EdgeInsets.only(top: 10.0),
              height: 100,
              alignment: Alignment.bottomCenter,
              child: Image.asset(img??"")
          ),
          const SizedBox(height: 5,),
          Text(name??"")
        ],
      ),
    );
  }
}
