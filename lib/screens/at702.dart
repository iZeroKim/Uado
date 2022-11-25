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
                Icons.star_border_outlined, color: Colors.white, size: 30,),
              padding: const EdgeInsets.only(right: 15.0),
              tooltip: 'Rate',
              onPressed:() {},

            ),
            IconButton(
              icon: const Icon(
                Icons.share_outlined, color: Colors.white, size: 30,),
              padding: const EdgeInsets.only(right: 15.0),
              tooltip: 'Share',
              onPressed:() {},

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