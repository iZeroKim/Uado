import 'package:flutter/material.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({Key? key}) : super(key: key);

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  var _rating = 4.0;
  _CarDetailsState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Car Details"),
          backgroundColor: const Color.fromRGBO(88, 133, 96, 1),
          elevation: 1.0,
        ),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/gti.jfif"), fit: BoxFit.fill),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        color: const Color.fromRGBO(88,133,96, 1),
                        shape: const StadiumBorder(),
                        child: Container(
                          width: 10.0,
                          height: 10.0,
                          child: const Center(
                            child: Center(),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        shape: const StadiumBorder(),
                        child: Container(
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromRGBO(88,133,96, 1),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Center(),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        shape: const StadiumBorder(),
                        child: Container(
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromRGBO(88,133,96, 1),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Center(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 5,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.grey,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "VW GTI",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Ksh. 3500000",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(88,133,96, 1),
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Kilimani",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,),
                          maxLines: 2,
                        ),
                        Text(
                          "1 day",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,),
                          maxLines: 1,
                        ),
                      ],
                    )),
                const Divider(
                  height: 10,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.grey,
                ),
                Padding(
                    padding: const EdgeInsets.only(left:20, right:20, top: 5, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Fuel Type", style : TextStyle(color: Colors.grey)),
                              SizedBox(height:5.0),
                              Text("Petrol", style : TextStyle(color: Colors.black)),

                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Mileage", style : TextStyle(color: Colors.grey)),
                              SizedBox(height:5.0),
                              Text("25000 km", style : TextStyle(color: Colors.black)),

                            ],
                          ),
                        ),
                        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Colour", style : TextStyle(color: Colors.grey)),
                            SizedBox(height:5.0),
                            Text("White", style : TextStyle(color: Colors.black)),

                          ],
                        ),
                        
                      ],
                    )),
                Container(
                  color: const Color.fromRGBO(246, 248, 250, 1),
                  width: double.infinity,
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Padding(
                      padding: const EdgeInsets.only(top:20, left:20, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  const [
                          Text(
                            "CAR DETAILS",
                            style: TextStyle(color: Color.fromRGBO(88,133,96, 1), fontSize: 18),
                          ),
                        ],
                      )
                  ),
                ),
                Container(
                  color: const Color.fromRGBO(246, 248, 250, 1),
                  width: double.infinity,
                  child: Padding(
                      padding: const EdgeInsets.only(top:15, left:15, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  const [
                          Text(
                            "DESIGN & DIMENSIONS",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      )
                  ),
                ),
                // Container(
                //   width: double.infinity,
                //   child: Padding(
                //     padding: const EdgeInsets.all(20.0),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.start,
                //            children: [
                //              Card(
                //                color: const Color.fromRGBO(88,133,96, 1),
                //                shape: const StadiumBorder(),
                //                child: Container(
                //                  width: 10.0,
                //                  height: 10.0,
                //                  child: const Center(
                //                    child: Center(),
                //                  ),
                //                ),
                //              ),
                //              const SizedBox(width: 10,),
                //              const Text("Sold By : "),
                //              const Text("Kim", style: TextStyle(fontWeight: FontWeight.bold))
                //            ],
                //         ),
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.start,
                //           children: [
                //             Card(
                //               color: const Color.fromRGBO(88,133,96, 1),
                //               shape: const StadiumBorder(),
                //               child: Container(
                //                 width: 10.0,
                //                 height: 10.0,
                //                 child: const Center(
                //                   child: Center(),
                //                 ),
                //               ),
                //             ),
                //             const SizedBox(width: 10,),
                //             const Text("Delivery Charge : "),
                //             const Text("+ KSh 200", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(88,133,96, 1))),
                //             const Text(" (within 5 days)"),
                //           ],
                //         ),
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.start,
                //           children: [
                //             Card(
                //               color: const Color.fromRGBO(88,133,96, 1),
                //               shape: const StadiumBorder(),
                //               child: Container(
                //                 width: 10.0,
                //                 height: 10.0,
                //                 child: const Center(
                //                   child: Center(),
                //                 ),
                //               ),
                //             ),
                //             const SizedBox(width: 10,),
                //             const Text("10 Days Replacement"),
                //             ],
                //         )
                //       ],
                //     ),
                //   ),
                // ),
                // Container(
                //   color: const Color.fromRGBO(246, 248, 250, 1),
                //   height: 10.0,
                //   width: double.infinity,
                // ),
                //
                // Container(
                //   width: double.infinity,
                //   child: Padding(
                //     padding: const EdgeInsets.all(20.0),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.start,
                //           children: const [
                //             Text(
                //               "Item Details",
                //               style: TextStyle(
                //                   color: Colors.black,
                //                   fontSize: 18,
                //                   fontWeight: FontWeight.bold),
                //             )
                //           ],
                //         ),
                //         const SizedBox(height: 10.0),
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.start,
                //           children: [
                //             Column(
                //               children: const [
                //                 Text("Width", style : TextStyle(color: Colors.grey))
                //               ],
                //             ),
                //             const SizedBox(width:40.0),
                //             Column(
                //               children: const [
                //                 Text("25 mm", style : TextStyle(color: Colors.black))
                //               ],
                //             ),
                //
                //           ],
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Container(
                //   color: const Color.fromRGBO(246, 248, 250, 1),
                //   height: 10.0,
                //   width: double.infinity,
                // ),
                // const Padding(
                //   padding:
                //       EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
                //   child: Text(
                //     "Review and Rating",
                //     style: TextStyle(
                //         color: Colors.black,
                //         fontSize: 18,
                //         fontWeight: FontWeight.bold),
                //   ),
                // ),
                // Container(
                //   color: Colors.white,
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Padding(
                //         padding: const EdgeInsets.only(
                //             left: 20, top: 10, right: 20, bottom: 20),
                //         child: Row(
                //           children: [
                //             const Text(
                //               "3.5/5",
                //               style:
                //                   TextStyle(color: Colors.black, fontSize: 24),
                //               textAlign: TextAlign.start,
                //             ),
                //             const SizedBox(
                //               width: 20,
                //             ),
                //             Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 //Rating
                //                 Row(
                //                   children: [
                //                     GFRating(
                //                       color:
                //                           const Color.fromRGBO(255, 191, 27, 1),
                //                       borderColor:
                //                           const Color.fromRGBO(255, 191, 27, 1),
                //                       size: 20,
                //                       value: _rating,
                //                       onChanged: (value) {
                //                         // setState(() {
                //                         //   _rating = value;
                //                         // });
                //                       },
                //                     ),
                //                   ],
                //                 ),
                //                 const SizedBox(
                //                   height: 5.0,
                //                 ),
                //                 //Rating and review row
                //                 Row(
                //                   children: const [
                //                     Text("21 Rating"),
                //                     Text(" , "),
                //                     Text("3 Reviews")
                //                   ],
                //                 )
                //               ],
                //             )
                //           ],
                //         ),
                //       ),
                //       Column(
                //         children: [
                //           Padding(
                //             padding: const EdgeInsets.all(0.0),
                //             child: Container(
                //               width: double.infinity,
                //               height: 0.3,
                //               decoration: const BoxDecoration(
                //                   border: Border(
                //                 bottom:
                //                     BorderSide(width: 1.0, color: Colors.grey),
                //               )),
                //             ),
                //           ),
                //           const SizedBox(
                //             height: 15.0,
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.all(18.0),
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 const Text(
                //                   "Super Cool",
                //                   style: TextStyle(fontSize: 16),
                //                 ),
                //                 Row(
                //                   mainAxisAlignment:
                //                       MainAxisAlignment.spaceBetween,
                //                   children: [
                //                     GFRating(
                //                       color:
                //                           const Color.fromRGBO(255, 191, 27, 1),
                //                       borderColor:
                //                           const Color.fromRGBO(255, 191, 27, 1),
                //                       size: 20,
                //                       value: 3.0,
                //                       onChanged: (value) {},
                //                     ),
                //                     const Text("Nov 30, 2022"),
                //                   ],
                //                 ),
                //                 const SizedBox(
                //                   height: 5,
                //                 ),
                //                 const Text("By John Doe"),
                //                 const SizedBox(
                //                   height: 10,
                //                 ),
                //                 const Text(
                //                     "100% Payment Protection, 7 days easy return in case item is defective or damaged or different from what was described.")
                //               ],
                //             ),
                //           ),
                //         ],
                //       ),
                //       Column(
                //         children: [
                //           Padding(
                //             padding: const EdgeInsets.all(0.0),
                //             child: Container(
                //               width: double.infinity,
                //               height: 0.3,
                //               decoration: const BoxDecoration(
                //                   border: Border(
                //                 bottom:
                //                     BorderSide(width: 1.0, color: Colors.grey),
                //               )),
                //             ),
                //           ),
                //           const SizedBox(
                //             height: 15.0,
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.all(18.0),
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 const Text(
                //                   "Super Cool",
                //                   style: TextStyle(fontSize: 16),
                //                 ),
                //                 Row(
                //                   mainAxisAlignment:
                //                       MainAxisAlignment.spaceBetween,
                //                   children: [
                //                     GFRating(
                //                       color:
                //                           const Color.fromRGBO(255, 191, 27, 1),
                //                       borderColor:
                //                           const Color.fromRGBO(255, 191, 27, 1),
                //                       size: 20,
                //                       value: 3.0,
                //                       onChanged: (value) {},
                //                     ),
                //                     const Text("Nov 30, 2022"),
                //                   ],
                //                 ),
                //                 const SizedBox(
                //                   height: 5,
                //                 ),
                //                 const Text("By John Doe"),
                //                 const SizedBox(
                //                   height: 10,
                //                 ),
                //                 const Text(
                //                     "100% Payment Protection, 7 days easy return in case item is defective or damaged or different from what was described.")
                //               ],
                //             ),
                //           ),
                //         ],
                //       ),
                //       Column(
                //         children: [
                //           Padding(
                //             padding: const EdgeInsets.all(0.0),
                //             child: Container(
                //               width: double.infinity,
                //               height: 0.3,
                //               decoration: const BoxDecoration(
                //                   border: Border(
                //                 bottom:
                //                     BorderSide(width: 1.0, color: Colors.grey),
                //               )),
                //             ),
                //           ),
                //           const SizedBox(
                //             height: 15.0,
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.all(18.0),
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 const Text(
                //                   "Super Cool",
                //                   style: TextStyle(fontSize: 16),
                //                 ),
                //                 Row(
                //                   mainAxisAlignment:
                //                       MainAxisAlignment.spaceBetween,
                //                   children: [
                //                     GFRating(
                //                       color:
                //                           const Color.fromRGBO(255, 191, 27, 1),
                //                       borderColor:
                //                           const Color.fromRGBO(255, 191, 27, 1),
                //                       size: 20,
                //                       value: 3.0,
                //                       onChanged: (value) {},
                //                     ),
                //                     const Text("Nov 30, 2022"),
                //                   ],
                //                 ),
                //                 const SizedBox(
                //                   height: 5,
                //                 ),
                //                 const Text("By John Doe"),
                //                 const SizedBox(
                //                   height: 10,
                //                 ),
                //                 const Text(
                //                     "100% Payment Protection, 7 days easy return in case item is defective or damaged or different from what was described.")
                //               ],
                //             ),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
              ],
            )
          ],
        ),
    );
  }
}
