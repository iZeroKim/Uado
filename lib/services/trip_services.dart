import '../models/Trip.dart';
import '../models/DayTrips.dart';

class TripServices {

  List<DayTrip> dayTrips = [];
  //Get Trips from Api
  Future<List<DayTrip>> getAllTrips() async {
    List<Trip> trips = [];
    List<Trip> trips2 = [];

    Trip trip1 = Trip(startTime: DateTime(2022, 12, 3, 10, 00, 00), endTime: DateTime(2022, 12, 3, 12, 00, 00), startLocation: "Elgon Court, Ralphe Bunche Road, Nairobi", endLocation: "Panorama Park Hotel, Naivasha");
    Trip trip2 = Trip(startTime: DateTime(2022, 12, 3, 10, 00, 00), endTime: DateTime(2022, 12, 3, 12, 00, 00), startLocation: "Panorama Park Hotel, Naivasha", endLocation: "Elgon Court, Ralphe Bunche Road, Nairobi");

    trips.add(trip1);
    trips.add(trip2);
    trips2.add(trip2);
    DayTrip dayTrip1 = DayTrip(DateTime(2022), trips);
    DayTrip dayTrip2 = DayTrip(DateTime(2022), trips2);

    dayTrips.add(dayTrip1);
    dayTrips.add(dayTrip2);
    return dayTrips;
  }
  Future<void> addTrip(DateTime date, List<Trip> trips) async {
    dayTrips.add(DayTrip(date, trips));
  }
}
