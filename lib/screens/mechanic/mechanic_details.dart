import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:uado/screens/mechanic/mechanic_review.dart';
import 'package:url_launcher/url_launcher.dart';

class MechanicDetails extends StatelessWidget {
  MechanicDetails({super.key});


  double _rating = 4;

  _callMechanic() async {
    var url = Uri.parse("tel:+254701609514");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(24,158,138,1),
        elevation: 1.0,
        title: const Text("Mechanic Elion"),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10.0,
        color: Colors.white,
        child: SizedBox(
            height: 55.0,
            width: double.infinity,
            //Wrap with inkwell and navigate to next

            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AddMechanicReview()));
              },
              child: Center(
                  child: Text("Write Review",
                      style: TextStyle(
                          color: Color.fromRGBO(24,158,138,1),
                          fontSize: 18))),
            )),
      ),
      body: ListView(
        children:[ Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  //Row
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top:30, right: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on, size: 18,color: Colors.grey,),
                            SizedBox(width: 5.0,),
                            Text("123 Abc place", style: TextStyle(color: Colors.grey, fontSize: 16),),
                          ],
                        ),
                        CircleAvatar(
                          minRadius: 55,
                          backgroundImage: AssetImage("assets/images/avatar.jpg"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Last Charge", style: TextStyle(color: Colors.grey, fontSize: 13)),
                            Text("Ksh 3500", style: TextStyle(color: Colors.black, fontSize: 16)),
                          ],)
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(20),
                    child: Container(
                      width: double.infinity,
                      child:InkWell(
                        onTap: () {
                          print("Calling mechanic");
                          _callMechanic();
                        },
                        child:  Card(
                          color: Colors.white,
                          shape: StadiumBorder(
                            side: BorderSide(
                              color: Color.fromRGBO(24,158,138,1),
                            ),
                          ),
                           child: Center(
                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Icon(
                                     Icons.call,
                                     color: Color.fromRGBO(24,158,138,1), size: 28,
                                   ),
                                   SizedBox(width: 10),
                                   Text(
                                     "Call",
                                     style: TextStyle(
                                         color: Color.fromRGBO(24,158,138,1),
                                       fontSize: 18
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                        ),
                      ),
                    ),
                  )
                  //Row

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: Text("Review and Rating", style: TextStyle(color: Colors.black, fontSize: 18),),
            ),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Text(
                          "3.5/5",
                          style: TextStyle(
                              color: Colors.black, fontSize: 24),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            //Rating
                            Row(
                              children: [
                                GFRating(
                                  color: Color.fromRGBO(
                                      255, 191, 27, 1),
                                  borderColor: Color.fromRGBO(
                                      255, 191, 27, 1),
                                  size: 20,
                                  value: _rating,
                                  onChanged: (value) {
                                    // setState(() {
                                    //   _rating = value;
                                    // });
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            //Rating and review row
                            Row(
                              children: const [
                                Text("21 Rating"),
                                Text(" , "),
                                Text("3 Reviews")
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          width: double.infinity,
                          height: 0.3,
                          decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 1.0, color: Colors.grey),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Super Cool",
                              style: TextStyle(fontSize: 16),
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                GFRating(
                                  color:
                                  Color.fromRGBO(255, 191, 27, 1),
                                  borderColor:
                                  Color.fromRGBO(255, 191, 27, 1),
                                  size: 20,
                                  value: 3.0,
                                  onChanged: (value) {},
                                ),
                                Text("Nov 30, 2022"),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("By John Doe"),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "100% Payment Protection, 7 days easy return in case item is defective or damaged or different from what was described.")
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          width: double.infinity,
                          height: 0.3,
                          decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 1.0, color: Colors.grey),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Super Cool",
                              style: TextStyle(fontSize: 16),
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                GFRating(
                                  color:
                                  Color.fromRGBO(255, 191, 27, 1),
                                  borderColor:
                                  Color.fromRGBO(255, 191, 27, 1),
                                  size: 20,
                                  value: 3.0,
                                  onChanged: (value) {},
                                ),
                                Text("Nov 30, 2022"),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("By John Doe"),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "100% Payment Protection, 7 days easy return in case item is defective or damaged or different from what was described.")
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          width: double.infinity,
                          height: 0.3,
                          decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 1.0, color: Colors.grey),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Super Cool",
                              style: TextStyle(fontSize: 16),
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                GFRating(
                                  color:
                                  Color.fromRGBO(255, 191, 27, 1),
                                  borderColor:
                                  Color.fromRGBO(255, 191, 27, 1),
                                  size: 20,
                                  value: 3.0,
                                  onChanged: (value) {},
                                ),
                                Text("Nov 30, 2022"),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("By John Doe"),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "100% Payment Protection, 7 days easy return in case item is defective or damaged or different from what was described.")
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )],
      ),
    );
  }
}
