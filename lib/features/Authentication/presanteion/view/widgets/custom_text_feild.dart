import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.text,
    this.prefixIcon,
    
  });

  final String text;
  final Widget? prefixIcon;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        label: Text(text),
        prefixIcon: prefixIcon,
       
      ),
    );
  }
}
