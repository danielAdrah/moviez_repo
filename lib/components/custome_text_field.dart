import 'package:flutter/material.dart';

import '../constants.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Enter Your Thoughts",
        hintStyle: TextStyle(color: Colors.black.withOpacity(0.3)),
        hintTextDirection: TextDirection.ltr,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide()),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide()),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: kSecondaryColor),
        ),
      ),
    );
  }
}
