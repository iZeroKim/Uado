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


  Car(
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
