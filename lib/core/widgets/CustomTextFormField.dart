import 'package:flutter/material.dart';
import '../theme_manager/color_palette.dart';

class Customtextformfield extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Widget? prefixIcon;
  final void Function(String)? onChange;
  final void Function(String)? onFieldSubmitted;
  final bool isPassword;

  const Customtextformfield({
    super.key,
    this.prefixIcon,
    this.hintText,
    this.controller,
    this.onChange,
    this.onFieldSubmitted,
    this.isPassword = false,
  });

  @override
  State<Customtextformfield> createState() => _CustomTextFormFieldState();
}

  class _CustomTextFormFieldState extends State<Customtextformfield> {

  bool obscureText = true;

    @override
    Widget build(BuildContext context) {
      return TextFormField(
        controller: widget.controller,
        onChanged: widget.onChange,
        onFieldSubmitted: widget.onFieldSubmitted,
        obscureText: widget.isPassword ? obscureText : false,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: ColorPalette.textFieldBorderHintTextColor,
          ),
          suffixIcon: widget.isPassword ? GestureDetector(
            onTap: (){
              setState(() {
                obscureText = !obscureText;
              });
            },
            child: Icon(
              obscureText? Icons.visibility_off : Icons.visibility,
              color: ColorPalette.textFieldBorderColor,
            ),
          )
          : null,
          prefixIcon: widget.prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(
              color: ColorPalette.textFieldBorderColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(
              color: ColorPalette.textFieldBorderColor,
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(
              color: ColorPalette.textFieldBorderColor,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(
              color: ColorPalette.textFieldBorderErrorColor,
              width: 2,
            ),
          ),
        ),
      );
    }
  }