import 'package:flutter/material.dart';


class At702Page extends StatelessWidget {
  const At702Page({super.key});

  @override
  Widget build(BuildContext context) {
    double bottom = MediaQuery.of(context).size.height * 0.8;

    return Scaffold(
      resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.add_circle_outline_rounded, color: Colors.white, size: 30,),
              padding: const EdgeInsets.only(right: 15.0),
              tooltip: 'Add Mechanic',
              onPressed:() {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title:const Text('WHAT DO YOU WANT TO ADD?', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold)),
                        children: <Widget>[
                          const SizedBox(height: 5.0,),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 5.0,
                              right: 5.0,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 0.5,
                              padding: const EdgeInsets.only(
                                left: 5.0,
                                right: 20.0,
                              ),
                              decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(width: 1.0, color: Colors.grey),
                                  )
                              ),
                            ),
                          ),
                          const SizedBox(height: 15.0,),
                          SimpleDialogOption(
                            onPressed: () {},
                            child:const Text('Mechanic', style: TextStyle(fontSize: 16)),
                          ),
                          SimpleDialogOption(
                            onPressed: () { print("Add garage"); },
                            child: const Text('Garage', style: TextStyle(fontSize: 16)),
                          ),
                        ],
                      );
                    });
              },

            ),
          ],
        ),
        body: Stack(
          children: [
            Positioned.fill(
              top: 0,
              left: 0,
              bottom: bottom,
              child: const Image(
                image: AssetImage("assets/images/avatar.jpg"),
                fit: BoxFit.cover,
              ),
            ),

            Positioned(
              top: 330,
              left: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ANDROIDRIDE',
                    style: TextStyle(
                      backgroundColor: Colors.black54,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Flutter background Image Using Stack',
                    style: TextStyle(
                      backgroundColor: Colors.black87,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}