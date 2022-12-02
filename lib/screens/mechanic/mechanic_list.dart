import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uado/providers/garage_provider.dart';
import 'add_mechanic.dart';
import 'mechanic_details.dart';
import 'package:getwidget/getwidget.dart';

class MechanicList extends StatefulWidget {
  const MechanicList({Key? key}) : super(key: key);

  @override
  State<MechanicList> createState() => _MechanicListState();
}

class _MechanicListState extends State<MechanicList> {
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
        title: const Text("Freelance Mechanics"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add_circle_outline_rounded,
              color: Colors.white,
              size: 30,
            ),
            padding: const EdgeInsets.only(right: 15.0),
            tooltip: 'Add Mechanic',
            onPressed: () {
              print("Add mechanic");
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AddMechanic()));
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(
                  height: 10.0,
                ),

                Consumer<GarageProvider>(builder: (context, value, child) {
                  if (value.isLoading) {
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Card(
                                child: InkWell(
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MechanicDetails()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Container(
                                      height: 80,
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                minRadius: 38,
                                                backgroundImage: AssetImage("assets/images/avatar.jpg"),
                                              ),
                                              SizedBox(width: 15.0,),
                                              //Name, location and rating
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(garage.name, style: TextStyle(color: Colors.black, fontSize: 18)),
                                                  SizedBox(height: 5,width: 100,),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Icon(Icons.location_on, size: 18,color: Colors.grey,),
                                                      SizedBox(width: 5.0,),
                                                      Text(garage.address, style: TextStyle(color: Colors.grey),),
                                                    ],
                                                  ),
                                                  SizedBox(height: 5,),
                                                  Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      GFRating(
                                                        color: Color.fromRGBO(78, 199, 50, 1),
                                                        borderColor: Color.fromRGBO(78, 199, 50, 1),
                                                        size: 20,
                                                        value: 4,
                                                        onChanged: (value) {
                                                          // setState(() {
                                                          //   _rating = value;
                                                          // });
                                                        },
                                                      ),
                                                      Text(
                                                        "(213)",
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                            Text("Last Charge", style: TextStyle(color: Colors.grey, fontSize: 13)),
                                            Text("Ksh 3500", style: TextStyle(color: Colors.black, fontSize: 16)),
                                          ],)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }));
                })
              ],
            )),
      ),
      bottomSheet: GFBottomSheet(
        elevation: 10,
        controller: _controller,
        // maxContentHeight: 400,
        stickyHeaderHeight: 100,
        stickyHeader: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 1)]),
          child: GFListTile(
            avatar: Card(
              color: const Color.fromRGBO(230, 230, 230, 1),
              shape: const StadiumBorder(),
              elevation: 0.0,
              child: Container(
                width: 50.0,
                height: 50.0,
                child: const Center(
                  child: Center(
                      child: Icon(
                    Icons.filter_alt,
                    color: Color.fromRGBO(78, 199, 50, 1),
                    size: 40,
                  )),
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
                    list = value;
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
                ),
              )
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
                    },
                    child: const Text('Apply Filters',
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: () {
                      print("x");
                    },
                    child: const Text('Cancel',
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
          child: _controller.isBottomSheetOpened
              ? const Icon(Icons.keyboard_arrow_down, color: Colors.white)
              : const Icon(
                  Icons.keyboard_arrow_up,
                  color: Colors.white,
                ),
          onPressed: () {
            _controller.isBottomSheetOpened
                ? _controller.hideBottomSheet()
                : _controller.showBottomSheet();
          }),
    );
  }
}
