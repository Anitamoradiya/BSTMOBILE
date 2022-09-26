import 'package:flutter/material.dart';
import '../mystyle.dart';

class HeaderCartWidget extends StatelessWidget {
  final String? text;

  const HeaderCartWidget({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: wcolor,
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
              child: Text(
            text ?? "",
            style: heading3,
          )),
        ],
      ),
    );
  }
}
