import 'package:flutter/material.dart';
import '../mystyle.dart';

class TextFormFiledWidget extends StatefulWidget {
  final String? hintText, labelText;
  final FocusNode? focusNode;
  final Color color;
  final TextEditingController? mycontroller;

  const TextFormFiledWidget(
      {Key? key,
      this.hintText,
      this.labelText,
      this.focusNode,
      this.color = Colors.grey,
      this.mycontroller})
      : super(key: key);

  @override
  State<TextFormFiledWidget> createState() => _TextFormFiledWidgetState();
}

class _TextFormFiledWidgetState extends State<TextFormFiledWidget> {
  bool securityText = true;

  @override
  Widget build(BuildContext context) {
    //FocusNode myFocusNode = FocusNode();

    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        focusNode: widget.focusNode,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Required";
          } else {
            return null;
          }
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: widget.labelText == "Password" ? securityText : false,
        controller: widget.mycontroller,
        decoration: InputDecoration(
            hintText: widget.hintText,
            labelText: widget.labelText,
            suffixIcon: widget.labelText == "Password"
                ? IconButton(
                    icon: Icon(
                        securityText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        securityText = !securityText;
                      });
                    },
                  )
                : widget.mycontroller!.text.isNotEmpty
                    ? IconButton(
                        onPressed: () {
                          widget.mycontroller!.clear();
                        },
                        icon: const Icon(Icons.cancel, color: Colors.grey))
                    : null,
            border: OutlineInputBorder(
              borderRadius: contanierradius,
            ),
            labelStyle: TextStyle(color: widget.color),
            focusColor: Colors.orange,
            focusedBorder: OutlineInputBorder(
              borderRadius: contanierradius,
              borderSide: const BorderSide(width: 3, color: Colors.orange),
            )),
      ),
    );
  }
}
