import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uado/providers/clubs_provider.dart';

class ClubList extends StatefulWidget {
  const ClubList({Key? key}) : super(key: key);

  @override
  State<ClubList> createState() => _ClubListState();
}

class _ClubListState extends State<ClubList> {
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
        backgroundColor: const Color.fromRGBO(88,133,96, 1),
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
              children: const [
                SizedBox(
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
                var club = value.clubs[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Card(
                    elevation: 6.0,
                    child: InkWell(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ClubDetails()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: SizedBox(
                                      height: 45,
                                      width: 45,
                                      child: Image(
                                                    image: AssetImage(club.logo),
                                                    fit: BoxFit.fill,
                                                  ),
                                    ),
                                  ),
                                      const SizedBox(height: 10.0,),

                                      Padding(
                                        padding: const EdgeInsets.only(left: 5.0),
                                        child: Text(
                                          club.name.toUpperCase(),
                                          style: const TextStyle(
                                              fontWeight:
                                                  FontWeight.bold, fontSize: 30),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          print(" Join club");
                                        },
                                        child: Card(
                                          color: Colors.white,
                                          shape: const StadiumBorder(
                                            side: BorderSide(
                                              color: Color.fromRGBO(88,133,96, 1),
                                            ),
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.all(3.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: const [
                                                  SizedBox(width: 20),
                                                  Text(
                                                    "JOIN CLUB",
                                                    style: TextStyle(
                                                        color:
                                                        Color.fromRGBO(88,133,96, 1),
                                                        fontSize: 18),
                                                  ),
                                                  SizedBox(width: 20),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )

                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Image(
                                      height: 130,
                                      width: 200,
                                      image: AssetImage(club.imagePath),
                                      fit: BoxFit.fill,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }));
    });
  }
}
