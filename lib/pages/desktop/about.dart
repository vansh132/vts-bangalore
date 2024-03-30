import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'package:vts/constants/colors.dart';
import 'package:vts/pages/desktop/widgets/footer.dart';
import 'package:vts/pages/desktop/widgets/nav_bar.dart';
import 'package:vts/pages/mobile/about_screen.dart';

class DesktopAboutScreen extends StatefulWidget {
  const DesktopAboutScreen({super.key});

  @override
  State<DesktopAboutScreen> createState() => _DesktopAboutScreenState();
}

class _DesktopAboutScreenState extends State<DesktopAboutScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    bool isHovering = false;

    return width <= 768
        ? MobileAboutScreen()
        : Scaffold(
            body: SingleChildScrollView(
              child: Container(
                color: CustomColors.bgLight,
                width: double.maxFinite,
                // height: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    NavBar(
                      selectedPage: 1,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      width: double.maxFinite,
                      // height: double.maxFinite,
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
                                    margin: EdgeInsets.all(46),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 72),
                                    height: 550,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      color: Colors.white.withOpacity(
                                          0.7), // Adjust opacity as needed
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Welcome to VTS Bangalore! Established and inaugurated in early 2020, VTS Bangalore embarked on its journey under the dedicated leadership of our founding chair, Dr. Navin Kumar. With a vision to propel the society forward, Dr. Kumar \'s unwavering commitment set the foundation, attracting around 40 professional members and a couple of enthusiastic student members. At VTS Bangalore, we are driven by a passion for advancing technology and fostering innovation. Join us as we continue to build a dynamic platform for collaboration, learning, and professional growth in the field of vehicular technology and transportation systems.",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.9),
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
                    ),
                    icvttsConference(width, isHovering),
                    CustomFooter(),
                  ],
                ),
              ),
            ),
          );
  }

  Widget icvttsConference(double width, bool isHovering) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      color: const Color(0xffe5eef5),
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            MouseRegion(
              onEnter: (_) => setState(() => isHovering = true),
              onExit: (_) => setState(() => isHovering = false),
              child: AnimatedContainer(
                duration: const Duration(
                    milliseconds: 300), // Set the duration of the animation
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: LinearGradient(
                    colors: [
                      isHovering
                          ? const Color(0xFF0D2A40)
                          : const Color(0xFF2970A6),
                      isHovering
                          ? const Color(0xFF2970A6)
                          : const Color(0xFF0D2A40),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Text(
                  "About Bangalore Section",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(36),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: const Image(
                        height: 360,
                        image: NetworkImage(
                          "https://imgs.search.brave.com/o33i7iL-GpCyistUQNZprUdkkc5QokXEbV0roOP1T0s/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90dHRj/LXZ0cy5vcmcvcHVi/bGljX2h0bWwvbmV3/LzIwMjIvd3AtY29u/dGVudC91cGxvYWRz/LzFzdGRheVZUUzIy/LXN5bm9wc3lzLXNj/YWxlZC5qcGc",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.maxFinite * 0.5,
                    child: Text(
                      "IEEE Bangalore Section was established in 1977 and is one of the most vibrant and dynamic IEEE sections across the globe. Over the years, the strength of the section has grown steadily, and currently, the Section membership stands around 10,000. This membership is spread across various sectors and is a nice blend of Industry, Academia, and Research organizations. Section Conducted 900+ Technical Activities in the year 2018, 1000+ Technical Activities in the year 2019, and 1400+ Technical Activities in the year 2020, with the help of Student branches and society chapters. IEEE Bangalore Section won the prestigious MGA Outstanding Large Section Award (2013 & 2019) and the R10 Distinguished Large Section Award for the year 2013.",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: width > 1024 ? 20 : 16),
                      textAlign: TextAlign.justify,
                      softWrap: true,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_outward),
              onPressed: () {
                js.context.callMethod('open', ['https://ieeebangalore.org/']);
              },
              label: const Text(
                "Know More",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    CustomColors.buttonColor), // Set the background color
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 24)), // Set padding
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(24.0), // Set rounded corners
                  ),
                ),
                elevation:
                    MaterialStateProperty.all<double>(3), // Set elevation
                textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                    fontSize: 16, color: Colors.white)), // Set text style
                iconColor: MaterialStateProperty.all<Color>(
                    Colors.white), // Set icon color
              ),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
