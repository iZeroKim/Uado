import '../models/Trip.dart';
import '../models/DayTrips.dart';

class TripServices {
  //Get Trips from Api
  Future<List<DayTrip>> getAllTrips() async {
    List<DayTrip> dayTrips = [];
    List<Trip> trips = [];

    Trip trip1 = Trip(startTime: DateTime(2022, 12, 3, 10, 00, 00), endTime: DateTime(2022, 12, 3, 12, 00, 00), startLocation: "Elgon Court, Ralphe Bunche Road, Nairobi", endLocation: "Panorama Park Hotel, Naivasha");
    Trip trip2 = Trip(startTime: DateTime(2022, 12, 3, 10, 00, 00), endTime: DateTime(2022, 12, 3, 12, 00, 00), startLocation: "Panorama Park Hotel, Naivasha", endLocation: "Elgon Court, Ralphe Bunche Road, Nairobi");

    trips.add(trip1);
    trips.add(trip2);
    DayTrip dayTrip1 = DayTrip(DateTime(2022), trips);
    dayTrips.add(dayTrip1);

    return dayTrips;
  }
}
