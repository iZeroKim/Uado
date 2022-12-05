import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class GarageMechanics extends StatefulWidget {
  const GarageMechanics({Key? key}) : super(key: key);

  @override
  State<GarageMechanics> createState() => _GarageMechanicsState();
}

class _GarageMechanicsState extends State<GarageMechanics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(24, 158, 138, 1),
        elevation: 1.0,
        title: const Text("Mechanics"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //Convert to a dynamically generated list
              Card(
                child: Container(
                  height: 70,
                  child: const GFListTile(
                      avatar: CircleAvatar(
                        minRadius: 20,
                        backgroundImage: AssetImage("assets/images/avatar.jpg"),
                      ),
                      titleText: 'John Doe',
                      subTitleText: '45 repair tasks'),
                ),
              ),
              Card(
                child: Container(
                  height: 70,
                  child: const GFListTile(
                      avatar: CircleAvatar(
                        minRadius: 20,
                        backgroundImage: AssetImage("assets/images/avatar.jpg"),
                      ),
                      titleText: 'John Doe',
                      subTitleText: '45 repair tasks'),
                ),
              ),
              Card(
                child: Container(
                  height: 80,
                  child: const GFListTile(
                      avatar: CircleAvatar(
                        minRadius: 20,
                        backgroundImage: AssetImage("assets/images/avatar.jpg"),
                      ),
                      titleText: 'John Doe',
                      subTitleText: '45 repair tasks'),
                ),
              ),
              Card(
                child: Container(
                  height: 80,
                  child: const GFListTile(
                      avatar: CircleAvatar(
                        minRadius: 20,
                        backgroundImage: AssetImage("assets/images/avatar.jpg"),
                      ),
                      titleText: 'John Doe',
                      subTitleText: '45 repair tasks'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
