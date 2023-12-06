import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:medicapp/core/utls/app_router.dart';

void main() {
  runApp(const MedicApp());
}

class MedicApp extends StatelessWidget {
  const MedicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.light().copyWith(
   //  textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
