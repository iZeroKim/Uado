import '../models/Club.dart';

class ClubServices {

  List<Club> clubs = [];
  //Get Trips from Api
  Future<List<Club>> getAllClubs() async {
    Club club1 = Club(name: "VW gti", imagePath: "assets/images/gti.jfif", logo: "assets/images/vw.jfif");

    clubs.add(club1);
    return clubs;
  }
  Future<void> addClub(Club club) async {
    clubs.add(club);
  }
}
