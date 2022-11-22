import 'package:flutter/material.dart';

class At4Page extends StatefulWidget {
  const At4Page({Key? key}) : super(key: key);

  @override
  State<At4Page> createState() => _At4PageState();
}

class _At4PageState extends State<At4Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(78, 199, 50, 1),
        elevation: 1.0,
        title: const Text("Add Car"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),

                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card(
                        color: const Color.fromRGBO(78, 199, 50, 1),
                        shape: const StadiumBorder(),
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          child: const Center(
                            child: Center(
                                child: Text(
                              "1",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                      ),
                      const Text(
                        "--------------",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(78, 199, 50, 1)),
                      ),
                      Card(
                        color: Colors.white,
                        shape: const StadiumBorder(),
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromRGBO(78, 199, 50, 1),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Center(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      color: Color.fromRGBO(78, 199, 50, 1),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                )),
                          ),
                        ),
                      ),
                      const Text(
                        "--------------",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(78, 199, 50, 1)),
                      ),
                      Card(
                        color: Colors.white,
                        shape: const StadiumBorder(),
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromRGBO(78, 199, 50, 1),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Center(
                                child: Text(
                              "3",
                              style: TextStyle(
                                  color: Color.fromRGBO(78, 199, 50, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 40.0,
                  ),

                  const Text("CarMaker : ",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  // Input dropdown
                  const SizedBox(
                    height: 20.0,
                  ),

                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Mercedes",
                      hintStyle: TextStyle(color: Colors.black),
                      filled: true,
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.black, width: 2.0),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 30.0,
                  ),

                  const Text("Car Model : ",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  // Input dropdown
                  const SizedBox(
                    height: 20.0,
                  ),

                  const TextField(
                            decoration: InputDecoration(
                              hintText: "W205",
                              hintStyle: TextStyle(color: Colors.black),
                              filled: true,
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2.0),
                              ),
                            ),
                          ),


                  const SizedBox(
                    height: 30.0,
                  ),

                  Row(
                    children: const [
                      Text("Registration no ",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      Text("(optional)",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,),),
                    ],
                  ),
                  // Input dropdown
                  const SizedBox(
                    height: 20.0,
                  ),

                  const TextField(
                    decoration: InputDecoration(
                      hintText: "KDD 314T",
                      hintStyle: TextStyle(color: Colors.black),
                      filled: true,
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const <Widget>[
            SizedBox(
              height: 120.0,
              width: 120.0,
              child: Card(
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(200),)),
                  color: Color.fromRGBO(78, 199, 50, 1),
                  child: Padding(
                    padding: EdgeInsets.only(left: 40.0, top: 40.0),
                    child: Icon(Icons.navigate_next, size: 70, color: Colors.white,),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
