import 'package:event_planner_app/core/routes/page_routes_name.dart';
import 'package:event_planner_app/core/theme_manager/color_palette.dart';
import 'package:event_planner_app/core/widgets/CustomButton.dart';
import 'package:event_planner_app/core/widgets/CustomTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:event_planner_app/core/constants/app_assets.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(AppAssets.logoIcn, height: 185,),
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
                SizedBox(height: 16),
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
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, PageRoutesName.forgetpassword);
                    },
                    child: Text(
                       "Forget Password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: ColorPalette.primaryColor,
                        decoration: TextDecoration.underline,
                        decorationColor: ColorPalette.primaryColor,
                        decorationThickness: 2,
                      ),
                    )
                  )
                ),
                SizedBox(height: 24),
                ElevatedButton(onPressed: () {}, child: Text("Login")),
                SizedBox(height: 24),
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t Have Account ?",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: ColorPalette.primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor: ColorPalette.primaryColor,
                      decorationThickness: 1.5,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, PageRoutesName.register),
                     child: Text(
                    "Create Account",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  ),
                ],
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(child: Divider(color: ColorPalette.primaryColor,)),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("Or", style: theme.textTheme.bodyMedium?.copyWith(
                      color: ColorPalette.primaryColor
                     )),
            
                    ),
                    Expanded(child: Divider(color: ColorPalette.primaryColor,)),
                  ],
                ),
                SizedBox(height: 24),
                Custombutton(
                  backgroundColor: Colors.transparent,
                  onTap: (){},
                  child: Row(
                    spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Image.asset(AppAssets.googleIcn),
                      Text("Login With Google", style: theme.textTheme.bodyLarge?.copyWith(
                        color: ColorPalette.primaryColor,
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),
      ),
    );

  }
}