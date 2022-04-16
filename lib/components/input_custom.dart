import 'package:flutter/material.dart';

class InputCustom extends StatelessWidget {
  const InputCustom(
      {Key? key,
      required this.hintText,
      required this.prefixIcon,
      this.sufixIcon,
      required this.obscureText,
      this.keyboardType})
      : super(key: key);

  final String hintText;
  final IconData prefixIcon;
  final Widget? sufixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Color(0xFF6C63FF)),
      cursorColor: const Color(0xFF6C63FF),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(25.0),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFF6C63FF),
          fontSize: 18.48,
        ),
        prefixIcon: Icon(
          prefixIcon,
          color: const Color(0xFF6C63FF),
        ),
        suffixIcon: sufixIcon,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF6C63FF)),
          borderRadius: BorderRadius.all(Radius.circular(35.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFF6C63FF), width: 2.0),
          borderRadius: BorderRadius.circular(35.0),
        ),
      ),
      obscureText: obscureText,
      keyboardType: keyboardType,
    );
  }
}
