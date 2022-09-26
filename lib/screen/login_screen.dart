import 'package:bstmobile_app/mystyle.dart';
import 'package:bstmobile_app/screen/bottom_navigation_home.dart';
import 'package:bstmobile_app/screen/register_screen.dart';
import 'package:bstmobile_app/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:bstmobile_app/widget/text_formfiled_widget.dart';
import '../widget/header_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  FocusNode myFocus = FocusNode();
  FocusNode emailFocus = FocusNode();
  FocusNode passFocus = FocusNode();

  // FocusNode emailFocus = FocusNode();
  Color color = Colors.grey;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailFocus.addListener(() {
      setState(() {
        if (emailFocus.hasFocus ) {
          color = Colors.orange;
        } else {
          color = Colors.grey;
        }
      });
    });
    passFocus.addListener(() {
      setState(()
      {
        if (passFocus.hasFocus ) {
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
                height: 10,
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
              //const SizedBox(height: 15,),
              TextFormFiledWidget(
                hintText: "Email",
                focusNode: emailFocus,
                color: color,
                labelText: "Email",mycontroller: emailController,
              ),
              TextFormFiledWidget(
                hintText: "Password",
                focusNode: passFocus,mycontroller: passwordController,
                color: color,
                labelText: "Password",
              ),
               DesignButttonWidget(
                text: "Login",onPressed: (){
                  if(formkey.currentState!.validate())
                    {
                     emailController.clear();
                     passwordController.clear();
                     color=Colors.grey;
                     Navigator.push(context, MaterialPageRoute(builder: (_)=>const BottomNavigationHome()));
                    }
              },
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: const TextSpan(
                  text: 'Having touble? ',
                  style: head4,
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Reset your password',
                        style: TextStyle(
                          fontFamily: "Calibri",
                            color: Colors.orange,
                            fontSize: 16)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 15, 25, 10),
                child: Row(children: const [
                  Expanded(child: Divider(thickness: 1.5)),
                  SizedBox(
                    width: 15,
                  ),
                  Text("or login with", style: head5),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(child: Divider(thickness: 1.5)),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    socialButton("Facebook", "assets/front/fb.png",
                        const Color(0xFF1565C0)),
                    const SizedBox(
                      width: 10,
                    ),
                    socialButton(
                        "Google", "assets/front/google.png", Colors.black)
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "By Creating an account, you agree with our",
                style: head3,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 3,
              ),
              const Text("Privacy Policy",
                  textAlign: TextAlign.center, style: uhead3),
              const SizedBox(height: 60,),
              InkWell(
                onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const RegisterScreen()));
                },
                child: Padding(padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(borderRadius: contanierradius, border: Border.all(color: ocolor,width: 2)),
                      child: RichText(
                        text: const TextSpan(
                          text: 'Don\'t have an account?  ',
                          style: head2,
                          children: <TextSpan>[
                            TextSpan(
                                text: 'REGISTER',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontFamily: "Calibri",
                                    fontSize: 18)),
                          ],
                        ),
                      )
                  ),),
              ),
              const SizedBox(height: 60,),


            ],
          ),
        ),
      ),
    ));
  }

  Widget socialButton(text, img, Color color) {
    return Expanded(
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(borderRadius: contanierradius, color: color),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              img,
              height: 30,
              width: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
