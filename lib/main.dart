import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:medicapp/core/utls/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:medicapp/features/Authentication/presanteion/manger/authentication%20cubit/authentication_cubit.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MedicApp());
}

class MedicApp extends StatelessWidget {
  const MedicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthenticationCubit()),
       
      ],
      child: MaterialApp.router(
        theme: ThemeData.light().copyWith(
            //  textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            ),
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
