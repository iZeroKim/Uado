import 'package:flutter/material.dart';

class At6Page extends StatefulWidget {
  const At6Page({Key? key}) : super(key: key);

  @override
  State<At6Page> createState() => _At6PageState();
}

class _At6PageState extends State<At6Page> {
  List<DropdownMenuItem<String>> insuranceCompanies = const [
    DropdownMenuItem(child: Text("UAP insurance"),value: "uap"),
    DropdownMenuItem(child: Text("Directline"),value: "directline"),
    DropdownMenuItem(child: Text("CIC"),value: "cic"),
    DropdownMenuItem(child: Text("ICEA Lion"),value: "icea"),
    DropdownMenuItem(child: Text("Madison"),value: "madison"),
  ];
  int selectedYom = 2010;
  String selectedIC = "uap";
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
                        color: const Color.fromRGBO(78, 199, 50, 1),
                        shape: const StadiumBorder(),
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          child: const Center(
                            child: Center(
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                      color: Colors.white,
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

                  const Text("Car Insurance : ",
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
                      value: selectedIC,
                      onChanged: (String? newIC) {
                        setState(() {
                          selectedIC = newIC!;
                        });
                      },
                      items: insuranceCompanies),

                  const SizedBox(
                    height: 30.0,
                  ),

                  const Text("Insurance Validity : ",
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
                              hintText: "Eg 11 Jan 2017",
                              hintStyle: TextStyle(color: Colors.black),
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
                              hintText: "Eg 10 Jan 2018",
                              hintStyle: TextStyle(color: Colors.black),
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

                  const Text("Broker Details : ",
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
                              hintText: "Eg Kimani brokers",
                              hintStyle: TextStyle(color: Colors.black),
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
                              hintText: "Eg 0722111887",
                              hintStyle: TextStyle(color: Colors.black),
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
