import 'package:flutter/material.dart';
import 'package:uado/main.dart';
import 'login_initial_page.dart';
import '../screens/at7.dart';

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
            top: 5.0,
            left: 30.0,
            right: 30.0,
            bottom: 30.0
          ),
          child: ListView(
            children: [Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // App logo
                //Sign up with
                const Text(
                  'Sign up with',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                      fontWeight: FontWeight.bold
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
                  height: 30.0,
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
                    enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                      borderSide: BorderSide(
                          width: 1, color: Colors.grey),
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
                    enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                      borderSide: BorderSide(
                          width: 1, color: Colors.grey),
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
                    enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                      borderSide: BorderSide(
                          width: 1, color: Colors.grey),
                    ),
                  ),

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
                          builder: (context) => At7Page()));

                    },
                    child: Container(
                      width: 180.0,
                      height: 40.0,
                      child: Center(
                          child: Text(
                            "SIGNUP",
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
                      'Already have an account?',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                    TextButton(
                      child: Text(
                        " Login",
                        style: TextStyle(
                            fontSize: 18, color: Color.fromRGBO(78, 199, 50, 1)),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => InitialLoginPage()));
                      },
                    ),
                  ],
                )
                //Row/ Container for register link
              ],
            )],
          ),
        ),
      ),
    );
  }
}