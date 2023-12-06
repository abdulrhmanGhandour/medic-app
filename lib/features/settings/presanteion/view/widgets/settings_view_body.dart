import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/assets.dart';
import 'package:medicapp/core/utls/widgets/custom_app_bar.dart';
import 'package:medicapp/features/settings/presanteion/view/widgets/settings_item.dart';
import 'package:medicapp/features/settings/presanteion/view/widgets/settings_list.dart';

class SetteingsViewBody extends StatelessWidget {
  const SetteingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomAppBar(
            image: AssetsData.kDoctor1Image,
            text: 'Settings',
          ),
          const SettingsList(),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Divider(
              height: 1,
              color: Colors.grey,
              thickness: 0.8,
            ),
          ),
          SettengesItem(
            icon: Icons.logout,
            text: 'Log out',
            color: Colors.red.withOpacity(.5),
            iconColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
