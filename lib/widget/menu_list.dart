import 'package:bstmobile_app/mystyle.dart';
import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  final IconData? icon;
  final String? text, iconimg;
  final bool? chk, style, social;

  const MenuList(
      {Key? key,
      this.icon,
      this.text,
      this.chk,
      this.style,
      this.iconimg,
      this.social})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 35,
      child: Row(
        children: [
          chk != true
              ? Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 35,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFFFE0B2)),
                  child: Icon(
                    icon,
                    size: 20.0,
                  ))
              : social == true
                  ? Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        iconimg ?? "",
                        fit: BoxFit.cover,
                      ))
                  : Container(
                      height: 35,
                    ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: style == true
                ? Text(text ?? "", style: heading3)
                : Text(text ?? "", style: heading5),
          ),
          style == true
              ? const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: gcolor,
                )
              : Container(),
          const SizedBox(
            width: 10.0,
          )
        ],
      ),
    );
  }
}

class ContactMenu extends StatelessWidget {
  final IconData? icon;
  final String? text;

  const ContactMenu({Key? key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 5,
        ),
        Icon(
          icon,
          color: wcolor,
          size: 22,
        ),
        const SizedBox(width: 10),
        Flexible(
            child: Text(text ?? "",
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(
                    color: wcolor, fontSize: 17, fontFamily: "Calibri")))
      ],
    );
  }
}
