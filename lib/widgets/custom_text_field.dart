import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  //final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final Icon prefixIcon;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final FocusNode? focusNode;
  final bool autoFocus;
  final bool enabled;
  final int? maxLines;

  const CustomTextField({
    super.key,
    required this.labelText,
    //this.hintText,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixIcon = const Icon(Icons.text_fields),
    this.validator,
    this.onChanged,
    this.onSubmitted,
    this.focusNode,
    this.autoFocus = false,
    this.enabled = true,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      focusNode: focusNode,
      autofocus: autoFocus,
      enabled: enabled,
      maxLines: maxLines,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          //borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Colors.white, width: 1.0),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(fontWeight: FontWeight.bold),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        //hintText: hintText,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
            //borderRadius: BorderRadius.circular(8.0),
            ),
      ),
    );
  }
}
