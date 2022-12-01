import 'package:flutter/material.dart';

class TripDetails extends StatefulWidget {
  const TripDetails({Key? key}) : super(key: key);

  @override
  State<TripDetails> createState() => _TripDetailsState();
}

class _TripDetailsState extends State<TripDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(78, 199, 50, 1),
        elevation: 1.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Trips Details"),
            const Text("22, November 2022", style: TextStyle(fontSize: 10),)
          ],
        ),

      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(
                left: 0.0, right: 0.0, bottom: 10.0),
            child:
            Column(
              children: [
              ],
            )


        ),
      ),
    );
  }
}
