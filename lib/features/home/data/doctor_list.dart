import 'package:medicapp/core/utls/assets.dart';

List<Doctors> dcctorsList = [
  Doctors(name: 'Dr.Alex', image: AssetsData.kDoctor1Image),
  Doctors(name: 'Dr.mary', image: AssetsData.kDoctor2Image),
  Doctors(name: 'Dr.hary', image: AssetsData.kDoctor3Image),
  Doctors(name: 'Dr.bone', image: AssetsData.kDoctor4Image),
];

class Doctors {
  final String name;
  final String image;

  Doctors({required this.name, required this.image});
}
