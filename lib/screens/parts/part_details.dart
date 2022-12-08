import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';


class PartDetails extends StatefulWidget {
  const PartDetails({Key? key}) : super(key: key);

  @override
  State<PartDetails> createState() => _PartDetailsState();
}

class _PartDetailsState extends State<PartDetails> {
  var _rating = 4.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0.0,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.star_border_outlined,
                color: Colors.black,
                size: 25,
              ),
              padding: const EdgeInsets.only(right: 5.0),
              tooltip: 'Rate',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.share_outlined,
                color: Colors.black,
                size: 25,
              ),
              padding: const EdgeInsets.only(right: 15.0),
              tooltip: 'Share',
              onPressed: () {},
            ),
          ],
        ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 350,
                width: double.infinity,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image:
                        AssetImage("assets/images/headlight.jfif"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical:10.0),
                child:  Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: const Color.fromRGBO(24, 158, 138, 1),
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
                            color: const Color.fromRGBO(24, 158, 138, 1),
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
                            color: const Color.fromRGBO(24, 158, 138, 1),
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
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Subaru Headlights",
                        style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                        maxLines: 2,
                      ),
                      Text(
                        "Ksh. 3500",
                        style: TextStyle(fontSize: 16, color: Color.fromRGBO(24, 158, 138, 1), fontWeight: FontWeight.bold),
                        maxLines: 1,
                      ),
                    ],
                  )),

              Container(
                color: Color.fromRGBO(246,248,250,1),
                height: 10.0,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right:20, top:20, bottom:0),
                child: Text(
                  "Review and Rating",
                  style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),

              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10,right: 20, bottom:20),
                      child: Row(
                        children: [
                          Text(
                            "3.5/5",
                            style: TextStyle(color: Colors.black, fontSize: 24),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Rating
                              Row(
                                children: [
                                  GFRating(
                                    color: Color.fromRGBO(255, 191, 27, 1),
                                    borderColor:
                                    Color.fromRGBO(255, 191, 27, 1),
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
                                  bottom:
                                  BorderSide(width: 1.0, color: Colors.grey),
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                    color: Color.fromRGBO(255, 191, 27, 1),
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
                                  bottom:
                                  BorderSide(width: 1.0, color: Colors.grey),
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                    color: Color.fromRGBO(255, 191, 27, 1),
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
                                  bottom:
                                  BorderSide(width: 1.0, color: Colors.grey),
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                    color: Color.fromRGBO(255, 191, 27, 1),
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
          )
        ],
      ),
    );
  }
}
