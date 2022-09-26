import 'package:flutter/material.dart';

import '../mystyle.dart';

class Validation extends StatefulWidget {
  const Validation({Key? key}) : super(key: key);

  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  final formkey = GlobalKey<FormState>();
  FocusNode myFocusNode = FocusNode();
  FocusNode passfocus = FocusNode();
  Color color = Colors.grey;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myFocusNode.addListener(() {
      setState(() {
        if (myFocusNode.hasFocus||passfocus.hasFocus) {
          color = Colors.orange;
        } else {
          color = Colors.grey;
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:
      Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              focusNode: myFocusNode,
              decoration: InputDecoration(
                hintText: "Email",
                labelText: "Email",
                  labelStyle: TextStyle(color: color),
                border: OutlineInputBorder(
                  borderRadius: contanierradius,
                ),
         //         focusColor: Colors.orange,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: contanierradius,
                    borderSide: const BorderSide(width: 3, color: Colors.orange),
                  )),
              ),
            const SizedBox(height: 20,),
            TextFormField(
              focusNode: passfocus,
              decoration: InputDecoration(
                  hintText: "password",
                  labelText: "password",
                  labelStyle: TextStyle(color: color),
                  border: OutlineInputBorder(
                    borderRadius: contanierradius,
                  ),
                  focusColor: Colors.orange,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: contanierradius,
                    borderSide: const BorderSide(width: 3, color: Colors.orange),
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
