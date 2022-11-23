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
        title: const Text("Add Mechanic"),
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
                        color: Colors.white,
                        shape: const StadiumBorder(),
                        elevation: 0.0,
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
                    height: 20.0,
                  ),

                  //Or text
                  const Text(
                    'USER NAME',
                    style: TextStyle(color: Colors.grey,),
                    textAlign: TextAlign.left,
                  ),
                  // Note: Same code is applied for the TextFormField as well
                  SizedBox(
                    width: double.infinity,
                    height: 35.0,
                    child: const TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                          borderSide: BorderSide(
                              width: 1, color: Colors.grey),
                        ),
                      ),

                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),

                  //Or text
                  const Text(
                    'EMAIL',
                    style: TextStyle(color: Colors.grey,),
                    textAlign: TextAlign.left,
                  ),
                  // Note: Same code is applied for the TextFormField as well
                  SizedBox(
                    width: double.infinity,
                    height: 35.0,
                    child: const TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                          borderSide: BorderSide(
                              width: 1, color: Colors.grey),
                        ),
                      ),

                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),


                  //Or text
                  const Text(
                    'MOBILE NUMBER',
                    style: TextStyle(color: Colors.grey,),
                    textAlign: TextAlign.left,
                  ),
                  // Note: Same code is applied for the TextFormField as well
                  SizedBox(
                    width: double.infinity,
                    height: 35.0,
                    child: const TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                          borderSide: BorderSide(
                              width: 1, color: Colors.grey),
                        ),
                      ),

                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    children: [
                      const Text(
                        'GENDER',
                        style: TextStyle(color: Colors.grey,),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  )

                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        elevation: 0.0,
        color: Color.fromRGBO(78, 199, 50, 1),
        child: SizedBox(
          height: 55.0,
          width: double.infinity,
          //Wrap with inkwell and navigate to next

            child: Center(
                child: Text("Add", style: TextStyle(color: Colors.white, fontSize: 18))
            )
        ),
      ),
    );
  }
}
