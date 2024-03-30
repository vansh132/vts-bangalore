import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:vts/constants/colors.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.bgDark,
      // height: 200,
      width: double.maxFinite,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Text(
                    softWrap: true,
                    textAlign: TextAlign.center,
                    "© 2024 IEEE VTS Bangalore. All rights reserved. | Terms and Conditions ",
                    style:
                        TextStyle(fontSize: 15, color: CustomColors.lightGrey),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: CustomColors.lightGrey.withOpacity(0.3),
            height: 2,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Designed and Developed by: Vansh & Riya",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
