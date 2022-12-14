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
    List<String> icons = [
      "assets/images/distance.png",
      "assets/images/time.png",
      "assets/images/speed.png",
      "assets/images/fuel.png"
    ];
    List<String> titles = ["Distance", "Duration", "Avg Speed", "Fuel Economy"];
    const List<String> values = ["100 km", "5 hrs", "40 km/h", "30km/l"];
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(88,133,96, 1),
        elevation: 1.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Trips Details"),
            const Text(
              "22, November 2022",
              style: TextStyle(fontSize: 13),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 10.0),
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                        height: 250,
                        width: double.infinity,
                        color: Colors.white54,
                        child: Image.asset(
                          'assets/images/mapplaceholder.jfif',
                          height: 250.0,
                          //width: 105.0,
                          fit: BoxFit.cover,
                        )),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(children: [
                          Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 25.0),
                              child: Icon(Icons.location_on,
                                  color: Color.fromRGBO(88,133,96, 1)),
                            ),
                            Dash(
                                direction: Axis.vertical,
                                length: 25,
                                dashLength: 5,
                                dashColor: Colors.grey),
                            Icon(Icons.location_on,
                                color: Color.fromRGBO(255, 191, 27, 1)),
                          ]),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "7.50 am",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                "Elgon Court, Ralphe Bunche Road, Nairobi",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                "10.50 am",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                "Panorama Park Hotel, Naivasha",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ]),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: GridView.builder(
                          itemCount: values.length,
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 10.0 / 10.0,
                            crossAxisCount: 2,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                                padding: const EdgeInsets.all(5),
                                child: InkWell(
                                  onTap: () {
                                    print("Trip details card");
                                  },
                                  child: Card(
                                      semanticContainer: true,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  icons[index],
                                                  height: 85.0,
                                                  //width: 105.0,
                                                  fit: BoxFit.cover,
                                                ),
                                                SizedBox(height: 5.0),
                                                Text(
                                                  values[index],
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(height: 5.0),
                                                Text(
                                                  titles[index],
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )),
                                ));
                          },
                        ),
                      ),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
