import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:uado/screens/clubs/club_list.dart';
import 'package:uado/screens/garage/garage_list.dart';
import 'package:uado/screens/services/services.dart';

import '../models/AppService.dart';
import '../screens/trip/trips.dart';
import 'mechanic/mechanic_list.dart';

class DashboardAlt extends StatefulWidget {
  const DashboardAlt({Key? key}) : super(key: key);

  @override
  State<DashboardAlt> createState() => _DashboardAltState();
}

class _DashboardAltState extends State<DashboardAlt> {

  @override
  Widget build(BuildContext context) {
    AppService garages = AppService(
        name: "Garages",
        imagePath: "assets/images/garage.jpg",
        link: const GarageList());
    AppService records = AppService(
        name: "Services",
        imagePath: "assets/images/repairs.jpg",
        link: const Services());
    AppService freelancers = AppService(
        name: "Freelancers",
        imagePath: "assets/images/onemechanic.jfif",
        link: const MechanicList());
    AppService chat =
    AppService(name: "Chat", imagePath: "assets/images/mechanic.png");
    AppService trips = AppService(
        name: "Trips", imagePath: "assets/images/trip.jpg", link: const Trips());
    AppService insurance =
    AppService(name: "Insurance", imagePath: "assets/images/car.jpg");
    AppService parts =
    AppService(name: "Buy part", imagePath: "assets/images/mechanic.png");
    AppService clubs = AppService(
        name: "Clubs", imagePath: "assets/images/clubs.png", link: const ClubList());
    AppService buy = AppService(

        name: "Buy/Sell car", imagePath: "assets/images/mechanic.png");

    List<AppService> services = [garages, records, trips, freelancers, clubs];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Dashboard", style: TextStyle(color: Colors.black),),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.logout,
              color: Colors.black,
              size: 30,
            ),
            padding: const EdgeInsets.only(right: 15.0),
            tooltip: 'Logout',
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children:[ Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: const Color.fromRGBO(128, 0, 15, 1),
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, bottom: 20.0, right: 10.0, left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('Primary Car :',
                                          style: TextStyle(
                                              color: Color.fromRGBO(254, 225, 132, 1),
                                            fontWeight: FontWeight.bold,
                                              fontSize: 16.0,)),
                                      Padding(
                                        padding: EdgeInsets.only( top:3.0, bottom: 10.0),
                                        child: Text(
                                          'Mercedes W205',
                                          style: TextStyle(
                                              color: Color.fromRGBO(254, 225, 132, 1), fontSize: 36,fontWeight: FontWeight.bold),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                // const SizedBox(
                                //   height: 50,
                                //   width: 50,
                                //   child: Image(
                                //     image: AssetImage("assets/images/logo.png"),
                                //     fit: BoxFit.fill,
                                //   ),
                                // ),
                              ],
                            ),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //   children: [
                            //     Padding(
                            //       padding: const EdgeInsets.only(left: 10.0),
                            //       child: Text('Last Service : ',
                            //           style: TextStyle(
                            //             color: Color.fromRGBO(254, 225, 132, 1),
                            //             fontSize: 18.0,
                            //           fontWeight: FontWeight.bold)),
                            //     ),
                            //     Text('04/12/2022',
                            //         style: TextStyle(
                            //           color: Color.fromRGBO(254, 225, 132, 1),
                            //           fontSize: 18.0,
                            //             fontWeight: FontWeight.bold)),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20.0, left: 20),
                      child: Text("Shortcuts", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  height: 100,
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: services.length,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        var service = services[index];
                        return Padding(
                            padding: const EdgeInsets.all(5),
                            child: InkWell(
                              onTap: () {
                                service.link != null
                                    ? Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => service.link!))
                                    : print("Null");
                              },
                              child: Card(
                                semanticContainer: true,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  width: 90,
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        const Icon(Icons.ac_unit_sharp, color: Color.fromRGBO(128, 0, 15, 1), size: 32,),
                                        Text(
                                          service.name,
                                        ),
                                      ],
                                    ),
                                ),
                              ),
                            ));
                      },
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 20.0, left: 20, bottom: 10.0),
                      child: Text("Latest Transactions", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              height: 45,
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const CircleAvatar(
                                        minRadius: 30,
                                        backgroundImage: AssetImage(
                                            "assets/images/avatar.jpg"),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      //Name, location and rating
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          const Text( "Oil Change",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18)),
                                          const SizedBox(
                                            height: 2,
                                            width: 100,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Elion Mechanic",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.end,
                                    children: [
                                      const Icon(Icons.navigate_next_outlined, color: Colors.grey, size: 18),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 0.5,
                          indent: 0,
                          endIndent: 0,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 80,
                            child: const GFListTile(
                                avatar: CircleAvatar(
                                  minRadius: 40,
                                  backgroundImage: AssetImage("assets/images/avatar.jpg"),
                                ),
                                titleText: 'Oil change',
                                subTitleText: 'John Doe'),
                          ),
                        ),
                        const Divider(
                          thickness: 0.5,
                          indent: 0,
                          endIndent: 0,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 80,
                            child: const GFListTile(
                                avatar: CircleAvatar(
                                  minRadius: 40,
                                  backgroundImage: AssetImage("assets/images/avatar.jpg"),
                                ),
                                titleText: 'Oil change',
                                subTitleText: 'John Doe'),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              )



            ],

          )],
        ),
      ),
    );
  }
}
