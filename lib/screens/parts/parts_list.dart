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
        title: Text("Buy Parts", style: TextStyle(color:Colors.white)),
      ),
      body:SafeArea(
        child: ListView(
          children: [
            Column(
              children: [Center(
                child: Text("Buy Items")
              )],
            )
          ],
        ),
      ),
    );
  }
}
