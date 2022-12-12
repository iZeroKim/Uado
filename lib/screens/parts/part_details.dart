import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:provider/provider.dart';
import 'package:uado/models/Part.dart';
import 'package:uado/providers/cart_provider.dart';
import 'package:uado/screens/cart/cart.dart';

class PartDetails extends StatefulWidget {
  const PartDetails({Key? key, required this.part}) : super(key: key);
  final Part part;

  @override
  State<PartDetails> createState() => _PartDetailsState(part: part);
}

class _PartDetailsState extends State<PartDetails> {
  var _rating = 4.0;

  Part part;

  _PartDetailsState({required Part this.part});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0.0,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search_outlined,
                color: Colors.black,
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
                        color: Colors.white, fontWeight: FontWeight.bold),
                  );
                },
              ),
              badgeColor: Color.fromRGBO(128, 0, 15, 1),
              position: const BadgePosition(start: 30, bottom: 30),
              child: IconButton(
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 25,
                ),
                padding: const EdgeInsets.only(right: 15.0),
                tooltip: 'Shopping cart',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ShoppingList()));
                },
              ),
            ),
            SizedBox(width: 20.0,)

          ],
        ),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 350,
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(part.thumbnail), fit: BoxFit.fill),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        color: const Color.fromRGBO(128, 0, 15, 1),
                        shape: const StadiumBorder(),
                        child: Container(
                          width: 10.0,
                          height: 10.0,
                          child: const Center(
                            child: Center(),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        shape: const StadiumBorder(),
                        child: Container(
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromRGBO(128, 0, 15, 1),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Center(),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        shape: const StadiumBorder(),
                        child: Container(
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromRGBO(128, 0, 15, 1),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Center(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 5,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.grey,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          part.name,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          maxLines: 2,
                        ),
                        Text(
                          "Ksh. ${part.cost}",
                          style: const TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(128, 0, 15, 1),
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                        ),
                      ],
                    )),
                Container(
                  color: const Color.fromRGBO(246, 248, 250, 1),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Card(
                      color: Colors.white,
                      shape: StadiumBorder(),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              GFRating(
                                color:
                                const Color.fromRGBO(255, 191, 27, 1),
                                borderColor:
                                const Color.fromRGBO(255, 191, 27, 1),
                                size: 20,
                                value: 4.0,
                                onChanged: (double rating) {  },
                              ),
                              SizedBox(width: 7,),
                              Text(
                                "21 Reviews",
                                style: TextStyle(
                                    color:
                                    Colors.black,),
                              ),
                              SizedBox(width: 10,),
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
                              SizedBox(width: 10,),
                              Icon(Icons.bookmark_add_outlined, color: Colors.black,),
                              SizedBox(width: 5,),
                              Text(
                                "Wishlist",
                                style: TextStyle(
                                  color:
                                  Colors.black,),
                              ),
                              SizedBox(width: 7,),
                              Icon(Icons.share_outlined, color: Colors.black,),
                              SizedBox(width: 5,),
                              Text(
                                "Share",
                                style: TextStyle(
                                  color:
                                  Colors.black,),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Card(
                               color: const Color.fromRGBO(128, 0, 15, 1),
                               shape: const StadiumBorder(),
                               child: Container(
                                 width: 10.0,
                                 height: 10.0,
                                 child: const Center(
                                   child: Center(),
                                 ),
                               ),
                             ),
                             SizedBox(width: 10,),
                             Text("Sold By : "),
                             Text(part.seller, style: TextStyle(fontWeight: FontWeight.bold))
                           ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                              color: const Color.fromRGBO(128, 0, 15, 1),
                              shape: const StadiumBorder(),
                              child: Container(
                                width: 10.0,
                                height: 10.0,
                                child: const Center(
                                  child: Center(),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text("Delivery Charge : "),
                            Text("+ KSh 200", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(128, 0, 15, 1))),
                            Text(" (within 5 days)"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                              color: const Color.fromRGBO(128, 0, 15, 1),
                              shape: const StadiumBorder(),
                              child: Container(
                                width: 10.0,
                                height: 10.0,
                                child: const Center(
                                  child: Center(),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text("10 Days Replacement"),
                            ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: const Color.fromRGBO(246, 248, 250, 1),
                  height: 10.0,
                  width: double.infinity,
                ),

                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "Item Details",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: const [
                                Text("Width", style : TextStyle(color: Colors.grey))
                              ],
                            ),
                            SizedBox(width:40.0),
                            Column(
                              children: const [
                                Text("25 mm", style : TextStyle(color: Colors.black))
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: const Color.fromRGBO(246, 248, 250, 1),
                  height: 10.0,
                  width: double.infinity,
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
                  child: Text(
                    "Review and Rating",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 10, right: 20, bottom: 20),
                        child: Row(
                          children: [
                            const Text(
                              "3.5/5",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 24),
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //Rating
                                Row(
                                  children: [
                                    GFRating(
                                      color:
                                          const Color.fromRGBO(255, 191, 27, 1),
                                      borderColor:
                                          const Color.fromRGBO(255, 191, 27, 1),
                                      size: 20,
                                      value: _rating,
                                      onChanged: (value) {
                                        // setState(() {
                                        //   _rating = value;
                                        // });
                                      },
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                //Rating and review row
                                Row(
                                  children: const [
                                    Text("21 Rating"),
                                    Text(" , "),
                                    Text("3 Reviews")
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              width: double.infinity,
                              height: 0.3,
                              decoration: const BoxDecoration(
                                  border: Border(
                                bottom:
                                    BorderSide(width: 1.0, color: Colors.grey),
                              )),
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Super Cool",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GFRating(
                                      color:
                                          const Color.fromRGBO(255, 191, 27, 1),
                                      borderColor:
                                          const Color.fromRGBO(255, 191, 27, 1),
                                      size: 20,
                                      value: 3.0,
                                      onChanged: (value) {},
                                    ),
                                    const Text("Nov 30, 2022"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("By John Doe"),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    "100% Payment Protection, 7 days easy return in case item is defective or damaged or different from what was described.")
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              width: double.infinity,
                              height: 0.3,
                              decoration: const BoxDecoration(
                                  border: Border(
                                bottom:
                                    BorderSide(width: 1.0, color: Colors.grey),
                              )),
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Super Cool",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GFRating(
                                      color:
                                          const Color.fromRGBO(255, 191, 27, 1),
                                      borderColor:
                                          const Color.fromRGBO(255, 191, 27, 1),
                                      size: 20,
                                      value: 3.0,
                                      onChanged: (value) {},
                                    ),
                                    const Text("Nov 30, 2022"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("By John Doe"),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    "100% Payment Protection, 7 days easy return in case item is defective or damaged or different from what was described.")
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              width: double.infinity,
                              height: 0.3,
                              decoration: const BoxDecoration(
                                  border: Border(
                                bottom:
                                    BorderSide(width: 1.0, color: Colors.grey),
                              )),
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Super Cool",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GFRating(
                                      color:
                                          const Color.fromRGBO(255, 191, 27, 1),
                                      borderColor:
                                          const Color.fromRGBO(255, 191, 27, 1),
                                      size: 20,
                                      value: 3.0,
                                      onChanged: (value) {},
                                    ),
                                    const Text("Nov 30, 2022"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("By John Doe"),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    "100% Payment Protection, 7 days easy return in case item is defective or damaged or different from what was described.")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 10.0,
          color: Colors.white,
          child: SizedBox(
              height: 55.0,
              width: double.infinity,
              //Wrap with inkwell and navigate to next

              child: InkWell(
                onTap: () {
                  print("Add to cart");
                  Provider.of<CartProvider>(context, listen: false).add(part);
                },
                child: const Center(
                    child: Text("Add to cart",
                        style: TextStyle(
                            color: Color.fromRGBO(128, 0, 15, 1),
                            fontSize: 18))),
              )),
        )
    );
  }
}
