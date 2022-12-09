import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uado/models/Part.dart';
import 'package:uado/providers/cart_provider.dart';
import 'package:uado/screens/cart/cart.dart';
import 'package:uado/screens/parts/part_details.dart';

class PartsList extends StatefulWidget {
  const PartsList({Key? key}) : super(key: key);

  @override
  State<PartsList> createState() => _PartsListState();
}

class _PartsListState extends State<PartsList> {
  @override
  Widget build(BuildContext context) {
    List<Part> parts = [];
    Part part1 = Part(null, name: "Rims", brand: "Maxxies Rims", seller: "Elion garage", cost: 3500, part_description: {"Color": "Black"}, thumbnail: "assets/images/rim.jfif");
    Part part2 = Part(null, name: "Brake pad", brand: "Brakes KE", seller: "Brakes KE", cost: 1200, part_description: {"Width": "14 mm"}, thumbnail: "assets/images/brakepad.jfif");
    Part part3 = Part(null, name: "Head lights", brand: "Subaru levorg", seller: "Subaru ke", cost: 25000, part_description:  {"Lumen": "26"}, thumbnail: "assets/images/headlight.jfif");
    Part part4 = Part(null, name: "Gas pedal", brand: "Cal customs", seller: "Big foot pedals", cost: 5000, part_description: {"" : ""}, thumbnail: "assets/images/gaspedal.jfif");
    parts.add(part1);
    parts.add(part2);
    parts.add(part3);
    parts.add(part4);
    parts.add(part1);
    parts.add(part2);
    parts.add(part3);
    parts.add(part4);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(24, 158, 138, 1),
        elevation: 1.0,
        title: const Text("Buy parts", style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.white,
              size: 25,
            ),
            padding: const EdgeInsets.only(right: 5.0),
            tooltip: 'Search',
            onPressed: () {},
          ),
          Badge(
            badgeContent: Consumer<CartProvider>(
              builder: (context, value, child) {
                return Text(
                  value.items.length.toString(),
                  style: const TextStyle(
                      color: Color.fromRGBO(24, 158, 138, 1), fontWeight: FontWeight.bold),
                );
              },
            ),
            badgeColor: Colors.white,
            position: const BadgePosition(start: 30, bottom: 30),
            child: IconButton(
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
                size: 25,
              ),
              padding: const EdgeInsets.only(right: 0.0),
              tooltip: 'Shopping cart',
              onPressed: () {

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ShoppingList()));
              },
            ),
          ),
          SizedBox(width: 20,)
        ],
      ),
      body:SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Card(
                  elevation: 1.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: const [
                              Icon(Icons.sort, color: Colors.black, size: 30,),
                              SizedBox(width: 10,),
                              Text("Sort by", style: TextStyle(color: Colors.black, fontSize: 16),)
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
                                  left: BorderSide(
                                      width: 1.1,
                                      color: Colors.grey),
                                )),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: const [
                              Icon(Icons.filter_alt_outlined, color: Colors.black, size: 30,),
                              SizedBox(width: 10,),
                              Text("Filter", style: TextStyle(color: Colors.black, fontSize: 16),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GridView.builder(
                  itemCount: parts.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 10.0 / 12.5,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    var part = parts[index];
                    return Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => PartDetails(part: part,))
                            );
                          },
                          child: Card(
                              semanticContainer: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                      child: SizedBox(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image:
                                                AssetImage(part.thumbnail),
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            "${part.name}\n",
                                            style: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                                            maxLines: 2,
                                          ),
                                          Text(
                                            part.brand,
                                            style: const TextStyle(color: Colors.grey,),
                                            maxLines: 1,
                                          ),
                                          Text(
                                            "Ksh. ${part.cost}",
                                            style: const TextStyle(fontSize: 16, color: Color.fromRGBO(24, 158, 138, 1), fontWeight: FontWeight.bold),
                                            maxLines: 1,
                                          ),
                                        ],
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                      )),
                                ],
                              )),
                        ));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
