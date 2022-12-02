import 'package:flutter/material.dart';

class ServiceDetails extends StatefulWidget {
  const ServiceDetails({Key? key}) : super(key: key);

  @override
  State<ServiceDetails> createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(78, 199, 50, 1),
        elevation: 1.0,
        title: const Text("Service Details"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Mercedes C200",
                            style: TextStyle(
                                color: Colors.black, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Date :",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    "Cost :",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    "Serviced by :",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 70,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "29, Nov 2022",
                                      style: TextStyle(
                                          fontSize: 15),
                                    ),
                                    Text("Ksh 7000",
                                        style: TextStyle( fontSize: 15)),
                                    Text("Mechanic Elion",
                                        style: TextStyle( fontSize: 18)),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),

                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Card(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "SERVICE PROVIDED",
                            style:
                            TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),


                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Engine Checkup",
                                style: TextStyle(color: Colors.black),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "Ksh 4500",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  )
                                ],
                              ),
                            ],
                          ),
                          const Divider(
                            height: 20,
                            thickness: 0.5,
                            indent: 0,
                            endIndent: 0,
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Oil Change",
                                style: TextStyle(color: Colors.black),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "Ksh 1500",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  )
                                ],
                              ),
                            ],
                          ),
                          const Divider(
                            height: 20,
                            thickness: 0.5,
                            indent: 0,
                            endIndent: 0,
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Changed AC Filter",
                                style: TextStyle(color: Colors.black),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "Ksh 1000",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "TOTAL PAID : ",
                                style: TextStyle(color:  Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "Ksh 7000",
                                    style: TextStyle(color: Color.fromRGBO(78, 199, 50, 1), fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            ],
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
