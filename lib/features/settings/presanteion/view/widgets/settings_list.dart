import 'package:flutter/material.dart';
import 'package:medicapp/features/settings/presanteion/view/widgets/settings_item.dart';

class SettingsList extends StatelessWidget {
  const SettingsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettengesItem(
          text: 'profile',
          icon: Icons.person,
          color: Colors.blue.withOpacity(.4),
          iconColor: Colors.blue,
        ),
        SettengesItem(
          text: 'Notifications',
          icon: Icons.notifications,
          iconColor: Colors.purple,
          color: Colors.purple.withOpacity(.4),
        ),
        SettengesItem(
          text: 'privacy',
          icon: Icons.privacy_tip,
          iconColor: Colors.blueAccent,
          color: Colors.blueAccent.withOpacity(.4),
        ),
        SettengesItem(
          text: 'General',
          icon: Icons.settings,
          color: Colors.green.withOpacity(.4),
          iconColor: Colors.green,
        ),
        SettengesItem(
          text: 'About Us',
          icon: Icons.warning,
          color: Colors.amber.withOpacity(.4),
          iconColor: Colors.deepOrangeAccent,
        ),
      ],
    );
  }
}