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
        backgroundColor: const Color.fromRGBO(78, 199, 50, 1),
        elevation: 1.0,
        title: const Text("Mechanics"),
      ),
      body: SafeArea(
        child: Card(
          child: Container(
            height: 70,
            child: const GFListTile(
                avatar:CircleAvatar(
                  minRadius: 20,
                  backgroundImage: AssetImage("assets/images/avatar.jpg"),
                ),
                titleText:'John Doe',
                subTitleText:'45 repair tasks'
            ),
          ),
        ),
      ),
    );
  }
}
