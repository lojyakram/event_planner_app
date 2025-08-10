import 'package:event_planner_app/core/theme_manager/color_palette.dart';
import 'package:flutter/material.dart';


class Custombutton extends StatelessWidget {
  final VoidCallback? onTap;
  final Color?  backgroundColor;
  final Widget child;
  const Custombutton({
    super.key,
    this.onTap,
    this.backgroundColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
     var theme = Theme.of(context);
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: backgroundColor ?? ColorPalette.primaryColor,
        padding: const EdgeInsets.symmetric(vertical: 14.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
            side:  BorderSide(
              color: ColorPalette.primaryColor
            )
        )
      ),
      child: child,
    );
  }
}