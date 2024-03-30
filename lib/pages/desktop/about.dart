import 'package:flutter/material.dart';
import 'package:vts/constants/colors.dart';
import 'package:vts/pages/desktop/widgets/nav_bar.dart';
import 'package:vts/pages/mobile/about_screen.dart';

class DesktopAboutScreen extends StatelessWidget {
  const DesktopAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width <= 768
        ? MobileAboutScreen()
        : Scaffold(
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
                      width: double.maxFinite,
                      height: double.maxFinite,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 550,
                                width: double.maxFinite,
                                child: Card(
                                  margin: EdgeInsets.symmetric(vertical: 0.0),
                                  elevation: 4.0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                    ),
                                    child: Image.network(
                                      "https://images.unsplash.com/photo-1558008258-3256797b43f3?q=80&w=2831&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Center(
                                  child: Container(
                                    height: 550,
                                    width: double.maxFinite,
                                    color: Colors.black.withOpacity(
                                        0.5), // Adjust opacity as needed
                                    child: Center(
                                      child: Text(
                                        "Welcome to VTS Bangalore! Established and inaugurated in early 2020, VTS Bangalore embarked on its journey under the dedicated leadership of our founding chair, Dr. Navin Kumar. With a vision to propel the society forward, Dr. Kumar \'s unwavering commitment set the foundation, attracting around 40 professional members and a couple of enthusiastic student members. At VTS Bangalore, we are driven by a passion for advancing technology and fostering innovation. Join us as we continue to build a dynamic platform for collaboration, learning, and professional growth in the field of vehicular technology and transportation systems.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
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
