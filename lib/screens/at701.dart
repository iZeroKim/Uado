import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class At701Page extends StatefulWidget {
  const At701Page({Key? key}) : super(key: key);

  @override
  State<At701Page> createState() => _At701PageState();
}

class _At701PageState extends State<At701Page> {
  ImagePicker picker = ImagePicker();
  XFile? image;
  var _image;
  String avatar = 'assets/images/avatar.jpg';
  String? _gender = "Male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(78, 199, 50, 1),
        elevation: 1.0,
        title: const Text("Add Mechanic"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20.0,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(200)),
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      top: 10.0,
                                    ),
                                    height: 140,
                                    width: 140,
                                    child: _image != null
                                        ? Image.file(
                                            _image,
                                          )
                                        : CircleAvatar(
                                            backgroundImage: AssetImage(avatar),
                                          ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    print("Add tapped : START");
                                    image = await picker.pickImage(
                                        source: ImageSource.gallery);
                                    print("Add tapped: MID");
                                    setState(() {
                                      //update UI
                                      _image = File(image!.path);
                                      avatar = image!.path;
                                    });

                                    image == null
                                        ? Container()
                                        : AssetImage('assets/images/car.png');
                                    print("Add tapped: END");
                                  },
                                  child: Card(
                                    color: const Color.fromRGBO(78, 199, 50, 1),
                                    shape: const StadiumBorder(),
                                    child: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: const Center(
                                        child: Center(
                                            child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 20.0,
                        ),

                        //Or text
                        const Text(
                          'USER NAME',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                          textAlign: TextAlign.left,
                        ),
                        // Note: Same code is applied for the TextFormField as well
                        const SizedBox(
                          width: double.infinity,
                          height: 35.0,
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                //<-- SEE HERE
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),

                        //Or text
                        const Text(
                          'EMAIL',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                          textAlign: TextAlign.left,
                        ),
                        // Note: Same code is applied for the TextFormField as well
                        const SizedBox(
                          width: double.infinity,
                          height: 35.0,
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                //<-- SEE HERE
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),

                        //Or text
                        const Text(
                          'MOBILE NUMBER',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                          textAlign: TextAlign.left,
                        ),
                        // Note: Same code is applied for the TextFormField as well
                        const SizedBox(
                          width: double.infinity,
                          height: 35.0,
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                //<-- SEE HERE
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'GENDER',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                              textAlign: TextAlign.left,
                            ),
                            ListTile(
                              title: Text('Female'),
                              leading: SizedBox(
                                child: Radio(
                                  value: "Female",
                                  groupValue: _gender,
                                  onChanged: (String? value) {
                                    setState((){ _gender = value;
                                    print(_gender);}
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      bottom: 10.0,
                    ),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        left: 5.0,
                        right: 20.0,
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                            width: 5.0,
                            color: Color.fromRGBO(247, 247, 247, 1)),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Details:",
                          style: TextStyle(
                            color: Color.fromRGBO(78, 199, 50, 1),
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'ADDRESS',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        const Text(
                          '121 avenue street, 23 block-20134',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        InkWell(
                          onTap: () {
                            print("Message");
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.add_location_alt_outlined,
                                  size: 28,
                                  color: Color.fromRGBO(78, 199, 50, 1)),
                              Text(" Add location on map"),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0.0,
                      bottom: 10.0,
                    ),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        left: 5.0,
                        right: 20.0,
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                            width: 5.0,
                            color: Color.fromRGBO(247, 247, 247, 1)),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hours of Operation:",
                          style: TextStyle(
                            color: Color.fromRGBO(78, 199, 50, 1),
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card(
                              child: Container(
                                  color: Color.fromRGBO(239, 239, 239, 1),
                                  padding: EdgeInsets.all(5.0),
                                  child: Row(children: const [
                                    Center(
                                      child: SizedBox(
                                        width: 40,
                                        child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.all(0.0),
                                            child: TextField(
                                              textAlign: TextAlign.center,
                                              decoration: InputDecoration(
                                                hintText: "8",
                                                hintStyle: TextStyle(
                                                    color: Colors.black),
                                                border: InputBorder.none,
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black,
                                                      width: 2.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(":"),
                                    Center(
                                      child: SizedBox(
                                        width: 45,
                                        child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.all(0.0),
                                            child: TextField(
                                              textAlign: TextAlign.center,
                                              decoration: InputDecoration(
                                                hintText: "00",
                                                hintStyle: TextStyle(
                                                    color: Colors.black),
                                                border: InputBorder.none,
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black,
                                                      width: 2.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(": "),
                                    Text(" am  "),
                                  ])),
                            ),
                            Text("TO", style: TextStyle(color: Colors.grey)),
                            Card(
                              child: Container(
                                  color: Color.fromRGBO(239, 239, 239, 1),
                                  padding: EdgeInsets.all(5.0),
                                  child: Row(children: const [
                                    Center(
                                      child: SizedBox(
                                        width: 40,
                                        child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.all(0.0),
                                            child: TextField(
                                              textAlign: TextAlign.center,
                                              decoration: InputDecoration(
                                                hintText: "5",
                                                hintStyle: TextStyle(
                                                    color: Colors.black),
                                                border: InputBorder.none,
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black,
                                                      width: 2.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(":"),
                                    Center(
                                      child: SizedBox(
                                        width: 45,
                                        child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.all(0.0),
                                            child: TextField(
                                              textAlign: TextAlign.center,
                                              decoration: InputDecoration(
                                                hintText: "00",
                                                hintStyle: TextStyle(
                                                    color: Colors.black),
                                                border: InputBorder.none,
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black,
                                                      width: 2.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(": "),
                                    Text(" pm  "),
                                  ])),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0.0,
                      bottom: 10.0,
                    ),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        left: 5.0,
                        right: 20.0,
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                            width: 5.0,
                            color: Color.fromRGBO(247, 247, 247, 1)),
                      )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        elevation: 0.0,
        color: Color.fromRGBO(78, 199, 50, 1),
        child: SizedBox(
            height: 55.0,
            width: double.infinity,
            //Wrap with inkwell and navigate to next

            child: Center(
                child: Text("Add",
                    style: TextStyle(color: Colors.white, fontSize: 18)))),
      ),
    );
  }
}
