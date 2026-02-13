import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  const CustomTextfield({
    super.key,
    required this.hint,
    required this.isPassword,
    required this.controller,
  });
  final String hint;
  final bool isPassword;
  final TextEditingController controller;

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  late bool _obscureText;
  @override
  void initState() {
    _obscureText = widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primary,
      cursorHeight: 20,
      obscureText: _obscureText,
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText != _obscureText;
            });
          },
          child: Icon(CupertinoIcons.eye),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: widget.hint,
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}
