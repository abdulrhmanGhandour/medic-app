import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDoctorProfileAppBar extends StatelessWidget {
  const CustomDoctorProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
      ],
    );
  }
}
