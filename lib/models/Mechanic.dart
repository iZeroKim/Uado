import 'dart:core';

class Mechanic{
  final String mechanicId, name, mobile, gender, address, open, close;
  final List<String> tags;
  final String? facebook, twitter, linkedin;

  Mechanic(this.tags, this.facebook, this.twitter, this.linkedin, {
    required this.mechanicId,
    required this.name,
    required this.mobile,
    required this.gender,
    required this.address,
    required this.open,
    required this.close
  });



}