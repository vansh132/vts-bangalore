import 'package:flutter/material.dart';
import 'package:vts/constants/colors.dart';
import 'package:vts/pages/desktop/widgets/nav_bar.dart';

class DesktopAboutScreen extends StatelessWidget {
  const DesktopAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //   int selectedPage = 0;
    // List<int> pages = [0, 1, 2, 3];
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: CustomColors.bgLight,
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NavBar(
                selectedPage: 1,
              ),
              Container(
                color: Colors.yellow,
                height: double.maxFinite,
                child: Placeholder(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
