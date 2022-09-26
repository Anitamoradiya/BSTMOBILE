import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  final String? img1, img2, img3, text1, text2, text3;

  const HomeCategories(
      {Key? key,
      this.img1,
      this.text1,
      this.img2,
      this.text2,
      this.img3,
      this.text3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 130,
              width: 120,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 70,
                    alignment: Alignment.center,
                    child: Image.asset(img1 ?? ""),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(text1 ?? ""),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Expanded(
              child: Container(
            height: 130,
            width: 120,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 70,
                  alignment: Alignment.center,
                  child: Image.asset(img2 ?? ""),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(text2 ?? ""),
                )
              ],
            ),
          )),
          const SizedBox(
            width: 8.0,
          ),
          Expanded(
              child: Container(
            height: 130,
            width: 120,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 70,
                  alignment: Alignment.center,
                  child: Image.asset(img3 ?? ""),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(text3 ?? ""),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
