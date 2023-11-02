import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(.2),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(.2),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chat_bubble_outline_outlined,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
