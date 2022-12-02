import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'garage_review.dart';
import 'garage_mechanics.dart';

class MechanicDetails extends StatelessWidget {
  MechanicDetails({super.key});


  double _rating = 4;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
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
                    MaterialPageRoute(builder: (context) => AddGarageReview()));
              },
              child: Center(
                  child: Text("Write Review",
                      style: TextStyle(
                          color: Color.fromRGBO(78, 199, 50, 1),
                          fontSize: 18))),
            )),
      ),
      body: ListView(
        children:[ Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
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
