import "package:flutter/material.dart";
import 'package:uado/auth/login_initial_page.dart';

class RoleSelectionPage extends StatefulWidget {
  const RoleSelectionPage({Key? key}) : super(key: key);

  @override
  State<RoleSelectionPage> createState() => _RoleSelectionPageState();
}

class _RoleSelectionPageState extends State<RoleSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // App logo
              const SizedBox(
                height: 200.0,
              ),
              Image.asset(
                'assets/images/car.png',
                width: 120.0,
                height: 120.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 50.0,
              ),
              //Welcome text

              Text(
                "Welcome to Uado",
                style: TextStyle(
                    fontSize: 16, color: Colors.black),
              ),

              const SizedBox(
                height: 10.0,
              ),
              Text(
                "sign in as",
                style: TextStyle(
                    fontSize: 16, color: Colors.black),
              ),

              const SizedBox(
                height: 20.0,
              ),
              //Row to hold facebook and google buttons

              const SizedBox(
                height: 20.0,
              ),

              Card(
                color: Color.fromRGBO(88,133,96, 1),
                shape: StadiumBorder(),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => InitialLoginPage()));
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                        child: Text(
                          "Car owner",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Card(
                color: Color.fromRGBO(88,133,96, 1),
                shape: StadiumBorder(),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => InitialLoginPage()));
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                        child: Text(
                          "Mechanic",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Card(
                color: Color.fromRGBO(88,133,96, 1),
                shape: StadiumBorder(),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => InitialLoginPage()));
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                        child: Text(
                          "Car part dealer",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              //Row/ Container for register link
            ],
          ),
        ),
      ),
    );
  }
}
