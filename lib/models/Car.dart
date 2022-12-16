import 'Insurance.dart';

class Car {
  final String regNumber;
  final String make;
  final String model;
  final int yearOfManufacture;
  final int odometerReading;
  final String transmission;
  final String fuelType;
  final String colour;
  final bool accidents;
  final Insurance insurance;
  final int? doors;
  final  int? seatingCapacity;
  final int? engineCapacity;
  final bool? powerSteering;
  final bool? powerWindows;
  final bool? workingAC;
  final String? about;


  Car(this.doors, this.seatingCapacity, this.engineCapacity, this.powerSteering, this.powerWindows, this.workingAC, this.about,
      {required this.regNumber,
      required this.make,
      required this.model,
      required this.yearOfManufacture,
      required this.odometerReading,
      required this.transmission,
      required this.fuelType,
      required this.colour,
      required this.accidents,
      required this.insurance});
}
