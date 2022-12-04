import 'dart:core';

class Mechanic {
  final String name, mobile, gender, address, open, close;
  final List<String> tags;
  final String? facebook, twitter, linkedin, garageId;

  Mechanic(this.tags, this.facebook, this.twitter, this.linkedin,
      {required this.garageId,
      required this.name,
      required this.mobile,
      required this.gender,
      required this.address,
      required this.open,
      required this.close});
}
