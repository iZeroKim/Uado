import 'package:flutter/material.dart';

import '../screens/dash_board.dart';
import 'register_page.dart';

class EmailLoginPage extends StatefulWidget {
  const EmailLoginPage({Key? key}) : super(key: key);

  @override
  State<EmailLoginPage> createState() => _EmailLoginPageState();
}

class _EmailLoginPageState extends State<EmailLoginPage> {
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

                  //Or text
                  SizedBox(
                    width: double.infinity,
                    child: const Text(
                      'EMAIL',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                      textAlign: TextAlign.left,
                    ),
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
                  SizedBox(
                    width: double.infinity,
                    child: const Text(
                      'PASSWORD',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.left,
                    ),
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
                    color: Color.fromRGBO(88,133,96, 1),
                    shape: StadiumBorder(),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DashBoard()));
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                            child: Text(
                          "LOGIN",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
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
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        textAlign: TextAlign.left,
                      ),
                      TextButton(
                        child: Text(
                          " Sign Up",
                          style: TextStyle(
                              fontSize: 18,
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
