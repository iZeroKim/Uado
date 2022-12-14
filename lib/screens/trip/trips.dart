import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uado/providers/trips_provider.dart';
import 'package:uado/screens/trip/trip_details.dart';

class Trips extends StatefulWidget {
  const Trips({Key? key}) : super(key: key);

  @override
  State<Trips> createState() => _TripsState();


}

class _TripsState extends State<Trips> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<TripProvider>(context, listen: false).getAllDayTrips();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(88,133,96, 1),
        elevation: 1.0,
        title: const Text("Trips"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add_circle_outline_rounded,
              color: Colors.white,
              size: 30,
            ),
            padding: const EdgeInsets.only(right: 15.0),
            tooltip: 'Add Trip',
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 10.0),
            child: Column(
              children: [
            Consumer<TripProvider>(builder: (context, value, child){
              if (value.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: value.dayTrips.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 20.0,
                                top: 20.0,
                                right: 10.0,
                                bottom: 10.0),
                            child: Text(
                              "22, November 2022",
                              style:
                              TextStyle(color: Colors.grey, fontSize: 16),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                            height: 130,
                            width: double.infinity,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: value.dayTrips[index].trips.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Card(
                                    child: InkWell(
                                      onTap: () {
                                        print("View trip");
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                const TripDetails()));
                                      },
                                      child: Container(
                                        width: 320,
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 20.0,
                                              horizontal: 20.0),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                children: const [
                                                  Text(
                                                    "Nairobi",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                  SizedBox(width: 10.0),
                                                  Text(
                                                    "to",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                  SizedBox(width: 10.0),
                                                  Text(
                                                    "Nakuru",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 16),
                                                  )
                                                ],
                                              ),
                                              const SizedBox(height: 10.0),
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      const Icon(
                                                        Icons
                                                            .directions_car_sharp,
                                                        size: 32,
                                                        color: Color.fromRGBO(
                                                            255, 191, 27, 1),
                                                      ),
                                                      const SizedBox(
                                                          width: 5.0),
                                                      Column(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: const [
                                                          Text(
                                                            "Distance",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                          SizedBox(
                                                              height: 10.0),
                                                          Text(
                                                            "100 km",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 16,
                                                                fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.timer_outlined,
                                                        size: 32,
                                                        color: Color.fromRGBO(
                                                            24, 158, 138, 1),
                                                      ),
                                                      const SizedBox(
                                                          width: 5.0),
                                                      Column(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: const [
                                                          Text(
                                                            "Duration",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                          SizedBox(
                                                              height: 10.0),
                                                          Text(
                                                            "100 min",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 16,
                                                                fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                          )
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
              );
            })
              ],
            )),
      ),
    );
  }
}
