import 'package:flutter/material.dart';
import 'package:vts/constants/colors.dart';
import 'package:vts/pages/desktop/widgets/nav_bar.dart';

class DesktopExComScreen extends StatelessWidget {
  const DesktopExComScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: CustomColors.bgLight,
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const NavBar(
                selectedPage: 2,
              ),
              Container(
                color: Colors.yellow,
                height: double.maxFinite,
                child: const Placeholder(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
