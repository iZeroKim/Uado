import 'package:flutter/material.dart';

class At7Page extends StatefulWidget {
  const At7Page({Key? key}) : super(key: key);

  @override
  State<At7Page> createState() => _At7PageState();
}

class _At7PageState extends State<At7Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(78, 199, 50, 1),
        elevation: 1.0,
        title: const Text("Mechanics"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_circle_outline_rounded, color: Colors.white, size: 30,),
            tooltip: 'Add Mechanic',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Add mechanic')));
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 10.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Card(
                    elevation: 1.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        Card(
                          color: const Color.fromRGBO(78, 199, 50, 1),
                          shape: const StadiumBorder(),
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            child: const Center(
                              child: Center(
                                  child: Icon(Icons.menu, color: Colors.white,)),
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          shape: const StadiumBorder(),
                          elevation: 0.0,
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            child: const Center(
                              child: Center(
                                  child: Icon(Icons.pin_drop_rounded, color: Color.fromRGBO(78, 199, 50, 1),size: 40,)),
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          shape: const StadiumBorder(),
                          elevation: 0.0,
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            child: const Center(
                              child: Center(
                                  child: Icon(Icons.alt_route_rounded, color: Color.fromRGBO(78, 199, 50, 1),size: 40,)),
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          shape: const StadiumBorder(),
                          elevation: 0.0,
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            child: const Center(
                              child: Center(
                                  child: Icon(Icons.filter_alt, color: Color.fromRGBO(78, 199, 50, 1), size: 40,)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Mechanic List builder
                  // single List item




                  const SizedBox(
                    height: 40.0,
                  ),


                  Container(
                    padding:EdgeInsets.all(10),
                    child:Stack(
                      children: <Widget>[
                        Positioned(
                          top: 30,
                          left: 30,
                          height:250,
                          width: 250,
                          child: Container(
                            width: 150,
                            height: 150,
                            color: Colors.green[300],
                            child: Text(
                              'Green',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 130,
                          left: 90,
                          width: 250,
                          height: 250,
                          child: Container(
                            width: 80,
                            height: 80,
                            color: Colors.purple[300],
                            child: Text(
                              'Purple',
                              style: TextStyle(color: Colors.white,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
