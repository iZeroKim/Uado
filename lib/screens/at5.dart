import 'package:flutter/material.dart';
import 'package:uado/main.dart';

class At5Page extends StatefulWidget {
  const At5Page({Key? key}) : super(key: key);

  @override
  State<At5Page> createState() => _At5PageState();
}

class _At5PageState extends State<At5Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(78, 199, 50, 1),
        elevation: 1.0,

      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(
            children: [Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30.0,),
                Card(
                  color: Color.fromRGBO(78, 199, 50, 1),
                  shape: StadiumBorder(),
                      child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                          )),
                    ),

                const SizedBox(
                  height: 20.0,
                ),
              ],
            )],
          ),
        ),
      ),
    );
  }
}