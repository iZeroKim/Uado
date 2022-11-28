import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uado/providers/mechanic_provider.dart';
import 'at701.dart';
import 'at702.dart';

class MechanicsListPage extends StatefulWidget {
  const MechanicsListPage({Key? key}) : super(key: key);

  @override
  State<MechanicsListPage> createState() => _MechanicsListPageState();
}

class _MechanicsListPageState extends State<MechanicsListPage> {
  final names = ["Samuel Kimani", "Allan Doe", "John Doe", "Samuel Kimani", "Allan Doe", "John Doe"];


  @override
  void initState() {
    super.initState();
    Provider.of<MechanicProvider>(context).getAllMechanics();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(78, 199, 50, 1),
        elevation: 1.0,
        title: const Text("Mechanics"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add_circle_outline_rounded, color: Colors.white, size: 30,),
            padding: const EdgeInsets.only(right: 15.0),
            tooltip: 'Add Mechanic',
            onPressed:() {
                setState(() {});
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title:const Text('WHAT DO YOU WANT TO ADD?', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold)),
                        children: <Widget>[
                          const SizedBox(height: 5.0,),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 5.0,
                              right: 5.0,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 0.5,
                              padding: const EdgeInsets.only(
                                left: 5.0,
                                right: 20.0,
                              ),
                              decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(width: 1.0, color: Colors.grey),
                                  )
                              ),
                            ),
                          ),
                          const SizedBox(height: 15.0,),
                          SimpleDialogOption(
                            onPressed: () {
                              print("Add mechanic");
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const At701Page()));

                              },
                            child:const Text('Mechanic', style: TextStyle(fontSize: 16)),
                          ),
                          SimpleDialogOption(
                            onPressed: () { print("Add garage"); },
                            child: const Text('Garage', style: TextStyle(fontSize: 16)),
                          ),
                        ],
                      );
                    });
              },

          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(
                left: 0.0, right: 0.0, bottom: 10.0),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Card(
                  elevation: 1.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Card(
                        color: const Color.fromRGBO(78, 199, 50, 1),
                        shape: const StadiumBorder(),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          child: const Center(
                            child: Center(
                                child: Icon(Icons.menu, color: Colors.white,)),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        shape: const StadiumBorder(),
                        elevation: 0.0,
                        child: Container(
                          width: 60.0,
                          height: 60.0,
                          child: const Center(
                            child: Center(
                                child: Icon(Icons.pin_drop_rounded, color: Color
                                    .fromRGBO(78, 199, 50, 1), size: 40,)),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        shape: const StadiumBorder(),
                        elevation: 0.0,
                        child: Container(
                          width: 60.0,
                          height: 60.0,
                          child: const Center(
                            child: Center(
                                child: Icon(
                                  Icons.alt_route_rounded, color: Color
                                    .fromRGBO(78, 199, 50, 1), size: 40,)),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        shape: const StadiumBorder(),
                        elevation: 0.0,
                        child: Container(
                          width: 60.0,
                          height: 60.0,
                          child: const Center(
                            child: Center(
                                child: Icon(Icons.filter_alt, color: Color
                                    .fromRGBO(78, 199, 50, 1), size: 40,)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Mechanic List builder
                // single List item

                const SizedBox(
                  height: 10.0,
                ),

                Expanded(
                    child: ListView.builder(
                        itemCount: names.length,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 2.0,
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => At702Page()));

                                  },
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,

                                        children: [
                                          const SizedBox(width: 10.0,),
                                          Card(
                                            child: Container(
                                              width: 105.0,
                                              height: 80.0,
                                              padding: const EdgeInsets.all(0.0),
                                              child: Center(
                                                child: Image.asset(
                                                  'assets/images/mechanic.png',
                                                  height: 80.0,
                                                  width: 105.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 5.0,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: const [
                                              Text("Ketan Car Point", style: TextStyle(fontWeight: FontWeight.bold),),
                                              Text("2655 keystone avenue, Santa clara, \nCA - 95051", style: TextStyle(color: Colors.grey),)
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5.0,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                        children: [
                                          const Text("20 Km Away", style: TextStyle(color: Colors.grey),),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: const [
                                              Icon(Icons.arrow_circle_up_rounded, size: 18, color: Color.fromRGBO(78, 199, 50, 1)),
                                              Text(" Provide Pickup"),

                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: const [
                                              Icon(Icons.star, size: 18,color: Color.fromRGBO(78, 199, 50, 1)),
                                              Text(" 4.5 "),
                                              Text("(213)", style: TextStyle(color: Colors.grey),),

                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5.0,),
                                    ],
                                  ),
                                ),


                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 5.0,
                                    right: 5.0,
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    height: 0.5,
                                    padding: const EdgeInsets.only(
                                      left: 5.0,
                                      right: 20.0,
                                    ),
                                    decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(width: 1.0, color: Colors.grey),
                                        )
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10.0,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10.0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                    children: [
                                      InkWell(
                                        onTap:(){print("Message");},
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: const [
                                            Icon(Icons.mail, size: 28, color: Color.fromRGBO(78, 199, 50, 1)),
                                            Text(" Message"),

                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 2.0,
                                          right: 2.0,
                                        ),
                                        child: Container(
                                          height: 30,
                                          padding: const EdgeInsets.only(
                                            top: 2.0,
                                            bottom: 2.0,
                                          ),
                                          decoration: const BoxDecoration(
                                              border: Border(
                                                left: BorderSide(width: 1.1, color: Colors.grey),
                                              )
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: (){print("Call");},
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: const [
                                            Icon(Icons.call, size: 28,color: Color.fromRGBO(78, 199, 50, 1)),
                                            Text(" Call"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        })),


              ],
            )


        ),
      ),
    );
  }
}
