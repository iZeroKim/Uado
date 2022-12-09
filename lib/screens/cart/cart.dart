import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uado/providers/cart_provider.dart';

class ShoppingList extends StatefulWidget {
  const ShoppingList({Key? key}) : super(key: key);

  @override
  State<ShoppingList> createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {

  List list = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      list = Provider.of<CartProvider>(context, listen: false).items;
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
        title: const Text("Garages"),
        actions: [
          Text("Items : ${list.length}", style: TextStyle(color: Colors.white),),
        ],
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ShoppingListView()
              ],
            )),
      ),
      bottomSheet: Text("Continue"),
    );
  }
}

class ShoppingListView extends StatelessWidget {
  const ShoppingListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(builder: (context, value, child) {

      return Expanded(
          child: ListView.builder(
              itemCount: value.items.length,
              itemBuilder: (context, index) {
                var item = value.items[index];
                return Container(
                  child: Text(item.name),
                );
              }));
    });
  }
}
