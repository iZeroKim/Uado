import 'package:flutter/cupertino.dart';

class AppService {
  final String name;
  final String imagePath;
  final Widget? link;

  AppService({required this.name, required this.imagePath, this.link});
}
