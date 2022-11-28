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
  String? selected_sort_value = "popularity";
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<MechanicProvider>(context, listen: false).getAllMechanics();
    });

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
                      InkWell(
                        onTap: (){
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                child: Center(
                                  child: Text("Show all items"),
                                ),
                              );
                            },
                          );
                        },
                        child: Card(
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
                      ),
                      InkWell(
                        onTap: (){
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                child: Center(
                                  child: Text("Show nearest items"),
                                ),
                              );
                            },
                          );
                        },
                        child: Card(
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
                      ),
                      InkWell(
                        onTap: (){
                          showModalBottomSheet<void>(
                            // context and builder are
                            // required properties in this widget
                            context: context,
                            builder: (BuildContext context) {
                              // we set up a container inside which
                              // we create center column and display text

                              // Returning SizedBox instead of a Container
                              return SizedBox(
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:  [
                                          Text('  SORT BY', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                                          SizedBox(height: 10,),
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
                                          SizedBox(height: 10,),
                                          SizedBox(
                                            width: double.infinity,
                                            child: ListTile(
                                              title: const Text('Popularity',
                                                  style: TextStyle(fontSize: 14)),
                                              leading: Radio(
                                                activeColor:
                                                const Color.fromRGBO(78, 199, 50, 1),
                                                value: "popularity",
                                                groupValue: selected_sort_value,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    selected_sort_value= value;
                                                    print(selected_sort_value);
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: double.infinity,
                                            child: ListTile(
                                              title: const Text('Price - Low to High',
                                                  style: TextStyle(fontSize: 14)),
                                              leading: Radio(
                                                activeColor:
                                                const Color.fromRGBO(78, 199, 50, 1),
                                                value: "cheapest",
                                                groupValue: selected_sort_value,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    selected_sort_value = value;
                                                    print(selected_sort_value);
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: double.infinity,
                                            child: ListTile(
                                              title: const Text('Price - High to Low',
                                                  style: TextStyle(fontSize: 14)),
                                              leading: Radio(
                                                activeColor:
                                                const Color.fromRGBO(78, 199, 50, 1),
                                                value: "expensive",
                                                groupValue: selected_sort_value,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    selected_sort_value = value;
                                                    print(selected_sort_value);
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: double.infinity,
                                            child: ListTile(
                                              title: const Text('Newest First',
                                                  style: TextStyle(fontSize: 14)),
                                              leading: Radio(
                                                activeColor:
                                                const Color.fromRGBO(78, 199, 50, 1),
                                                value: "cheapest",
                                                groupValue: selected_sort_value,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    selected_sort_value = value;
                                                    print(selected_sort_value);
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Card(
                          color: Colors.white,
                          shape: const StadiumBorder(),
                          elevation: 0.0,
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            child: const Center(
                              child: Center(
                                  child: Icon(
                                    Icons.compare_arrows_sharp, color: Color
                                      .fromRGBO(78, 199, 50, 1), size: 40,)),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          showModalBottomSheet<void>(
                            // context and builder are
                            // required properties in this widget
                            context: context,
                            builder: (BuildContext context) {
                              // we set up a container inside which
                              // we create center column and display text

                              // Returning SizedBox instead of a Container
                              return SizedBox(
                                child: Center(
                                  child: Text("Apply filters on items"),
                                ),
                              );
                            },
                          );
                        },
                        child: Card(
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
                      ),
                    ],
                  ),
                ),

                // Mechanic List builder
                // single List item

                const SizedBox(
                  height: 10.0,
                ),

                Consumer<MechanicProvider>(
                    builder: (context, value, child){
                      if(value.isLoading){
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return Expanded(
                          child: ListView.builder(
                              itemCount: value.mechanics.length,
                              itemBuilder: (context, index) {
                                var mechanic = value.mechanics[index];
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
                                                  children:  [
                                                    Text(mechanic.name, style: const TextStyle(fontWeight: FontWeight.bold),),
                                                    Text(mechanic.address, style: const TextStyle(color: Colors.grey),)
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
                              }));
                    }
                )


              ],
            )


        ),
      ),
    );
  }
}
