import 'package:flutter/material.dart';

class At5Page extends StatefulWidget {
  const At5Page({Key? key}) : super(key: key);

  @override
  State<At5Page> createState() => _At5PageState();
}

class _At5PageState extends State<At5Page> {
  List<DropdownMenuItem<int>> yoms = [
    DropdownMenuItem(child: Text("2010"),value: 2010),
    DropdownMenuItem(child: Text("2011"),value: 2011),
    DropdownMenuItem(child: Text("2012"),value: 2012),
    DropdownMenuItem(child: Text("2013"),value: 2013),
    DropdownMenuItem(child: Text("2014"),value: 2014),
    DropdownMenuItem(child: Text("2015"),value: 2015),
    DropdownMenuItem(child: Text("2016"),value: 2016),
    DropdownMenuItem(child: Text("2017"),value: 2017),
  ];

  List<DropdownMenuItem<String>> units = [
    DropdownMenuItem(child: Text("Miles"),value: "miles"),
    DropdownMenuItem(child: Text("Kilometers"),value: "kms"),
  ];
  int selectedYom = 2010;
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
                        color: const Color.fromRGBO(78, 199, 50, 1),
                        shape: const StadiumBorder(),
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          child: const Center(
                            child: Center(
                                child: Text(
                              "2",
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

                  const Text("YOM : ",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  // Input dropdown
                  const SizedBox(
                    height: 20.0,
                  ),

                  DropdownButtonFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        border: InputBorder.none,

                        filled: true,
                      ),
                      value: selectedYom,
                      onChanged: (int? newYom) {
                        setState(() {
                          selectedYom = newYom!;
                        });
                      },
                      items: yoms),

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
