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
        title: const Text("Cart"),
        actions: [
          Text("Items count : ${list.length}", style: const TextStyle(color: Colors.white),),
        ],
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ShoppingListView()
              ],
            )),
      ),
        bottomNavigationBar: BottomAppBar(
          elevation: 10.0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 80.0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Payable Amount",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Text("Ksh. 1000",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    color: const Color.fromRGBO(24, 158, 138, 1),
                    child: SizedBox(
                        height: 45.0,
                        width: double.infinity,
                        //Wrap with inkwell and navigate to next

                        child: InkWell(
                          onTap: () {
                            print("Proceed to payment");
                          },
                          child: const Center(
                              child: Text("CONTINUE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18))),
                        )),
                  ),
                ],
              ),
            ),
          ),
        )
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
                  child: Card(
                      semanticContainer: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width:150,
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                    AssetImage(item.thumbnail),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${item.name}\n",
                                          style: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                                          maxLines: 2,
                                        ),
                                        InkWell(
                                            onTap: (){

                                              Provider.of<CartProvider>(context, listen: false).remove(item);
                                            },
                                            child: const Icon(Icons.cancel_outlined, color: Colors.grey, size: 28))
                                      ],
                                    ),
                                    Text(
                                      item.brand,
                                      style: const TextStyle(color: Colors.grey,),
                                      maxLines: 1,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text("Quantity"),
                                        Container(
                                          padding: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: const Color.fromRGBO(24, 158, 138, 1)),
                                          child: Row(
                                            children: [
                                              InkWell(
                                                  onTap: () {},
                                                  child: const Icon(
                                                    Icons.remove,
                                                    color: Colors.white,
                                                    size: 16,
                                                  )),
                                              Container(
                                                margin: const EdgeInsets.symmetric(horizontal: 3),
                                                padding:
                                                const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(3),
                                                    color: Colors.white),
                                                child: const Text(
                                                  '3',
                                                  style: TextStyle(color: Colors.black, fontSize: 16),
                                                ),
                                              ),
                                              InkWell(
                                                  onTap: () {},
                                                  child: const Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                    size: 16,
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),

                                    Text(
                                      "Ksh. ${item.cost}",
                                      style: const TextStyle(fontSize: 16, color: Color.fromRGBO(24, 158, 138, 1), fontWeight: FontWeight.bold),
                                      maxLines: 1,
                                    ),
                                  ],
                                )),
                          ),

                        ],
                      )),
                );
              }));
    });
  }
}
