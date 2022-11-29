import 'package:flutter/material.dart';
import '../models/AppService.dart';
import '../screens/mechanics_list.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {






  @override
  Widget build(BuildContext context) {
    AppService garages = AppService(name: "Garages", imagePath: "assets/images/avatar", link: MechanicsListPage());
    AppService records = AppService(name: "Service records", imagePath: "assets/images/avatar");
    AppService chat = AppService(name: "Chat", imagePath: "assets/images/avatar");
    AppService insurance = AppService(name: "Insurance", imagePath: "assets/images/avatar");
    AppService parts = AppService(name: "Buy part", imagePath: "assets/images/avatar");
    AppService clubs = AppService(name: "Join car club", imagePath: "assets/images/avatar");
    AppService buy = AppService(name: "Buy/Sell car", imagePath: "assets/images/avatar");
    List<AppService> services = [garages, records, chat, insurance, parts, clubs, buy];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        foregroundColor: Colors.black,
        title: const Text("Hello Kim"),
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
                        fontSize: 38),
                  ),
                  const SizedBox(height: 15.0),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: const Color.fromRGBO(246,248,250,1),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const ListTile(
                            title: Text('Specifications',
                                style: TextStyle(
                                    fontSize: 18.0, fontWeight: FontWeight.bold)),
                            subtitle: Text(
                              '2010 Model \nRecently services',
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              SizedBox(
                                  height:50,width: 50,
                                  child:ElevatedButton(
                                    onPressed: (){},
                                    child: const Icon(Icons.navigate_next, color: Colors.white,),
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50),
                                          //border radius equal to or more than 50% of width
                                        )
                                    ),
                                  )
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0,),
                  const Text(
                    " Choose the service you require",
                    style: TextStyle(
                        color: Colors.black,fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),

                    GridView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 8.0 / 10.0,
                        crossAxisCount: 3,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                            padding: const EdgeInsets.all(5),
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
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/mechanic.png'),
                                                fit: BoxFit.fill),
                                          ),
                                        )),
                                    const Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text(
                                          "Garages",
                                          style: TextStyle(fontSize: 18.0),
                                        )),
                                  ],
                                )));
                      },
                    ),
                  const SizedBox(height: 50,)

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
