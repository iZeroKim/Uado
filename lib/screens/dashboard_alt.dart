import 'package:flutter/material.dart';
import 'package:uado/screens/mechanic/mechanic_location.dart';

class DashboardAlt extends StatefulWidget {
  const DashboardAlt({Key? key}) : super(key: key);

  @override
  State<DashboardAlt> createState() => _DashboardAltState();
}

class _DashboardAltState extends State<DashboardAlt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Dashboard", style: TextStyle(color: Colors.black),),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.logout,
              color: Colors.black,
              size: 30,
            ),
            padding: const EdgeInsets.only(right: 15.0),
            tooltip: 'Logout',
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: const Color.fromRGBO(24, 158, 138, 1),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, bottom: 20.0, right: 10.0, left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('Primary Car :',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,)),
                                    Padding(
                                      padding: EdgeInsets.only( top:5.0, bottom: 10.0),
                                      child: Text(
                                        'Mercedes W205',
                                        style: TextStyle(
                                            color: Color.fromRGBO(254, 225, 132, 1), fontSize: 36,fontWeight: FontWeight.bold),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                                width: 50,
                                child: Image(
                                  image: AssetImage("assets/images/logo.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Last Service : ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,)),
                              ),
                              Text('04/12/2022',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20.0, left: 20,bottom: 10),
                    child: Text("Shortcuts", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MechanicLocation()));
              },
              child: Text("Link to map"),
            )

          ],

        ),
      ),
    );
  }
}
