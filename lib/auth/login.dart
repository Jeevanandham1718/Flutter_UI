import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progress_bar/progress_bar.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:tun/widgets/input.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool showBar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Image.asset(
                  "images/logo.png",
                  width: 120,
                ),
                Text("Welcome",
                    style: GoogleFonts.acme(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Text("Glad to see you here!",
                    style: GoogleFonts.abhayaLibre(
                        fontSize: 24, color: Colors.white)),
                SizedBox(
                  height: 55,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Input(
                    textEditingController: email,
                    labelString: "Email",
                    iconData: Icons.email_outlined,
                    isObsecure: false,
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Input(
                    isObsecure: true,
                    textEditingController: email,
                    labelString: "password",
                    iconData: Icons.lock_outline,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                showBar == false
                    ? Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 30,
                            height: 44,
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(6)),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  showBar = true;
                                });
                              },
                              child: Center(
                                child: Text("Login",
                                    style: GoogleFonts.acme(
                                        fontSize: 34,
                                        //fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Register now",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Image.asset(
                            "images/hh.png",
                            width: 120,
                          )
                        ],
                      )
                    : Container(
                        child: SimpleCircularProgressBar(
                          progressColors: [
                            Colors.blueAccent,
                            Colors.redAccent,
                            Colors.purpleAccent,
                            Colors.greenAccent,
                          ],
                          animationDuration: 3,
                          backColor: Colors.white,
                        ),
                      ),
                // Image.asset(
                //   "images/hh.png",
                //   width: 120,
                // )
              ],
            ),
          ),
        ));
  }
}
