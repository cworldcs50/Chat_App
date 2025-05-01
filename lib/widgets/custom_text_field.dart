import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.onChanged,
    required this.hintText,
    this.obscureText = false,
    super.key,
  });

  final String hintText;
  final Function(String) onChanged;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    ///i convert from TextField to TextFormField to validate data
    return TextFormField(
      obscureText: obscureText,
      validator: (data) {
        if (data!.isEmpty) {
          ///the message will appear under Text form field if error happen
          return 'Field is required';
        } else {
          return null;
        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
