import 'package:flutter/material.dart';

import '../models/AppService.dart';
import '../screens/garage_list.dart';
import '../screens/services.dart';
import '../screens/trips.dart';

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
    AppService chat =
        AppService(name: "Chat", imagePath: "assets/images/mechanic.png");
    AppService trips = AppService(
        name: "Trips", imagePath: "assets/images/trip.jpg", link: Trips());
    AppService insurance =
        AppService(name: "Insurance", imagePath: "assets/images/car.jpg");
    AppService parts =
        AppService(name: "Buy part", imagePath: "assets/images/mechanic.png");
    AppService clubs = AppService(
        name: "Join car club", imagePath: "assets/images/mechanic.png");
    AppService buy = AppService(
        name: "Buy/Sell car", imagePath: "assets/images/mechanic.png");

    List<AppService> services = [garages, records, trips];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Hello Kim"),
        backgroundColor: const Color.fromRGBO(78, 199, 50, 1),
        elevation: 1.0,
      ),
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50.0),
                  const Text(
                    " Mercedes C200",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 34),
                  ),
                  const SizedBox(height: 15.0),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: const Color.fromRGBO(78, 199, 50, 1),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, bottom: 20.0, right: 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const ListTile(
                            title: Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text('Specifications',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                            ),
                            subtitle: Text(
                              '2010 Model \nRecently services',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              SizedBox(
                                  width: 60,
                                  child: Center(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: const Icon(
                                        Icons.navigate_next,
                                        color: Color.fromRGBO(78, 199, 50, 1),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            //border radius equal to or more than 50% of width
                                          ),
                                          backgroundColor: Colors.white),
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
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
