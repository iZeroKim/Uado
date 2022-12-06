import 'package:flutter/material.dart';
import 'package:uado/screens/clubs/club_list.dart';
import 'package:uado/screens/garage/garage_list.dart';
import 'package:uado/screens/services/services.dart';

import '../models/AppService.dart';
import '../screens/trip/trips.dart';
import 'mechanic/mechanic_list.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    AppService garages = AppService(
        name: "Garages",
        imagePath: "assets/images/garage.jpg",
        link: GarageList());
    AppService records = AppService(
        name: "Service records",
        imagePath: "assets/images/repairs.jpg",
        link: Services());
    AppService freelancers = AppService(
        name: "Freelance Mechanics",
        imagePath: "assets/images/onemechanic.jfif",
        link: MechanicList());
    AppService chat =
        AppService(name: "Chat", imagePath: "assets/images/mechanic.png");
    AppService trips = AppService(
        name: "Trips", imagePath: "assets/images/trip.jpg", link: Trips());
    AppService insurance =
        AppService(name: "Insurance", imagePath: "assets/images/car.jpg");
    AppService parts =
        AppService(name: "Buy part", imagePath: "assets/images/mechanic.png");
    AppService clubs = AppService(
        name: "Join car club", imagePath: "assets/images/clubs.png", link: ClubList());
    AppService buy = AppService(

        name: "Buy/Sell car", imagePath: "assets/images/mechanic.png");

    List<AppService> services = [garages, records, trips, freelancers, clubs];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Hello Kim"),
        backgroundColor: const Color.fromRGBO(24, 158, 138, 1),
        elevation: 1.0,
      ),
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Card(
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15.0),
                  //   ),
                  //   color: const Color.fromRGBO(254, 225, 132, 1),
                  //   elevation: 2,
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(
                  //         top: 20.0, bottom: 20.0, right: 10.0),
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         const SizedBox(height: 10.0),
                  //         Padding(
                  //           padding:
                  //               const EdgeInsets.symmetric(horizontal: 20.0),
                  //           child: const Text(
                  //             " Mercedes C200",
                  //             style: TextStyle(
                  //                 color: Colors.black,
                  //                 fontWeight: FontWeight.bold,
                  //                 fontSize: 25),
                  //           ),
                  //         ),
                  //         const SizedBox(height: 15.0),
                  //         Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //           children: [
                  //             Column(
                  //               children: [
                  //                 Text('Specifications',
                  //                     style: TextStyle(
                  //                         color: Colors.black,
                  //                         fontSize: 20.0,
                  //                         fontWeight: FontWeight.bold)),
                  //                 Padding(
                  //                   padding: const EdgeInsets.symmetric(
                  //                       horizontal: 20.0),
                  //                   child: Text(
                  //                     '   2010 Model \n   Recently services',
                  //                     style: TextStyle(
                  //                         color: Colors.black, fontSize: 18),
                  //                   ),
                  //                 )
                  //               ],
                  //             ),
                  //             SizedBox(
                  //               height: 80,
                  //               width: 80,
                  //               child: Image(
                  //                 image: AssetImage("assets/images/logo.png"),
                  //                 fit: BoxFit.fill,
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    " Choose the service you require",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  GridView.builder(
                    itemCount: services.length,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 10.0 / 10.0,
                      crossAxisCount: 2,
                    ),
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                        child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage(service.imagePath),
                                            fit: BoxFit.fill),
                                      ),
                                    )),
                                    Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text(
                                          service.name,
                                        )),
                                  ],
                                )),
                          ));
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _DashBoardState();
}
