import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uado/screens/onboarding/at4.dart';
import 'package:uado/services/auth_services.dart';

import 'login_initial_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _secondNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        foregroundColor: Color.fromRGBO(88,133,96, 1),
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
                        'Register',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Let\'s Get Started',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Create an account',
                        style: TextStyle(
                          color: Colors.grey,),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 5.0,
                  ),

                  //Or text

                  // Note: Same code is applied for the TextFormField as well
                  TextField(

                    controller: _firstNameController,
                    decoration: InputDecoration(
                      label:Text(
                        'First name',
                        style: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.left,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        //<-- SEE HERE
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),

                  //Or text
                  TextField(
                    controller: _secondNameController,
                    decoration: InputDecoration(
                      label: Text(
                        'Second name',
                        style: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.left,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        //<-- SEE HERE
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),

                  // Note: Same code is applied for the TextFormField as well
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      label:  Text(
                        'Email',
                        style: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.left,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        //<-- SEE HERE
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      label: Text(
                        'Password',
                        style: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.left,
                      ),
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
                      onTap: () async {

                        /**
                         * TODO Remove
                          */
                        // Register simulation
                        final prefs = await SharedPreferences.getInstance();
                        prefs.setBool('has_logged_in', true);
                        final message = await AuthService().registration(
                          firstname: _firstNameController.text,
                          lastname: _secondNameController.text,
                          email: _emailController.text,
                          password: _passwordController.text,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(message!),
                          ),
                        );
                        if (message!.contains('Success')) {
                          final prefs = await SharedPreferences.getInstance();
                          prefs.setBool('has_logged_in', true);
                          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const At4Page()), (Route<dynamic> route) => false);
                        }

                      },
                      child: Container(
                        width: double.infinity,
                        height: 40.0,
                        child: const Center(
                            child: Text(
                          "Sign up",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                      TextButton(
                        child: const Text(
                          " Login",
                          style: TextStyle(
                              color: Color.fromRGBO(88,133,96, 1)),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const InitialLoginPage()));
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'or',
                        style: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'sign up with',
                        style: TextStyle(
                            color: Colors.grey,),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 15.0,
                  ),
                  //Row to hold facebook and google buttons
                  Row(
                    children: [
                      Expanded(
                        child: Card(

                          color: Colors.blue,
                          elevation: 8,
                          child: InkWell(
                            onTap: () {
                              print("tapped");
                            },
                            child: Container(
                                child: const Center(
                                  child: Text("f",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 32,
                                          fontWeight: FontWeight.w900)),
                                )),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                          child: Card(
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
