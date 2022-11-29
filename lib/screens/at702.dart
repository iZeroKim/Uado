import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class At702Page extends StatelessWidget {
  At702Page({super.key});

  List<String> _dynamicChips = ['Wheel alignment', 'Mechanic', 'Spare parts'];
  double _rating = 4;

  @override
  Widget build(BuildContext context) {
    double bg_bottom = 550;
    double avatar_top = MediaQuery.of(context).size.height * 0.17;
    double avatar_left = MediaQuery.of(context).size.width * 0.4;
    double card_top = MediaQuery.of(context).size.height * 0.23;


    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.star_border_outlined,
                color: Colors.white,
                size: 30,
              ),
              padding: const EdgeInsets.only(right: 15.0),
              tooltip: 'Rate',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.share_outlined,
                color: Colors.white,
                size: 30,
              ),
              padding: const EdgeInsets.only(right: 15.0),
              tooltip: 'Share',
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                height: 1000,
              ),
              Positioned.fill(
                top: 0,
                left: 0,
                bottom: bg_bottom,

                child: const Image(
                  image: AssetImage("assets/images/mechanic.png"),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: card_top,
                left: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 60,
                              ),
                              const Center(
                                  child: Text(
                                    "Ketan Car Point",
                                    style:
                                    TextStyle(color: Colors.black, fontSize: 18),
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Location",
                                      style: TextStyle(
                                          color: Color.fromRGBO(78, 199, 50, 1)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: const [
                                          Expanded(
                                              child: Text(
                                                "123 alex street, nr.alkapuri block, \n CA-230329",
                                                style: TextStyle(color: Colors.grey),
                                              )),
                                          Icon(
                                            Icons.file_upload_rounded,
                                            color: Color.fromRGBO(78, 199, 50, 1),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    const Text(
                                      "Operation Time",
                                      style: TextStyle(
                                          color: Color.fromRGBO(78, 199, 50, 1)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: const [
                                          Expanded(
                                              child: Text(
                                                "09:00 am - 05:00 pm",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              )),
                                          Text(
                                            "Open",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    78, 199, 50, 1)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
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
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Tags",
                                      style: TextStyle(
                                          color: Color.fromRGBO(78, 199, 50, 1)),
                                    ),
                                    const SizedBox(
                                      height: 15.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Wrap(
                                        spacing: 6.0,
                                        runSpacing: 6.0,
                                        children: List<Widget>.generate(
                                            _dynamicChips.length, (int index) {
                                          return Chip(
                                            label: Text(_dynamicChips[index]),
                                          );
                                        }),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
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
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Connect with us on",
                                      style: TextStyle(
                                          color: Color.fromRGBO(78, 199, 50, 1)),
                                    ),
                                    const SizedBox(
                                      height: 15.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        GFIconButton(
                                          onPressed: (){},
                                          icon: Icon(Icons.facebook_outlined),
                                          shape: GFIconButtonShape.circle,
                                        ),
                                        GFIconButton(
                                          onPressed: (){},
                                          icon: Icon(Icons.whatsapp),
                                          shape: GFIconButtonShape.circle,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 20.0)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        elevation: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 5,
                              width: double.infinity,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(0.0),
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
                                        SizedBox(width: 20,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            //Rating
                                            Row(
                                              children: [
                                                GFRating(
                                                  color: Color.fromRGBO(255,191,27,1),
                                                  borderColor: Color.fromRGBO(255,191,27,1),
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
                                            SizedBox(height: 5.0,),
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
                                    child: Row(
                                      children: const [
                                        Text(
                                          "3.5/5",
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 24),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: avatar_top,
                left: avatar_left,
                child: const SizedBox(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(78, 199, 50, 1),
                    child: Text(
                      "K",
                      style: TextStyle(fontSize: 72, color: Colors.white),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),);
  }
}
