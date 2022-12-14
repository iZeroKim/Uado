import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:uado/screens/dash_board.dart';


class At6Page extends StatefulWidget {
  const At6Page({Key? key}) : super(key: key);

  @override
  State<At6Page> createState() => _At6PageState();
}

class _At6PageState extends State<At6Page> {
  List<DropdownMenuItem<String>> insuranceCompanies = const [
    DropdownMenuItem(child: Text("UAP insurance"), value: "uap"),
    DropdownMenuItem(child: Text("Directline"), value: "directline"),
    DropdownMenuItem(child: Text("CIC"), value: "cic"),
    DropdownMenuItem(child: Text("ICEA Lion"), value: "icea"),
    DropdownMenuItem(child: Text("Madison"), value: "madison"),
  ];
  int selectedYom = 2010;
  String selectedIC = "uap";

  DateTime? _fromdate, _todate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(88,133,96, 1),
        elevation: 1.0,
        title: const Text("Add Car"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),

                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card(
                        color: const Color.fromRGBO(88,133,96, 1),
                        shape: const StadiumBorder(),
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          child: const Center(
                            child: Center(
                                child: Text(
                              "1",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                      ),
                      const Text(
                        "--------------",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(88,133,96, 1)),
                      ),
                      Card(
                        color: const Color.fromRGBO(88,133,96, 1),
                        shape: const StadiumBorder(),
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          child: const Center(
                            child: Center(
                                child: Text(
                              "2",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                      ),
                      const Text(
                        "--------------",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(88,133,96, 1)),
                      ),
                      Card(
                        color: const Color.fromRGBO(88,133,96, 1),
                        shape: const StadiumBorder(),
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          child: const Center(
                            child: Center(
                                child: Text(
                              "3",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 40.0,
                  ),

                  const Text("Car Insurance : ",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  // Input dropdown
                  const SizedBox(
                    height: 20.0,
                  ),

                  DropdownButtonFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        border: InputBorder.none,
                        filled: true,
                      ),
                      value: selectedIC,
                      onChanged: (String? newIC) {
                        setState(() {
                          selectedIC = newIC!;
                        });
                      },
                      items: insuranceCompanies),

                  const SizedBox(
                    height: 30.0,
                  ),

                  const Text("Insurance Validity : ",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  // Input dropdown
                  const SizedBox(
                    height: 20.0,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0, right: 10),
                          child: InkWell(
                            onTap: () {
                              DatePicker.showDatePicker(context,
                                  showTitleActions: true,
                                  minTime: DateTime(2022, 1, 1),
                                  maxTime: DateTime(2030, 1, 1), onChanged: (date) {
                                    print('confirm $date');
                                  }, onConfirm: (date) {
                                    _fromdate = date;
                                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                            },
                            child: Card(
                              elevation: 4.0,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.calendar_month_outlined,
                                      color: Color.fromRGBO(88,133,96, 1),
                                    ),
                                    SizedBox(width: 10.0),
                                    Text(
                                      "From date",
                                      style: TextStyle(
                                          color: Color.fromRGBO(88,133,96, 1),
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0, right: 0),
                          child: InkWell(
                            onTap: () {
                              DatePicker.showDatePicker(context,
                                  showTitleActions: true,
                                  minTime: DateTime(2022, 1, 1),
                                  maxTime: DateTime(2030, 1, 1), onChanged: (date) {
                                    print('confirm $date');
                                  }, onConfirm: (date) {
                                    _todate = date;
                                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                            },
                            child: Card(
                              elevation: 4.0,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 10.0),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.calendar_month_outlined,
                                      color: Color.fromRGBO(88,133,96, 1),
                                    ),
                                    SizedBox(width: 10.0),
                                    Text(
                                      "To date",
                                      style: TextStyle(
                                          color: Color.fromRGBO(88,133,96, 1),
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 30.0,
                  ),

                  const Text("Broker Details : ",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  // Input dropdown
                  const SizedBox(
                    height: 20.0,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Eg Kimani brokers",
                              hintStyle: TextStyle(color: Colors.black),
                              filled: true,
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Eg 0722111887",
                              hintStyle: TextStyle(color: Colors.black),
                              filled: true,
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              height: 120.0,
              width: 120.0,
              // Wrap with inkwell and navigate to next
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DashBoard()));
                },
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(200),
                    )),
                    color: Color.fromRGBO(88,133,96, 1),
                    child: Padding(
                      padding: EdgeInsets.only(left: 40.0, top: 40.0),
                      child: Icon(
                        Icons.navigate_next,
                        size: 70,
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
