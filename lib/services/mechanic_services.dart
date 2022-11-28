import '../models/Mechanic.dart';

class MechanicServices{

  //Get mechanics from Api
  Future<List<Mechanic>> getAllMechanics() async {

    List<Mechanic> mechanics = [];
    Mechanic mechanic1 = Mechanic(["Wheel balancing", "Painting"], "mechanic1@fb.com", "mechanic1@tw.com", "mechanic1@li.com", mechanicId: "mch1", name: "Elion mechanics", mobile: "+254701606010", gender: "Female", address: "123 Abc place", open: "08:00 am", close: "05:00 pm");

    mechanics.add(mechanic1);

    return mechanics;
  }
}