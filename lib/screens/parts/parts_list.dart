import 'package:flutter/material.dart';

class PartsList extends StatefulWidget {
  const PartsList({Key? key}) : super(key: key);

  @override
  State<PartsList> createState() => _PartsListState();
}

class _PartsListState extends State<PartsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(24, 158, 138, 1),
        elevation: 1.0,
        title: const Text("Buy parts"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.white,
              size: 30,
            ),
            padding: const EdgeInsets.only(right: 15.0),
            tooltip: 'Search',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
              size: 30,
            ),
            padding: const EdgeInsets.only(right: 15.0),
            tooltip: 'Shopping cart',
            onPressed: () {},
          ),
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
                            children: [
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
                            children: [
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
                Center(
                child: Text("Buy Items")
              )],
            )
          ],
        ),
      ),
    );
  }
}
