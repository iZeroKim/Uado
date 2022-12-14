import 'package:flutter/material.dart';
import 'package:uado/screens/onboarding/at4.dart';

import 'login_initial_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 30.0, left: 30.0, right: 30.0, bottom: 30.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // App logo
                  //Sign up with
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Sign up with',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20.0,
                  ),
                  //Row to hold facebook and google buttons
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          shape: const StadiumBorder(),
                          color: Colors.blue,
                          elevation: 8,
                          child: InkWell(
                            onTap: () {
                              print("tapped");
                            },
                            child: Container(
                                width: 100.0,
                                child: const Center(
                                  child: Text("f",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w900)),
                                )),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                          child: Card(
                        shape: const StadiumBorder(),
                        color: Colors.white,
                        elevation: 8,
                        child: new InkWell(
                          onTap: () {
                            print("tapped");
                          },
                          child: Container(
                              child: Center(
                            child: Image.asset(
                              'assets/images/google.png',
                              width: 35.0,
                              height: 35.0,
                              fit: BoxFit.cover,
                            ),
                          )),
                        ),
                      )),
                    ],
                  ),
                  //Or text
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'or',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20.0,
                  ),

                  //Or text
                  const Text(
                    'USER NAME',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                    textAlign: TextAlign.left,
                  ),
                  // Note: Same code is applied for the TextFormField as well
                  const TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        //<-- SEE HERE
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    'EMAIL',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                    textAlign: TextAlign.left,
                  ),
                  // Note: Same code is applied for the TextFormField as well
                  const TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        //<-- SEE HERE
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    'PASSWORD',
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.left,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        //<-- SEE HERE
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  //Email login button
                  Card(
                    color: const Color.fromRGBO(88,133,96, 1),
                    shape: const StadiumBorder(),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const At4Page()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 40.0,
                        child: const Center(
                            child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        )),
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
                        'Already have an account?',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        textAlign: TextAlign.left,
                      ),
                      TextButton(
                        child: const Text(
                          " Login",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(88,133,96, 1)),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const InitialLoginPage()));
                        },
                      ),
                    ],
                  )
                  //Row/ Container for register link
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
