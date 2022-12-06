import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:provider/provider.dart';
import 'package:uado/providers/clubs_provider.dart';

class ClubList extends StatefulWidget {
  const ClubList({Key? key}) : super(key: key);

  @override
  State<ClubList> createState() => _ClubListState();
}

class _ClubListState extends State<ClubList> {
  String? selected_sort_value = "popularity";
  final GFBottomSheetController _controller = GFBottomSheetController();

  var dropList = ["Wheels", "Rims", "Engine"];

  List list = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ClubProvider>(context, listen: false).getAllClubs();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(24, 158, 138, 1),
        elevation: 1.0,
        title: const Text("Car Clubs", style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            padding: const EdgeInsets.only(right: 15.0),
            tooltip: 'Search for club',
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddClub()));
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
                // Club List builder
                // single List item
                const SizedBox(
                  height: 10.0,
                ),

                ClubListView()
              ],
            )),
      ),
    );
  }
}

class ClubListView extends StatelessWidget {
  const ClubListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ClubProvider>(builder: (context, value, child) {
      if (value.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return Expanded(
          child: ListView.builder(
              itemCount: value.clubs.length,
              itemBuilder: (context, index) {
                var Club = value.clubs[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Card(
                    elevation: 6.0,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ClubDetails()));
                          },
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Card(
                                    child: Container(
                                      width: 105.0,
                                      height: 80.0,
                                      padding:
                                          const EdgeInsets.all(0.0),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/clubs.png',
                                          height: 80.0,
                                          width: 105.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Club.name,
                                        style: const TextStyle(
                                            fontWeight:
                                                FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }));
    });
  }
}
