import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPassTextFeild extends StatefulWidget {
  const CustomPassTextFeild({super.key, this.onChanged,});

  final Function(String)? onChanged;
  @override
  State<CustomPassTextFeild> createState() => _CustomPassTextFeildState();
}

bool passToggle = true;

class _CustomPassTextFeildState extends State<CustomPassTextFeild> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
     // onChanged: onChanged,

      validator: (value) {
        if (value!.isEmpty) {
          return 'field is required';
        }
        return null;
      },
      obscureText: passToggle ? true : false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        label: const Text('Password'),
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: InkWell(
          onTap: () {
            if (passToggle == true) {
              passToggle == false;
            } else {
              passToggle == true;
            }
            setState(() {});
          },
          child: passToggle
              ? const Icon(CupertinoIcons.eye_slash_fill)
              : const Icon(CupertinoIcons.eye_fill),
        ),
      ),
    );
  }
}
