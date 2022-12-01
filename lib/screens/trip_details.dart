import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class TripDetails extends StatefulWidget {
  const TripDetails({Key? key}) : super(key: key);

  @override
  State<TripDetails> createState() => _TripDetailsState();
}

class _TripDetailsState extends State<TripDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(78, 199, 50, 1),
        elevation: 1.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Trips Details"),
            const Text("22, November 2022", style: TextStyle(fontSize: 13),)
          ],
        ),

      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(
                left: 0.0, right: 0.0, bottom: 10.0),
            child:
            ListView(
              children: [Column(
                children: [
                  Container(
                    height: 150,
                      width: double.infinity,
                      color: Colors.white54,
                      child: Text("Map goes here")),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children:[
                          Column(
                          children:[
                            Padding(
                              padding: const EdgeInsets.only(top: 25.0),
                              child: Icon(Icons.location_on, color:Color.fromRGBO(78, 199, 50, 1)),
                            ),
                            Dash(
                                direction: Axis.vertical,
                                length: 25,
                                dashLength: 5,
                                dashColor: Colors.grey),
                            Icon(Icons.location_on, color:Color.fromRGBO(255,191,27,1)),
                          ]
                        ),
                          SizedBox(width: 10.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("7.50 am",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold ,fontSize: 16) ,),
                              SizedBox(height:5.0),
                              Text("Elgon Court, Ralphe Burch Road, Nairobi",style: TextStyle(color: Colors.grey, ) ,),
                              SizedBox(height:15.0),
                              Text("10.50 am",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold ,fontSize: 16) ,),
                              SizedBox(height:5.0),
                              Text("Panorama Park Hotel, Naivasha",style: TextStyle(color: Colors.grey, ) ,),

                            ],
                          )
                        ]
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(padding: EdgeInsets.all(30),
                    child: GridView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 10.0 / 10.0,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (BuildContext context, int index) {

                        return Padding(
                            padding: const EdgeInsets.all(5),
                            child: InkWell(
                              onTap: (){ print("Null");
                              },
                              child: Card(
                                  semanticContainer: true,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  clipBehavior: Clip.antiAlias,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: const [
                                              const Icon(Icons.directions_car_sharp, size: 52, color: Color.fromRGBO(255,191,27,1),),
                                              SizedBox(height: 10.0),
                                              Text("10000 km", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                                              SizedBox(height: 10.0),
                                              Text("Distance", style: TextStyle(color:Colors.grey),),
                                            ],
                                          ),
                                      ),
                                    ],
                                  )),
                            ));
                      },
                    ),),
                  )
                ],
              )],
            )


        ),
      ),
    );
  }
}
