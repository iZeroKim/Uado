import 'package:flutter/material.dart';
import 'at5.dart';

class At4Page extends StatefulWidget {
  const At4Page({Key? key}) : super(key: key);

  @override
  State<At4Page> createState() => _At4PageState();
}

class _At4PageState extends State<At4Page> {

  List<DropdownMenuItem<String>> makers = const [
    DropdownMenuItem(child: Text("BMW"),value: "bmw"),
    DropdownMenuItem(child: Text("Mercedes"),value: "mercedes"),
    DropdownMenuItem(child: Text("Audi"),value: "audi"),
    DropdownMenuItem(child: Text("Jeep"),value: "jeep"),

  ];
  List<DropdownMenuItem<String>> models = const [
    DropdownMenuItem(child: Text("C180"),value: "c180"),
    DropdownMenuItem(child: Text("C200"),value: "c200"),
    DropdownMenuItem(child: Text("RS"),value: "rs"),
    DropdownMenuItem(child: Text("G63"),value: "g63"),

  ];
  String selectedMaker = "mercedes";
  String selectedModel = "g63";


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
                  DropdownButtonFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        border: InputBorder.none,

                        filled: true,
                      ),
                      value: selectedMaker,
                      onChanged: (String? newMaker) {
                        setState(() {
                          selectedMaker = newMaker!;
                        });
                      },
                      items: makers),


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

                  DropdownButtonFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        border: InputBorder.none,

                        filled: true,
                      ),
                      value: selectedModel,
                      onChanged: (String? newModel) {
                        setState(() {
                          selectedModel = newModel!;
                        });
                      },
                      items: models),



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
          children: <Widget>[
            SizedBox(
              height: 120.0,
              width: 120.0,

              //Wrap with inkwell and navigate to next
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => At5Page()));

                },
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
            ),
          ],
        ),
      ),
    );
  }
}
