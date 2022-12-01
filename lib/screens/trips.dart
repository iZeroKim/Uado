import 'package:flutter/material.dart';
import 'trip_details.dart';

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

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 10.0, bottom: 10.0),
                              child: Text("22, November 2022",style: TextStyle(color: Colors.grey, fontSize: 16) ,textAlign: TextAlign.left,),
                            ),
                            Container(
                              height: 130,
                              width: double.infinity,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 10,
                                  shrinkWrap: true,
                                  itemBuilder: (context,index){

                                    return Card(
                                      child: InkWell(
                                        onTap: (){
                                          print("View trip");
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TripDetails()));

                                        },
                                        child: Container(
                                          width: 320,
                                          color: Colors.white,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: const [
                                                    Text("Nairobi",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold ,fontSize: 16) ,),
                                                    SizedBox(width:10.0),
                                                    Text("to",style: TextStyle(color: Colors.grey, ) ,),
                                                    SizedBox(width:10.0),
                                                    Text("Nakuru",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold ,fontSize: 16) ,)
                                                  ],
                                                ),
                                                const SizedBox(height: 10.0),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        const Icon(Icons.directions_car_sharp, size: 32, color: Color.fromRGBO(255,191,27,1),),
                                                        const SizedBox(width: 5.0),
                                                        Column(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: const [
                                                            Text("Distance", style: TextStyle(color:Colors.grey),),
                                                            SizedBox(height: 10.0),
                                                            Text("100 km", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),)
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Icon(Icons.timer_outlined, size: 32, color: Color.fromRGBO(255,191,27,1),),
                                                        const SizedBox(width: 5.0),
                                                        Column(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: const [
                                                            Text("Duration", style: TextStyle(color:Colors.grey),),
                                                            SizedBox(height: 10.0),
                                                            Text("100 min", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),)
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    ],

                                                )

                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ],
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
