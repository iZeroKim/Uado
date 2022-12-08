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
                Icons.star_border_outlined,
                color: Colors.black,
                size: 25,
              ),
              padding: const EdgeInsets.only(right: 5.0),
              tooltip: 'Rate',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.share_outlined,
                color: Colors.black,
                size: 25,
              ),
              padding: const EdgeInsets.only(right: 15.0),
              tooltip: 'Share',
              onPressed: () {},
            ),
          ],
        ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 350,
                width: double.infinity,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image:
                        AssetImage("assets/images/headlight.jfif"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Subaru Headlights\n",
                        style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                        maxLines: 2,
                      ),
                      Text(
                        "Subaru levorg",
                        style: TextStyle(color: Colors.grey,),
                        maxLines: 1,
                      ),
                      Text(
                        "Ksh. 3500",
                        style: TextStyle(fontSize: 16, color: Color.fromRGBO(24, 158, 138, 1), fontWeight: FontWeight.bold),
                        maxLines: 1,
                      ),
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
