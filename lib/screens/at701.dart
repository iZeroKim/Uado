import 'package:flutter/material.dart';

class At701Page extends StatefulWidget {
  const At701Page({Key? key}) : super(key: key);

  @override
  State<At701Page> createState() => _At701PageState();
}

class _At701PageState extends State<At701Page> {

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
                          width: 120.0,
                          height: 120.0,
                          child:  Center(
                            child: Image.asset(
                                  'assets/images/car.png',
                                  height: 120.0,
                                  width: 120.0,
                                  fit: BoxFit.cover,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 40.0,
                  ),

                  const Text("FULL NAME : ",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  // Input dropdown
                  const SizedBox(
                    height: 20.0,
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
              //Wrap with inkwell and navigate to next
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
