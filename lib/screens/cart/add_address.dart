import 'package:flutter/material.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  String? _gender = "Male";
  var eCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(128, 0, 15, 1),
        elevation: 1.0,
        title: const Text("Delivery To"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: ListView(
            children: [
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: const [
              //           SizedBox(
              //             height: 20.0,
              //           ),
              //
              //
              //           SizedBox(
              //             height: 20.0,
              //           ),
              //
              //           //Or text
              //           Text(
              //             'FULL NAME*',
              //             style: TextStyle(color: Colors.grey, fontSize: 14),
              //             textAlign: TextAlign.left,
              //           ),
              //           // Note: Same code is applied for the TextFormField as well
              //           SizedBox(
              //             width: double.infinity,
              //             height: 35.0,
              //             child: TextField(
              //               decoration: InputDecoration(
              //                 enabledBorder: UnderlineInputBorder(
              //                   borderSide:
              //                       BorderSide(width: 1, color: Colors.grey),
              //                 ),
              //               ),
              //             ),
              //           ),
              //           SizedBox(
              //             height: 12.0,
              //           ),
              //
              //           //Or text
              //           Text(
              //             'MOBILE NUMBER*',
              //             style: TextStyle(color: Colors.grey, fontSize: 14),
              //             textAlign: TextAlign.left,
              //           ),
              //           // Note: Same code is applied for the TextFormField as well
              //           SizedBox(
              //             width: double.infinity,
              //             height: 35.0,
              //             child: TextField(
              //               decoration: InputDecoration(
              //                 enabledBorder: UnderlineInputBorder(
              //                   //<-- SEE HERE
              //                   borderSide:
              //                       BorderSide(width: 1, color: Colors.grey),
              //                 ),
              //               ),
              //             ),
              //           ),
              //           SizedBox(
              //             height: 12.0,
              //           ),
              //
              //           //Or text
              //           Text(
              //             'Flat/House No.*',
              //             style: TextStyle(color: Colors.grey, fontSize: 14),
              //             textAlign: TextAlign.left,
              //           ),
              //           // Note: Same code is applied for the TextFormField as well
              //           SizedBox(
              //             width: double.infinity,
              //             height: 35.0,
              //             child: TextField(
              //               decoration: InputDecoration(
              //                 enabledBorder: UnderlineInputBorder(
              //                   //<-- SEE HERE
              //                   borderSide:
              //                       BorderSide(width: 1, color: Colors.grey),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(
              //         top: 20.0,
              //         bottom: 10.0,
              //       ),
              //       child: Container(
              //         width: double.infinity,
              //         padding: const EdgeInsets.only(
              //           left: 5.0,
              //           right: 20.0,
              //         ),
              //         decoration: const BoxDecoration(
              //             border: Border(
              //           bottom: BorderSide(
              //               width: 5.0,
              //               color: Color.fromRGBO(247, 247, 247, 1)),
              //         )),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           const Text(
              //             "Details:",
              //             style: TextStyle(
              //               color: Color.fromRGBO(128, 0, 15, 1),
              //             ),
              //             textAlign: TextAlign.left,
              //           ),
              //           const SizedBox(
              //             height: 20.0,
              //           ),
              //           const Text(
              //             'ADDRESS',
              //             style: TextStyle(color: Colors.grey, fontSize: 14),
              //             textAlign: TextAlign.left,
              //           ),
              //           const SizedBox(
              //             height: 12.0,
              //           ),
              //           const Text(
              //             '121 avenue street, 23 block-20134',
              //             style: TextStyle(
              //               color: Colors.black,
              //             ),
              //             textAlign: TextAlign.left,
              //           ),
              //           const SizedBox(
              //             height: 20.0,
              //           ),
              //           InkWell(
              //             onTap: () {
              //               print("Message");
              //             },
              //             child: Row(
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: const [
              //                 Icon(Icons.add_location_alt_outlined,
              //                     size: 28,
              //                     color: Color.fromRGBO(128, 0, 15, 1)),
              //                 Text(" Add location on map"),
              //               ],
              //             ),
              //           ),
              //           const SizedBox(
              //             height: 10.0,
              //           ),
              //         ],
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(
              //         top: 0.0,
              //         bottom: 10.0,
              //       ),
              //       child: Container(
              //         width: double.infinity,
              //         padding: const EdgeInsets.only(
              //           left: 5.0,
              //           right: 20.0,
              //         ),
              //         decoration: const BoxDecoration(
              //             border: Border(
              //           bottom: BorderSide(
              //               width: 5.0,
              //               color: Color.fromRGBO(247, 247, 247, 1)),
              //         )),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           const Text(
              //             "Hours of Operation:",
              //             style: TextStyle(
              //               color: Color.fromRGBO(128, 0, 15, 1),
              //             ),
              //             textAlign: TextAlign.left,
              //           ),
              //           const SizedBox(
              //             height: 20.0,
              //           ),
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Card(
              //                 child: Container(
              //                     color: const Color.fromRGBO(239, 239, 239, 1),
              //                     padding: const EdgeInsets.all(5.0),
              //                     child: Row(children: const [
              //                       Center(
              //                         child: SizedBox(
              //                           width: 40,
              //                           child: Center(
              //                             child: Padding(
              //                               padding: EdgeInsets.all(0.0),
              //                               child: TextField(
              //                                 textAlign: TextAlign.center,
              //                                 decoration: InputDecoration(
              //                                   hintText: "8",
              //                                   hintStyle: TextStyle(
              //                                       color: Colors.black),
              //                                   border: InputBorder.none,
              //                                   focusedBorder:
              //                                       OutlineInputBorder(
              //                                     borderSide: BorderSide(
              //                                         color: Colors.black,
              //                                         width: 2.0),
              //                                   ),
              //                                 ),
              //                               ),
              //                             ),
              //                           ),
              //                         ),
              //                       ),
              //                       Text(":"),
              //                       Center(
              //                         child: SizedBox(
              //                           width: 45,
              //                           child: Center(
              //                             child: Padding(
              //                               padding: EdgeInsets.all(0.0),
              //                               child: TextField(
              //                                 textAlign: TextAlign.center,
              //                                 decoration: InputDecoration(
              //                                   hintText: "00",
              //                                   hintStyle: TextStyle(
              //                                       color: Colors.black),
              //                                   border: InputBorder.none,
              //                                   focusedBorder:
              //                                       OutlineInputBorder(
              //                                     borderSide: BorderSide(
              //                                         color: Colors.black,
              //                                         width: 2.0),
              //                                   ),
              //                                 ),
              //                               ),
              //                             ),
              //                           ),
              //                         ),
              //                       ),
              //                       Text(": "),
              //                       Text(" am  "),
              //                     ])),
              //               ),
              //               const Text("TO",
              //                   style: TextStyle(color: Colors.grey)),
              //               Card(
              //                 child: Container(
              //                     color: const Color.fromRGBO(239, 239, 239, 1),
              //                     padding: const EdgeInsets.all(5.0),
              //                     child: Row(children: const [
              //                       Center(
              //                         child: SizedBox(
              //                           width: 40,
              //                           child: Center(
              //                             child: Padding(
              //                               padding: EdgeInsets.all(0.0),
              //                               child: TextField(
              //                                 textAlign: TextAlign.center,
              //                                 decoration: InputDecoration(
              //                                   hintText: "5",
              //                                   hintStyle: TextStyle(
              //                                       color: Colors.black),
              //                                   border: InputBorder.none,
              //                                   focusedBorder:
              //                                       OutlineInputBorder(
              //                                     borderSide: BorderSide(
              //                                         color: Colors.black,
              //                                         width: 2.0),
              //                                   ),
              //                                 ),
              //                               ),
              //                             ),
              //                           ),
              //                         ),
              //                       ),
              //                       Text(":"),
              //                       Center(
              //                         child: SizedBox(
              //                           width: 45,
              //                           child: Center(
              //                             child: Padding(
              //                               padding: EdgeInsets.all(0.0),
              //                               child: TextField(
              //                                 textAlign: TextAlign.center,
              //                                 decoration: InputDecoration(
              //                                   hintText: "00",
              //                                   hintStyle: TextStyle(
              //                                       color: Colors.black),
              //                                   border: InputBorder.none,
              //                                   focusedBorder:
              //                                       OutlineInputBorder(
              //                                     borderSide: BorderSide(
              //                                         color: Colors.black,
              //                                         width: 2.0),
              //                                   ),
              //                                 ),
              //                               ),
              //                             ),
              //                           ),
              //                         ),
              //                       ),
              //                       Text(": "),
              //                       Text(" pm  "),
              //                     ])),
              //               ),
              //             ],
              //           ),
              //           const SizedBox(
              //             height: 20.0,
              //           ),
              //         ],
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(
              //         top: 0.0,
              //         bottom: 20.0,
              //       ),
              //       child: Container(
              //         width: double.infinity,
              //         padding: const EdgeInsets.only(
              //           left: 5.0,
              //           right: 20.0,
              //         ),
              //         decoration: const BoxDecoration(
              //             border: Border(
              //           bottom: BorderSide(
              //               width: 5.0,
              //               color: Color.fromRGBO(247, 247, 247, 1)),
              //         )),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           const Text(
              //             "Add Tags:",
              //             style: TextStyle(
              //               color: Color.fromRGBO(128, 0, 15, 1),
              //             ),
              //             textAlign: TextAlign.left,
              //           ),
              //           const SizedBox(
              //             height: 20.0,
              //           ),
              //           Wrap(
              //             spacing: 6.0,
              //             runSpacing: 6.0,
              //             children: List<Widget>.generate(_dynamicChips.length,
              //                 (int index) {
              //               return Chip(
              //                 label: Text(_dynamicChips[index]),
              //                 onDeleted: () {
              //                   setState(() {
              //                     _dynamicChips.removeAt(index);
              //                   });
              //                 },
              //               );
              //             }),
              //           ),
              //           const SizedBox(height: 10, width: 10),
              //           InkWell(
              //             onTap: () {
              //               setState(() {});
              //               var chip = "";
              //               showDialog(
              //                   context: context,
              //                   builder: (context) {
              //                     return AlertDialog(
              //                       title: Text('Add Tag'),
              //                       content: TextField(
              //                         onChanged: (value) {
              //                           setState(() {
              //                             chip = value;
              //                           });
              //                         },
              //                         controller: eCtrl,
              //                         decoration:
              //                             InputDecoration(hintText: "Tag"),
              //                       ),
              //                       actions: <Widget>[
              //                         TextButton(
              //                           child: Text(
              //                             'CANCEL',
              //                             style: TextStyle(
              //                                 color: Colors.redAccent),
              //                           ),
              //                           onPressed: () {
              //                             setState(() {
              //                               Navigator.pop(context);
              //                             });
              //                           },
              //                         ),
              //                         TextButton(
              //                           child: Text(
              //                             'OK',
              //                             style: TextStyle(
              //                                 color: Colors.lightGreenAccent),
              //                           ),
              //                           onPressed: () {
              //                             setState(() {
              //                               _dynamicChips.add(chip);
              //                               eCtrl.clear();
              //                               Navigator.pop(context);
              //                             });
              //                           },
              //                         ),
              //                       ],
              //                     );
              //                   });
              //             },
              //             child: const Chip(
              //               backgroundColor: Colors.white,
              //               shape: StadiumBorder(
              //                 side: BorderSide(
              //                   color: Color.fromRGBO(128, 0, 15, 1),
              //                 ),
              //               ),
              //               avatar: Icon(
              //                 Icons.add,
              //                 color: Color.fromRGBO(128, 0, 15, 1),
              //               ),
              //               label: Text(
              //                 "Add",
              //                 style: TextStyle(
              //                     color: Color.fromRGBO(128, 0, 15, 1)),
              //               ),
              //             ),
              //           ),
              //           const SizedBox(
              //             height: 20.0,
              //           ),
              //         ],
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(
              //         top: 0.0,
              //         bottom: 20.0,
              //       ),
              //       child: Container(
              //         width: double.infinity,
              //         padding: const EdgeInsets.only(
              //           left: 5.0,
              //           right: 20.0,
              //         ),
              //         decoration: const BoxDecoration(
              //             border: Border(
              //           bottom: BorderSide(
              //               width: 5.0,
              //               color: Color.fromRGBO(247, 247, 247, 1)),
              //         )),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           const Text(
              //             "Link Social Media:",
              //             style: TextStyle(
              //               color: Color.fromRGBO(128, 0, 15, 1),
              //             ),
              //             textAlign: TextAlign.left,
              //           ),
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             children: [
              //               Card(
              //                 shape: const StadiumBorder(),
              //                 child: Container(
              //                   width: 50.0,
              //                   height: 50.0,
              //                   child: const Center(
              //                     child: Center(
              //                       child: Icon(Icons.facebook),
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //               Card(
              //                 shape: const StadiumBorder(),
              //                 child: Container(
              //                   width: 50.0,
              //                   height: 50.0,
              //                   child: const Center(
              //                     child: Center(
              //                       child: Icon(Icons.facebook),
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //           SizedBox(height: 20.0)
              //         ],
              //       ),
              //     ),
              //   ],
              // )
              Text("Add address")
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        elevation: 0.0,
        color: Color.fromRGBO(128, 0, 15, 1),
        child: SizedBox(
            height: 55.0,
            width: double.infinity,
            //Wrap with inkwell and navigate to next

            child: Center(
                child: Text("SAVE & CONTINUE",
                    style: TextStyle(color: Colors.white, fontSize: 18)))),
      ),
    );
  }
}
