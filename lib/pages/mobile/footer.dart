import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:vts/constants/colors.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.bgDark,
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 24),
          Text(
            "© 2024 IEEE VTS Bangalore. All rights reserved. | Terms and Conditions ",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.white),
          ),
          SizedBox(height: 16),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 8.0,
            children: [
              FlutterSocialButton(
                onTap: () {},
                mini: true,
                buttonType: ButtonType.linkedin,
              ),
              FlutterSocialButton(
                onTap: () {},
                mini: true,
                buttonType: ButtonType.facebook,
              ),
              FlutterSocialButton(
                onTap: () {},
                mini: true,
                buttonType: ButtonType.google,
              ),
              FlutterSocialButton(
                onTap: () {},
                mini: true,
                buttonType: ButtonType.whatsapp,
              ),
              // Add more social media icons here
            ],
          ),
          SizedBox(height: 16),
          Divider(
            color: CustomColors.lightGrey.withOpacity(0.3),
            height: 2,
          ),
          SizedBox(height: 16),
          Text(
            "Designed and Developed by: Vansh & Riya",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
