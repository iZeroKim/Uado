import "package:flutter/material.dart";

import 'email_login_page.dart';
import 'register_page.dart';

class InitialLoginPage extends StatefulWidget {
  const InitialLoginPage({Key? key}) : super(key: key);

  @override
  State<InitialLoginPage> createState() => _InitialLoginPageState();
}

class _InitialLoginPageState extends State<InitialLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Color.fromRGBO(88,133,96, 1),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // App logo
              const SizedBox(
                height: 100.0,
              ),
              Image.asset(
                'assets/images/car.png',
                width: 120.0,
                height: 120.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 40.0,
              ),
              //Welcome text

              Text(
                "Welcome to Uado",
                style: TextStyle(
                    fontSize: 16, color: Color.fromRGBO(88,133,96, 1)),
              ),

              const SizedBox(
                height: 20.0,
              ),

              const SizedBox(
                height: 20.0,
              ),
              //Row to hold facebook and google buttons

              Column(
                children: [
                  Card(
                    shape: StadiumBorder(),
                    color: Colors.blue,
                    elevation: 10,
                    child: InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Container(
                          padding: EdgeInsets.all(5.0),
                          width: double.infinity,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text("f ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 26,
                                        fontWeight: FontWeight.w900)),
                                Text(" Sign in with ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18)),
                                Text(" Facebook ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          )),
                    ),
                  ),

                  // Card(
                  //   color: Color.fromRGBO(88,133,96, 1),
                  //   shape: StadiumBorder(),
                  //   child: InkWell(
                  //     onTap: () {
                  //       Navigator.of(context).push(MaterialPageRoute(
                  //           builder: (context) => InitialLoginPage()));
                  //     },
                  //     child: Container(
                  //       width: double.infinity,
                  //       padding: EdgeInsets.all(10.0),
                  //       child: Center(
                  //           child:Row(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             crossAxisAlignment: CrossAxisAlignment.center,
                  //             children: const [
                  //               Text("f ",
                  //                   style: TextStyle(
                  //                       color: Colors.white,
                  //                       fontSize: 20,
                  //                       fontWeight: FontWeight.w900)),
                  //               Text(
                  //                 "Sign in with",
                  //                 style: TextStyle(
                  //                     color: Colors.white,
                  //                     fontSize: 16,
                  //                     fontWeight: FontWeight.w500),
                  //               ),
                  //               Text(
                  //             "Facebook",
                  //             style: TextStyle(
                  //                 color: Colors.white,
                  //                 fontSize: 16,
                  //                 fontWeight: FontWeight.w700)),
                  //             ],
                  //           )
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 10),
                  Card(
                    shape: StadiumBorder(),
                    color: Colors.red,
                    elevation: 10,
                    child: InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(5.0),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text("G ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900)),
                              Text(" Sign in with ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                              Text(" Google ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
              //Or text
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'or',
                style: TextStyle(color: Colors.grey, fontSize: 18),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 20.0,
              ),
              //Email login button
              Card(
                color: Color.fromRGBO(88,133,96, 1),
                shape: StadiumBorder(),
                elevation: 10.0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EmailLoginPage()));
                  },
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.email,
                            size: 28,
                            color: Colors.white,
                          ),
                          Text("  Sign in With ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                          Text(
                            "Email",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account? ',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  TextButton(
                    child: Text(
                      " Sign Up",
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(88,133,96, 1)),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegisterPage()));
                    },
                  ),
                ],
              )
              //Row/ Container for register link
            ],
          ),
        ),
      ),
    );
  }
}
