import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/features/home/data/doctor_list.dart';
import 'package:medicapp/features/home/presanteion/view/widget/appoinment_view_body.dart';
import 'package:medicapp/features/home/presanteion/view/widget/book_appoinment_section.dart';

class AppoinmentView extends StatelessWidget {
  const AppoinmentView({super.key, required this.doctors});

  final Doctors doctors;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorData.kPrimaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppoinmentViewBody(doctors: doctors),
            ],
          ),
        ),
        bottomNavigationBar: const BookAppoinmentSection(),
      ),
    );
  }
}
