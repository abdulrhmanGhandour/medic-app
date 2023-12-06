import 'package:flutter/material.dart';
import 'package:medicapp/features/settings/presanteion/view/widgets/settings_view_body.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Scaffold(
        body: SetteingsViewBody(),
      ),
    );
  }
}