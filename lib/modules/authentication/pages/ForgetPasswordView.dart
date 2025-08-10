import 'package:event_planner_app/core/constants/app_assets.dart';
import 'package:event_planner_app/core/theme_manager/color_palette.dart';
import 'package:event_planner_app/core/widgets/CustomButton.dart';
import 'package:event_planner_app/core/widgets/CustomTextFormField.dart';
import 'package:flutter/material.dart';

class Forgetpasswordview extends StatelessWidget {
  const Forgetpasswordview({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppAssets.forgetpasswordImg, height: MediaQuery.of(context).size.width*0.8),
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
            Custombutton(
              backgroundColor: Colors.white,
              child: Text("Rest Password", style: theme.textTheme.bodyLarge,),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}