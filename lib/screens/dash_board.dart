import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:uado/auth/login_initial_page.dart';
import 'package:uado/screens/clubs/club_list.dart';
import 'package:uado/screens/garage/garage_list.dart';
import 'package:uado/screens/parts/parts_list.dart';
import 'package:uado/screens/profile/car_list.dart';
import 'package:uado/screens/profile/profile.dart';
import 'package:uado/screens/services/services.dart';
import 'package:uado/screens/settings/Settings.dart';

import '../models/AppService.dart';
import '../models/navigation/MenuItem.dart' as App;
import '../screens/trip/trips.dart';
import 'mechanic/mechanic_list.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  App.MenuItem currentItem = MenuItems.home;

  @override
  Widget build(BuildContext context) {
    Widget getScreen(){
      Widget screen = const DashBoardInfo();
      switch(currentItem){
        case MenuItems.buyparts:
          return const PartsList();
        case MenuItems.profile:
          return const Profile();
        case MenuItems.cars:
          return const CarList();
        case MenuItems.settings:
          return const Settings();
      }
      return screen;
    }
    return ZoomDrawer(
      mainScreen: getScreen(),
      menuScreen: Builder(
        builder: (context) {
          return MenuPage(
            currentItem: currentItem,
            onSelectedItem: (item) {
              setState(() => currentItem = item);

              ZoomDrawer.of(context)!.close();
            },

          );
        }
      ),
      borderRadius: 24.0,
      showShadow: true,
      androidCloseOnBackTap: true,
      menuBackgroundColor: const Color.fromRGBO(88, 133, 96, 0.9),
      angle: 0.0,
      slideWidth: MediaQuery.of(context).size.width * .64,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
    );


  }
}

class MenuItems {
  static const home = App.MenuItem("Home", Icons.home);
  static const buyparts = App.MenuItem("Buy parts", Icons.add_shopping_cart_rounded);
  static const cars = App.MenuItem("My cars", Icons.car_repair_outlined);
  static const profile = App.MenuItem("Profile", Icons.account_box_rounded);
  static const settings = App.MenuItem("Settings", Icons.settings);

  static const all = <App.MenuItem>[home,buyparts, cars ,profile, settings];
}

class MenuPage extends StatelessWidget {
  final App.MenuItem currentItem;
  final ValueChanged<App.MenuItem> onSelectedItem;

  const MenuPage(
      {Key? key, required this.currentItem, required this.onSelectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(88, 133, 96, 0.0),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 80, bottom: 10, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 55,

                    backgroundImage:
                    AssetImage("assets/images/avatar.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi, ${FirebaseAuth.instance.currentUser?.displayName}",
                            style: TextStyle(
                                color: Colors.white, fontSize: 16)),
                        Text(FirebaseAuth.instance.currentUser!.email!,
                            style: TextStyle(
                                color: Colors.white, fontSize: 16)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: MenuItems.all.length,
                    itemBuilder: (context, index) {
                      var item = MenuItems.all[index];
                      return ListTile(
                        selected: currentItem == item,
                        selectedTileColor: Colors.black26,
                        selectedColor: Colors.white,
                        minLeadingWidth: 30,
                        leading: Icon(
                          item.icon,
                          color: Colors.white,
                        ),
                        title: Text(
                          item.title,
                          style: const TextStyle(color: Colors.white),
                        ),
                        onTap: () => onSelectedItem(item),
                      );
                    })),
            const SizedBox(height: 30.0,),
            InkWell(
              onTap: (){
                print("Logout");
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Expanded(
                      child: AlertDialog(
                        title: const Text('My Car App'),
                        content: const Text('Logout from app?'),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('NO'),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white, backgroundColor: Colors.green.withOpacity(.7), // foreground
                              )

                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const InitialLoginPage()), (Route<dynamic> route) => false);
                              },
                              child: const Text('YES'),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white, backgroundColor: Colors.red.withOpacity(.7), // foreground
                              )

                          ),
                        ],
                      ),
                    );
                  },
                );


              },
              child: Padding(
                padding: const EdgeInsets.only(bottom:70.0, left:10.0),
                child: Card(
                  color: const Color.fromRGBO(222, 216, 154, 1),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.logout,
                            color: Color.fromRGBO(88,133,96, 1),
                            size: 28,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Logout",
                            style: TextStyle(
                                color: Color.fromRGBO(88,133,96, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DashBoardInfo extends StatefulWidget {
  const DashBoardInfo({Key? key}) : super(key: key);
 @override
  State<DashBoardInfo> createState() => _DashBoardInfoState();
}

class _DashBoardInfoState extends State<DashBoardInfo> {
  @override
  Widget build(BuildContext context) {
    AppService garages = AppService(
        name: "Garages",
        imagePath: "assets/images/garage.jpg",
        link: const GarageList());
    AppService records = AppService(
        name: "Service records",
        imagePath: "assets/images/repairs.jpg",
        link: const Services());
    AppService freelancers = AppService(
        name: "Freelance Mechanics",
        imagePath: "assets/images/onemechanic.jfif",
        link: const MechanicList());
    AppService chat =
        AppService(name: "Chat", imagePath: "assets/images/mechanic.png");
    AppService trips = AppService(
        name: "Trips", imagePath: "assets/images/trip.jpg", link: const Trips());
    AppService insurance =
        AppService(name: "Insurance", imagePath: "assets/images/car.jpg");
    AppService parts = AppService(
        name: "Buy part",
        imagePath: "assets/images/mechanic.png",
        link: const PartsList());
    AppService clubs = AppService(
        name: "Join car club",
        imagePath: "assets/images/clubs.png",
        link: const ClubList());
    AppService buy = AppService(
        name: "Buy/Sell car", imagePath: "assets/images/mechanic.png");

    List<AppService> services = [
      garages,
      records,
      trips,
      freelancers,
      clubs,
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Hello ${FirebaseAuth.instance.currentUser?.displayName}"),
        backgroundColor: const Color.fromRGBO(88, 133, 96, 1),
        elevation: 1.0,
        leading: IconButton(
            onPressed: () => ZoomDrawer.of(context)!.toggle(),
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            )),
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
                    physics: const ScrollPhysics(),
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
                                        padding: const EdgeInsets.all(10.0),
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

  _DashBoardInfoState();
}
