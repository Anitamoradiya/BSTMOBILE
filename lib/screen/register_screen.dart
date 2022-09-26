import 'package:bstmobile_app/screen/login_screen.dart';
import 'package:bstmobile_app/widget/button_widget.dart';
import 'package:bstmobile_app/widget/header_widget.dart';
import 'package:bstmobile_app/widget/text_formfiled_widget.dart';
import 'package:flutter/material.dart';

import '../mystyle.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formkey = GlobalKey<FormState>();
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode fnameFocus = FocusNode();
  FocusNode lnameFocus = FocusNode();
  Color color = Colors.grey;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fnameFocus.addListener(() {
      setState(() {
        if (fnameFocus.hasFocus || lnameFocus.hasFocus) {
          color = Colors.orange;
        } else {
          color = Colors.grey;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              const HeaderWidget(),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFFE0B2),
                    image: DecorationImage(
                      image: AssetImage('assets/front/download1.png'),
                      fit: BoxFit.fill,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormFiledWidget(
                  hintText: "First Name",
                  color: color,
                  labelText: "First Name",
                  focusNode: fnameFocus,
                  mycontroller: fnameController),
              const SizedBox(
                height: 5,
              ),
              TextFormFiledWidget(
                  hintText: "Last Name",
                  color: color,
                  labelText: "Last Name",
                  focusNode: lnameFocus,
                  mycontroller: lnameController),
              const SizedBox(
                height: 5,
              ),
              TextFormFiledWidget(
                hintText: "Email",
                color: color,
                labelText: "Email",
                mycontroller: emailController,
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormFiledWidget(
                  hintText: "Password",
                  color: color,
                  labelText: "Password",
                  mycontroller: passwordController),
              const SizedBox(
                height: 5,
              ),
              DesignButttonWidget(
                  text: "Register",
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      emailController.clear();
                      passwordController.clear();
                      color = Colors.grey;
                    }
                  }),
              const SizedBox(
                height: 10,
              ),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const LoginScreen()));
                },
                child: RichText(
                  text: const TextSpan(
                    text: 'Have an account? ',
                    style: head4,
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Login',
                          style: TextStyle(
                              fontFamily: "Calibri",
                              color: Colors.orange,
                              fontSize: 16)),
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    ));
  }
}
