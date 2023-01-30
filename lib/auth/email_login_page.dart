import 'package:flutter/material.dart';
import 'package:uado/services/auth_services.dart';

import '../screens/dash_board.dart';
import 'register_page.dart';

class EmailLoginPage extends StatefulWidget {
  const EmailLoginPage({Key? key}) : super(key: key);

  @override
  State<EmailLoginPage> createState() => _EmailLoginPageState();
}

class _EmailLoginPageState extends State<EmailLoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
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
          padding: const EdgeInsets.all(30.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // App logo
                  const SizedBox(
                    height: 50.0,
                  ),
                  Image.asset(
                    'assets/images/car.png',
                    width: 120.0,
                    height: 120.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  //Welcome text

                  Text(
                    "Welcome to Uado",
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(88,133,96, 1)),
                  ),

                  const SizedBox(
                    height: 30.0,
                  ),


                  // Note: Same code is applied for the TextFormField as well
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      label: Text(
                        'Email',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
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
                      label:Text(
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
                    color: Color.fromRGBO(88,133,96, 1),
                    shape: StadiumBorder(),
                    child: InkWell(
                      onTap: () async {
                        final message = await AuthService().login(
                          email: _emailController.text,
                          password: _passwordController.text,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(message!),
                          ),
                        );
                        if (message!.contains('Success')) {
                          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const DashBoard()), (Route<dynamic> route) => false);
                        }


                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account? ',
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                      TextButton(
                        child: Text(
                          " Sign Up",
                          style: TextStyle(
                              color: Color.fromRGBO(88,133,96, 1)),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
