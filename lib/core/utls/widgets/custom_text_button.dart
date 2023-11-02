import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.text,
      required this.textColor,
      required this.color});

  final String text;
  final Color textColor ;
  final Color color ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
      
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorData.kPrimaryColor,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
            child: Text(
              text,
              style: Styles.textStyle18
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
