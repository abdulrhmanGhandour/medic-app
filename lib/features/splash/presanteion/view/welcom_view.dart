import 'package:flutter/material.dart';
import 'package:medicapp/features/splash/presanteion/view/widget/welcome_view_body.dart';

class WelcomView extends StatelessWidget {
  const WelcomView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            WelcomViewBody(),
          ],
        ),
      ),
    );
  }
}
