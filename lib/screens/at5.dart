import 'package:flutter/material.dart';

class At5Page extends StatefulWidget {
  const At5Page({Key? key}) : super(key: key);

  @override
  State<At5Page> createState() => _At5PageState();
}

class _At5PageState extends State<At5Page> {
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
          padding: const EdgeInsets.all(30.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),

                  Row(
                    mainAxisSize: MainAxisSize.max,
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
                                child: Text(
                              "1",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
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
                        color: const Color.fromRGBO(78, 199, 50, 1),
                        shape: const StadiumBorder(),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          child: const Center(
                            child: Center(
                                child: Text(
                              "2",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
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
                          width: 40.0,
                          height: 40.0,
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
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20.0,
                  ),

                  const Text("YOM : ",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  // Input dropdown
                  const SizedBox(
                    height: 20.0,
                  ),

                  TextField(
                    decoration: InputDecoration(
                      labelText: "2016",
                      labelStyle: TextStyle(color: Colors.black),
                      filled: true,
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 30.0,
                  ),

                  const Text("Odometer Reading : ",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  // Input dropdown
                  const SizedBox(
                    height: 20.0,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Eg 25000",
                              labelStyle: TextStyle(color: Colors.black),
                              suffix: Text(
                                'CC',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                              ),
                              filled: true,
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Miles",
                              labelStyle: TextStyle(color: Colors.black),
                              filled: true,
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 30.0,
                  ),

                  const Text("Engine Capacity : ",
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
                      labelText: "Eg 2500",
                      labelStyle: TextStyle(color: Colors.black),
                      suffix: Text(
                        'CC',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
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
