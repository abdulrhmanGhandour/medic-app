import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/styles.dart';
import 'package:medicapp/core/utls/widgets/box_shadow.dart';

class CustomVistItem extends StatelessWidget {
  const CustomVistItem({
    super.key,
    this.color,
    required this.icon,
    required this.text,
    required this.subText,
    this.textColor,
    this.subTextColor,
  });

  final Color? color;
  final Widget icon;
  final String text;
  final String subText;
  final Color? textColor;
  final Color? subTextColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: MediaQuery.of(context).size.height * .25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [boxShadow()],
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: icon,
                iconSize: 60,
              ),
              const Spacer(),
              Text(
                text,
                style: Styles.textStyle18.copyWith(color: textColor),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                subText,
                style: Styles.textStyle14.copyWith(color: subTextColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
