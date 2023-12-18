import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.text,
    this.prefixIcon,
    this.onChanged,
    this.suffixIcon,
    this.obscureText = false,
  });

  final String text;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: (value) {
        if (value!.isEmpty) {
          return 'field is required';
        }
        return null;
      },
      obscureText: obscureText!,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        label: Text(text),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
