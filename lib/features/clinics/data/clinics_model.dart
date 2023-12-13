import 'package:medicapp/core/utls/assets.dart';

class Clinics {
  final String name;
  final String image;

  Clinics({required this.name, required this.image});
}

List<Clinics> clinicsList = [
  Clinics(
    name: 'Cardiology Clinic',
    image: AssetsData.kCardiologyClinic,
  ),
  Clinics(
    name: 'Dental Clinic',
    image: AssetsData.kDentalClinic,
  ),
  Clinics(
    name: 'Dermatology Clinic',
    image: AssetsData.kDermatologyClinic,
  ),
  Clinics(
    name: 'Ear ,Nose and Throat Clinics',
    image: AssetsData.kEarNoseThroatClinics,
  ),
  Clinics(
    name: 'Internal Medicinec linics',
    image: AssetsData.kInternalMedicineclinics,
  ),
  Clinics(
    name: 'Obstetrics Gynecology Clinic',
    image: AssetsData.kObstetricsGynecologyClinic,
  ),
  Clinics(
    name: 'Ophthalmology Clinic',
    image: AssetsData.kOphthalmologyClinic,
  ),
  Clinics(
    name: 'Orthopedic Clinic',
    image: AssetsData.kOrthopedicClinic,
  ),
];
