import '../models/Mechanic.dart';

class FreelancerServices {
  List<Mechanic> mechanics = [];

  //Get Mechanics from Api
  Future<List<Mechanic>> getAllMechanics() async {
    Mechanic mechanic1 = Mechanic(["Wheel balancing", "Painting"], "Mechanic1@fb.com",
        "Mechanic1@tw.com", "Mechanic1@li.com",
        mechanicId: "mch1",
        name: "Mechanic Allan",
        mobile: "+254701606010",
        gender: "Female",
        address: "123 Abc place",
        open: "08:00 am",
        close: "05:00 pm");
    Mechanic mechanic2 = Mechanic(["Wheel balancing", "Painting"], "Mechanic1@fb.com",
        "Mechanic1@tw.com", "Mechanic1@li.com",
        mechanicId: "mch2",
        name: "Toyo Mechanics",
        mobile: "+254701606010",
        gender: "Female",
        address: "123 Bdf place",
        open: "08:00 am",
        close: "05:00 pm");
    Mechanic mechanic3 = Mechanic(["Wheel balancing", "Painting"], "Mechanic1@fb.com",
        "Mechanic1@tw.com", "Mechanic1@li.com",
        mechanicId: "mch3",
        name: "Bikes Kenya Mechanics",
        mobile: "+254701606010",
        gender: "Female",
        address: "465 Abc place",
        open: "08:00 am",
        close: "05:00 pm");
    Mechanic mechanic4 = Mechanic(["Wheel balancing", "Painting"], "Mechanic1@fb.com",
        "Mechanic1@tw.com", "Mechanic1@li.com",
        mechanicId: "mch4",
        name: "Low tyres",
        mobile: "+254701606010",
        gender: "Female",
        address: "123 Abc open",
        open: "08:00 am",
        close: "05:00 pm");

    mechanics.add(mechanic1);
    mechanics.add(mechanic2);
    mechanics.add(mechanic3);
    mechanics.add(mechanic4);

    return mechanics;
  }

  //Add mechanic
  void addMechanic(Mechanic mechanic) async{
    mechanics.add(mechanic);
  }
}
