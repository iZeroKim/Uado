import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uado/providers/garage_provider.dart';
import 'add_garage.dart';
import 'garage_details.dart';
import 'package:getwidget/getwidget.dart';

class GarageList extends StatefulWidget {
  const GarageList({Key? key}) : super(key: key);

  @override
  State<GarageList> createState() => _GarageListState();
}

class _GarageListState extends State<GarageList> {
  String? selected_sort_value = "popularity";
  final GFBottomSheetController _controller = GFBottomSheetController();

  var dropList = ["Wheels", "Rims", "Engine"];

  List list = [];
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<GarageProvider>(context, listen: false).getAllGarages();
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
        title: const Text("Garages"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add_circle_outline_rounded, color: Colors.white, size: 30,),
            padding: const EdgeInsets.only(right: 15.0),
            tooltip: 'Add Garage',
            onPressed:() {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AddGarage()));
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
                              return const SizedBox(
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
                              return const SizedBox(
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
                                          const Text('  SORT BY', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                                          const SizedBox(height: 10,),
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
                                          const SizedBox(height: 10,),
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
                    ],
                  ),
                ),

                // Mechanic List builder
                // single List item

                const SizedBox(
                  height: 10.0,
                ),

                Consumer<GarageProvider>(
                    builder: (context, value, child){
                      if(value.isLoading){
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return Expanded(
                          child: ListView.builder(
                              itemCount: value.garages.length,
                              itemBuilder: (context, index) {
                                var garage = value.garages[index];
                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Card(
                                    elevation: 6.0,
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            Navigator.of(context).push(MaterialPageRoute(
                                                builder: (context) => GarageDetails()));

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
                                                      Text(garage.name, style: const TextStyle(fontWeight: FontWeight.bold),),
                                                      Text(garage.address, style: const TextStyle(color: Colors.grey),)
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 10.0,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                                children: [
                                                  const Text("20 Km Away", style: TextStyle(color: Colors.grey),),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: const [
                                                      Icon(Icons.arrow_circle_up_rounded, size: 18, color: Color.fromRGBO(255,191,27,1)),
                                                      Text(" Provide Pickup"),

                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: const [
                                                      Icon(Icons.star, size: 18,color: Color.fromRGBO(255,191,27,1)),
                                                      Text(" 4.5 "),
                                                      Text("(213)", style: TextStyle(color: Colors.grey),),

                                                    ],
                                                  ),
                                                ],
                                              ),

                                            ],
                                          ),
                                        ),


                                        const Divider(
                                          height: 20,
                                          thickness: 0.5,
                                          indent: 5,
                                          endIndent: 5,
                                          color: Colors.grey,
                                        ),
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
                                  ),
                                );
                              }));
                    }
                )


              ],
            )


        ),
      ),
      bottomSheet: GFBottomSheet(
        elevation: 10,
        controller: _controller,
        // maxContentHeight: 400,
        stickyHeaderHeight: 100,
        stickyHeader: Container(
          decoration: const BoxDecoration(color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 1)]
          ),
          child:  GFListTile(
            avatar: Card(
              color: const Color.fromRGBO(230, 230, 230, 1),
              shape: const StadiumBorder(),
              elevation: 0.0,
              child: Container(
                width: 50.0,
                height: 50.0,
                child: const Center(
                  child: Center(
                      child: Icon(Icons.filter_alt, color: Color
                          .fromRGBO(78, 199, 50, 1), size: 40,)),
                ),
              ),
            ),
            titleText: 'Add Filter',
            subTitleText: 'Filter list with tags',

          ),
        ),
        contentBody: Container(
          height: 200,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: ListView(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            children: [
              Center(
                  child: GFMultiSelect(
                    items: dropList,
                    onSelect: (value) {
                      list  = value;
                      print('selected $value ');
                    },
                    dropdownTitleTileText: 'Select tags ',
                    dropdownTitleTileMargin: const EdgeInsets.only(
                        top: 20, left: 10, right: 10, bottom: 5),
                    dropdownTitleTilePadding: const EdgeInsets.all(10),
                    dropdownUnderlineBorder:
                    const BorderSide(color: Colors.transparent, width: 2),
                    dropdownTitleTileBorder:
                    Border.all(color: Colors.grey, width: 1),
                    dropdownTitleTileBorderRadius: BorderRadius.circular(5),
                    expandedIcon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black54,
                    ),
                    collapsedIcon: const Icon(
                      Icons.keyboard_arrow_up,
                      color: Colors.black54,
                    ),
                    dropdownTitleTileTextStyle:
                    const TextStyle(fontSize: 14, color: Colors.black54),
                    padding: const EdgeInsets.all(6),
                    margin: const EdgeInsets.all(6),
                    type: GFCheckboxType.basic,
                    activeBgColor: GFColors.SUCCESS,
                    activeBorderColor: GFColors.SUCCESS,
                    inactiveBorderColor: Colors.grey,

                  ),)
            ],
          ),
        ),
        stickyFooter: Container(
          color: GFColors.SUCCESS,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'My Car App',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      print(list);
                    }, child:const Text('Apply Filters',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: () {
                      print("x");
                    }, child:const Text('Cancel',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                  ),
                ],
              ),

            ],
          ),
        ),
        stickyFooterHeight: 50,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: GFColors.SUCCESS,
          child: _controller.isBottomSheetOpened ? const Icon(Icons.keyboard_arrow_down, color:Colors.white):const Icon(Icons.keyboard_arrow_up, color: Colors.white,),
          onPressed: () {
            _controller.isBottomSheetOpened
                ? _controller.hideBottomSheet()
                : _controller.showBottomSheet();
          }
      ),
    );
  }
}
