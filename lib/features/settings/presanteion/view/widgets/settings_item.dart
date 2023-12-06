import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/styles.dart';

class SettengesItem extends StatelessWidget {
  const SettengesItem(
      {super.key,
      required this.color,
      required this.iconColor,
      required this.icon,
      required this.text});

  final Color color;
  final Color iconColor;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:16,horizontal: 20),
      child: Row(
        children: [
          Container(
            decoration:  BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: IconButton(
              onPressed: () {},
              icon:  Icon(
               icon,
                color: iconColor,
                size: 28,
              ),
            ),
          ),
          const SizedBox(
            width:16,
          ),
          Text(
            text,
            style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
