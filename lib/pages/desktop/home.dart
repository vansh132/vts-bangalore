import 'package:flutter/material.dart';
import 'package:vts/constants/colors.dart';
import 'package:vts/pages/desktop/widgets/nav_bar.dart';

class DesktopHomeScreen extends StatefulWidget {
  const DesktopHomeScreen({super.key});

  @override
  State<DesktopHomeScreen> createState() => _DesktopHomeScreenState();
}

class _DesktopHomeScreenState extends State<DesktopHomeScreen> {
  int selectedPage = 0;
  List<int> pages = [0, 1, 2, 3];
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
              NavBar(
                selectedPage: 0,
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
