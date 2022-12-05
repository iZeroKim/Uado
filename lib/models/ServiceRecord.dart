import 'Mechanic.dart';
import 'Garage.dart';
class ServiceRecord{
  final DateTime dateTime;
  final String service;
  final String cost;
  final Garage? garage;
  final Mechanic mechanic;
  ServiceRecord( { required this.dateTime,required this.service, required this.cost, required this.garage, required this.mechanic});
}