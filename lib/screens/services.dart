import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  DateTime? _date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(78, 199, 50, 1),
        elevation: 1.0,
        title: const Text("Service History"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:  [
                                      const Text("Last Service", style: TextStyle(color: Colors.grey),),
                                      const SizedBox(height: 5.0, ),
                                      if (_date != null)Column(
                                        children: const [
                                          ( Text("Last Service", style: TextStyle(color: Colors.grey),)),
                                          SizedBox(height: 5.0, ),
                                        ],
                                      )
                                      else
                                        Container(),
                                      const Text("Insurance Expiry", style: TextStyle(color: Colors.grey),),
                                      const SizedBox(height: 5.0,),
                                      const Text("Car mileage", style: TextStyle(color: Colors.grey),)
                                    ],
                                  ),
                                  const SizedBox(width: 70,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("29, Nov 2022", style: TextStyle(fontWeight: FontWeight.bold),),
                                        const SizedBox(height: 5.0,),
                                        if (_date != null)Column(
                                          children: [
                                            Text(_date!.toString(), style: const TextStyle(color: Colors.grey),),
                                            const SizedBox(height: 5.0, ),
                                          ],
                                        )
                                        else
                                          Container(),
                                        const Text("30, Jan 2023", style: TextStyle(fontWeight: FontWeight.bold)),
                                        const SizedBox(height: 5.0,),
                                        const Text("12,000 km", style: TextStyle(fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15,),


                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: InkWell(
                    onTap: (){
                      DatePicker.showDatePicker(context,
                          showTitleActions: true,
                          minTime: DateTime.now(),
                          maxTime: DateTime(2030, 1, 1 ),
                          onChanged: (date) {
                            print('confirm $date');
                          },
                          onConfirm: (date) {
                            _date = date;
                          }, currentTime: DateTime.now(), locale: LocaleType.en);
                    },
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(Icons.calendar_month_outlined, color: Color.fromRGBO(78, 199, 50, 1),),
                            SizedBox(width:10.0),
                            Text(
                              "Schedule Service Date",
                              style: TextStyle(
                                  color: Color.fromRGBO(78, 199, 50, 1), fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
                                "SERVICE HISTORY",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 18),
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("21,Nov 2022", style: TextStyle(color: Colors.black),),
                                  SizedBox(height: 5.0, ),
                                  Row(
                                    children: [
                                      Text("Ksh 1500", style: TextStyle(color: Colors.black),),
                                      SizedBox(height: 5.0,),
                                      Icon(Icons.navigate_next, color: Colors.grey,)

                                    ],
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
