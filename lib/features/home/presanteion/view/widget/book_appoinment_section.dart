import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/styles.dart';
import 'package:medicapp/core/utls/widgets/box_shadow.dart';
import 'package:medicapp/core/utls/widgets/custom_text_button.dart';

class BookAppoinmentSection extends StatelessWidget {
  const BookAppoinmentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.18,
      decoration: BoxDecoration(
        boxShadow: [boxShadow()],
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Consultation Price',
                  style:
                      Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Text(
                  ' \$100',
                  style: Styles.textStyle20.copyWith(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
           const  CustomTextButton(
              text: 'Book Appointment',
              color: ColorData.kPrimaryColor,
            
            
            ),
          ],
        ),
      ),
    );
  }
}
