import '../models/Car.dart';
import '../models/Insurance.dart';

class CarServices{
      Future<Car> getCar() async{
            Car currentCar = Car( regNumber : "KCK 319R",
                make  : "Volkswagen",
                model  : "VW Gti",
                yearOfManufacture  : 2019,
                odometerReading  : 1000,
                transmission  : "Manual",
                fuelType  : "Petrol",
                colour  : "Black",
                accidents  : false,
                insurance  : Insurance(insuranceProvider: "Jubilee Insurance", validFrom: DateTime(2022, 1, 1), validTo: DateTime(2022, 12,31), brokerName: "Peter Allan", brokerNumber: "+254701010101")
            );
            return currentCar;
      }
}