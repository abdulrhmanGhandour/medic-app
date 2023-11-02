import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/widgets/box_shadow.dart';
import 'package:medicapp/features/schedule/presanteion/view/widgets/custom_text_state.dart';

class AppoinmentStateBar extends StatelessWidget {
  const AppoinmentStateBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        margin: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * .06,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorData.kWhiteColorFA,
            boxShadow: [boxShadow()]),
        child: const Row(
          children: [
            Expanded(
              child: CustomTextState(
                text: 'Upcoming',
              ),
            ),
            Expanded(
              child: CustomTextState(
                text: 'Completed',
              ),
            ),
            Expanded(
              child: CustomTextState(
                text: 'Canceled',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
