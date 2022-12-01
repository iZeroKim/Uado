import 'package:flutter/material.dart';
class Trips extends StatefulWidget {
  const Trips({Key? key}) : super(key: key);

  @override
  State<Trips> createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(78, 199, 50, 1),
        elevation: 1.0,
        title: const Text("Trips"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add_circle_outline_rounded, color: Colors.white, size: 30,),
            padding: const EdgeInsets.only(right: 15.0),
            tooltip: 'Add Trip',
            onPressed:(){},

          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(
                left: 0.0, right: 0.0, bottom: 10.0),
            child:
            Column(
              children: [
                Expanded(
                  child: ListView.builder(

                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      itemBuilder: (context,index){

                        return Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 10.0, bottom: 10.0),
                                  child: Text("22, November 2022",style: TextStyle(color: Colors.grey, fontSize: 16) ,textAlign: TextAlign.left,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: double.infinity - 50,
                                    height: 80,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            )


        ),
      ),
    );
  }
}
