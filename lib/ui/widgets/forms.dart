import 'package:flutter/material.dart';
import 'package:login/shared/theme.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final TextEditingController? controller;

  const CustomFormField({
    Key? key,
    required this.title,
    this.obscureText = false,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: blackTextStyle.copyWith(fontWeight: medium),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: obscureText,
          controller: controller,
          style: blackTextStyle.copyWith(
            fontSize: 14,
            fontWeight: medium,
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
