import 'package:flutter/material.dart';

class PartDetails extends StatefulWidget {
  const PartDetails({Key? key}) : super(key: key);

  @override
  State<PartDetails> createState() => _PartDetailsState();
}

class _PartDetailsState extends State<PartDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Column(
            children: [
              Text("Part Details")
            ],
          )
        ],
      ),
    );
  }
}
