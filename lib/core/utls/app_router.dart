import 'package:go_router/go_router.dart';
import 'package:medicapp/features/Authentication/presanteion/view/doctor_login_view.dart';
import 'package:medicapp/features/Authentication/presanteion/view/doctor_sing_up_view.dart';
import 'package:medicapp/features/Authentication/presanteion/view/login_view.dart';
import 'package:medicapp/features/Authentication/presanteion/view/sing_up_view.dart';
import 'package:medicapp/features/clinics/presanteion/view/clinics_view.dart';
import 'package:medicapp/features/home/data/doctor_list.dart';
import 'package:medicapp/features/home/presanteion/view/appoinment_doctor_view.dart';
import 'package:medicapp/features/home/presanteion/view/home_view.dart';
import 'package:medicapp/features/schedule/presanteion/view/schedule_view.dart';
import 'package:medicapp/features/splash/presanteion/view/welcom_view.dart';

abstract class AppRouter {
  static const kWelcomeView = '/';
  static const kHomeView = '/HomeView';
  static const kAppoinmentView = '/AppoinmentView';
  static const kScheduleView = '/ScheduleView';
  static const kLoginView = '/LoginView';
  static const kSingUpView = '/SingUpView';
  static const kClinicsView = '/ClinicsView';
  static const kDoctorLoginView = '/DoctorLoginView';
  static const kDoctorSingUpView = '/DoctorSingUpView';


  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kWelcomeView,
        builder: (context, state) => const WelcomView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kAppoinmentView,
        builder: (context, state) => AppoinmentView(
          doctors: state.extra as Doctors,
        ),
      ),
       GoRoute(
        path: kScheduleView,
        builder: (context, state) => const ScheduleView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kSingUpView,
        builder: (context, state) => const SingUpView(),
      ),
       GoRoute(
        path: kClinicsView,
        builder: (context, state) => const ClinicsView(),
      ),
       GoRoute(
        path: kDoctorLoginView,
        builder: (context, state) => const DoctorLoginView(),
      ),
       GoRoute(
        path: kDoctorSingUpView,
        builder: (context, state) => const DoctorSingUpView(),
      ),
    ],
  );
}
