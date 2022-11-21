import "package:flutter/material.dart";
import 'package:uado/main.dart';
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    fontSize: 35, color: Color.fromRGBO(78, 199, 50, 1)),
              ),

              const SizedBox(
                height: 20.0,
              ),
              //Login with text
              const Text(
                'Login with',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                textAlign: TextAlign.start,
              ),

              const SizedBox(
                height: 20.0,
              ),
              //Row to hold facebook and google buttons
              Row(
                children: [
                  Card(
                    shape: StadiumBorder(),
                    color: Colors.blue,
                    elevation: 8,
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Container(
                          width: 100.0,
                          height: 40.0,
                          child: Center(
                            child: Text("f", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w900)),
                          )),
                    ),
                  ),
                  SizedBox(width: 20),
                  Card(
                    shape: StadiumBorder(),
                    color: Colors.white,
                    elevation: 8,
                    child: new InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Container(
                          width: 100.0,
                          height: 40.0,
                          child: Center(
                            child: Image.asset(
                              'assets/images/google.png',
                              width: 40.0,
                              height: 40.0,
                              fit: BoxFit.cover,
                            ),
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
                color: Color.fromRGBO(78, 199, 50, 1),
                shape: StadiumBorder(),
                child: InkWell(
                  onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EmailLoginPage()));

                  },
                  child: Container(
                    width: 200.0,
                    height: 40.0,
                    child: Center(
                        child: Text(
                      "EMAIL",
                      style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  const Text(
                    'Don\'t have an account? ',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                  TextButton(
                    child: Text(
                      " Sign Up",
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(78, 199, 50, 1)),
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
