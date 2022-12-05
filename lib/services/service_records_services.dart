import '../models/ServiceRecord.dart';
import '../models/Mechanic.dart';

class ServiceRecordsServices{
  List<ServiceRecord> records  = [];

  Future<List<ServiceRecord>> getAllRecords() async {
    ServiceRecord record1 = ServiceRecord(
        dateTime: DateTime(2022, 12, 5),
        service: "Oil Change",
        cost: 2500,
        garage: null,
        mechanic: Mechanic(["Oil"], "Mechanic@fb", "Mechanic@twitter", "Mechanic@linkedIn", mechanicId: "mechanic05", name: "Allan Allan", mobile: "+254701609514", gender: "Male", address: "Millimani annex, 4th street, S. Fransisco", open: "08:00", close: "19:00")
    );
    ServiceRecord record2 = ServiceRecord(
        dateTime: DateTime(2022, 12, 4),
        service: "Engine Wash",
        cost: 1500,
        garage: null,
        mechanic: Mechanic(["Oil"], "Mechanic@fb", "Mechanic@twitter", "Mechanic@linkedIn", mechanicId: "mechanic05", name: "Allan Allan", mobile: "+254701609514", gender: "Male", address: "Millimani annex, 4th street, S. Fransisco", open: "08:00", close: "19:00")
    );
    records.add(record1);
    records.add(record2);
    return records;
  }

  Future<void> addRecord(ServiceRecord record) async {
    records.add(record);
  }
}