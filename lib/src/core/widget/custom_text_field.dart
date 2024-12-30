import 'package:electronic_rosary/src/core/widget/border_text_field.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.label,
      required this.hint,
      required this.inputType,
      required this.controller,
      required this.prefix,
      required this.validator});

  final String label;
  final String hint;
  final TextInputType inputType;
  final TextEditingController controller;
  final Widget prefix;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      keyboardType: inputType,
      controller: controller,
      decoration: InputDecoration(
          label: Text(label),
          prefix: prefix,
          suffix: IconButton(
              onPressed: () {
                controller.clear();
              },
              icon: const Icon(Icons.remove)),
          hintText: hint,
          border: borderText(color: Colors.black87, radius: 30),
          enabledBorder: borderText(color: Colors.green, radius: 40),
          focusedBorder: borderText(color: Colors.indigo, radius: 50),
          errorBorder: borderText(color: Colors.red, radius: 60),
          ),
    );
  }
}
