import 'package:flutter/material.dart';

import '../mystyle.dart';
class DesignButttonWidget extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
   const DesignButttonWidget({Key? key,this.text,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(primary: ocolor),
            child: Text(
            text??"",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: "Calibri"),
            )),
      ),
    );
  }
}
