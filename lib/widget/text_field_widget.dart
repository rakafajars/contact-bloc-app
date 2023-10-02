import 'package:contact_bloc/theme/theme_color.dart';
import 'package:contact_bloc/theme/theme_text_style.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final String hintText;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final String? errorText;
  const TextFieldWidget(
      {super.key,
      required this.label,
      required this.hintText,
      this.onChanged,
      this.controller,
      this.textInputType,
      this.errorText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 7.5,
        top: 7.5,
        left: 16,
        right: 16,
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
          filled: true,
          errorText: errorText,
          fillColor: ThemeColor().m3SysLightPurple70,
          labelStyle: ThemeTextStyle().m3BodySmall,
          hintStyle: ThemeTextStyle().m3BodyLarge,
          label: Text(
            label,
          ),
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
