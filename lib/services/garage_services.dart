import '../models/Garage.dart';

class GarageServices{

  //Get garages from Api
  Future<List<Garage>> getAllGarages() async {

    List<Garage> garages = [];
    Garage garage1 = Garage(["Wheel balancing", "Painting"], "garage1@fb.com", "garage1@tw.com", "garage1@li.com", garageId: "mch1", name: "Elion garages", mobile: "+254701606010", gender: "Female", address: "123 Abc place", open: "08:00 am", close: "05:00 pm");
    Garage garage2 = Garage(["Wheel balancing", "Painting"], "garage1@fb.com", "garage1@tw.com", "garage1@li.com", garageId: "mch2", name: "Toyo garages", mobile: "+254701606010", gender: "Female", address: "123 Bdf place", open: "08:00 am", close: "05:00 pm");
    Garage garage3 = Garage(["Wheel balancing", "Painting"], "garage1@fb.com", "garage1@tw.com", "garage1@li.com", garageId: "mch3", name: "Bikes Kenya garages", mobile: "+254701606010", gender: "Female", address: "465 Abc place", open: "08:00 am", close: "05:00 pm");
    Garage garage4 = Garage(["Wheel balancing", "Painting"], "garage1@fb.com", "garage1@tw.com", "garage1@li.com", garageId: "mch4", name: "Low tyres", mobile: "+254701606010", gender: "Female", address: "123 Abc open", open: "08:00 am", close: "05:00 pm");



    garages.add(garage1);
    garages.add(garage2);
    garages.add(garage3);
    garages.add(garage4);

    return garages;
  }
}