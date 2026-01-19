import 'package:flutter/material.dart';

class SignUpField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool isPassword;

  const SignUpField({
    super.key,
    required this.icon,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            prefixIcon: Icon(icon),
            hintText: hintText,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(vertical: 16),
          ),
        ),
      ),
    );
  }
}
