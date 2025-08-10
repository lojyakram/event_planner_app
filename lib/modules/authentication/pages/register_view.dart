import 'package:event_planner_app/core/constants/app_assets.dart';
import 'package:event_planner_app/core/theme_manager/color_palette.dart';
import 'package:event_planner_app/core/widgets/CustomButton.dart';
import 'package:event_planner_app/core/widgets/CustomTextFormField.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme =Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AppAssets.nameIcn, height: 185,),
          SizedBox(height: 24),
          Customtextformfield(
            hintText: "Name",
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ImageIcon(
                AssetImage(AppAssets.nameIcn),
                color: ColorPalette.textFieldBorderColor,
              ),
            ),
          ),
          SizedBox(height: 24),
          Customtextformfield(
            hintText: "Email",
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ImageIcon(
                AssetImage(AppAssets.mailIcn),
                color: ColorPalette.textFieldBorderColor,
              ),
            ),
          ),
          SizedBox(height: 24),
          Customtextformfield(
            isPassword: true,
            hintText: "password",
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ImageIcon(
                AssetImage(AppAssets.passwordIcn),
                color: ColorPalette.textFieldBorderColor,
              ),
            ),
          ),
          SizedBox(height: 24),
          Customtextformfield(
            isPassword: true,
            hintText: " Confirm password",
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ImageIcon(
                AssetImage(AppAssets.passwordIcn),
                color: ColorPalette.textFieldBorderColor,
              ),
            ),
          ),
          SizedBox(height: 24),
          Custombutton(
            backgroundColor: Colors.white,
            child: Text("Login", style: theme.textTheme.bodyLarge,),
            onTap: () {},
          ),
          SizedBox(height: 24),
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already Have Account ?",
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: ColorPalette.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: ColorPalette.primaryColor,
                  decorationThickness: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Text(
                  "Login",
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      ),
    );
  }
}