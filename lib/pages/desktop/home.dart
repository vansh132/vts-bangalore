import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:vts/constants/colors.dart';
import 'package:vts/pages/desktop/widgets/custom_image_slider.dart';
import 'package:vts/pages/desktop/widgets/nav_bar.dart';

class DesktopHomeScreen extends StatefulWidget {
  const DesktopHomeScreen({super.key});

  @override
  State<DesktopHomeScreen> createState() => _DesktopHomeScreenState();
}

class _DesktopHomeScreenState extends State<DesktopHomeScreen> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: CustomColors.bgLight,
          width: double.maxFinite,
          // height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const NavBar(
                selectedPage: 0,
              ),
              const SizedBox(
                height: 16,
              ),
              poweredBy(),
              const SizedBox(
                height: 16,
              ),
              // const CustomImageSlider(),
              // Container(
              //   height: 500,
              //   // color: CustomColors.lightGrey,
              //   child: const Center(
              //     child: Text("Recent Events"),
              //   ),
              // ),
              ieeeVTS(width, _isHovering),
              fieldOfInterest(width, _isHovering),
            ],
          ),
        ),
      ),
    );
  }

  Widget ieeeVTS(double width, bool isHovering) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      color: const Color(0xffe5eef5),
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            MouseRegion(
              onEnter: (_) => setState(() => _isHovering = true),
              onExit: (_) => setState(() => _isHovering = false),
              child: AnimatedContainer(
                duration: const Duration(
                    milliseconds: 300), // Set the duration of the animation
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: LinearGradient(
                    colors: [
                      _isHovering
                          ? const Color(0xFF0D2A40)
                          : const Color(0xFF2970A6),
                      _isHovering
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
                  "IEEE VTS",
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
                          "https://imgs.search.brave.com/WyC_lgTb2j3esIBU130DK8kv6bPhYsoX8tyA0WLM_Zw/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/NjE0ODkzOTYtODg4/NzI0YTE1NDNkP3E9/ODAmdz0xMDAwJmF1/dG89Zm9ybWF0JmZp/dD1jcm9wJml4bGli/PXJiLTQuMC4zJml4/aWQ9TTN3eE1qQTNm/REI4TUh4bGVIQnNi/M0psTFdabFpXUjhN/VE44Zkh4bGJud3dm/SHg4Zkh3PQ",
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
                      "The IEEE Vehicular Technology Society (VTS) is an applications-oriented society of IEEE, with technical activities concentrated around three pillars: Wireless Communications, Land Transportation, and Motor Vehicles. VTS activities are carried out by volunteers, including reviewers, editors, conference organizers, standards committee participants, and local chapter volunteers. The affairs of the Society are managed by a set of elected volunteers, the Board of Governors (BoG).",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: width > 1024 ? 22 : 18),
                      textAlign: TextAlign.justify,
                      softWrap: true,
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_outward),
              onPressed: () {
                js.context.callMethod('open',
                    ['https://vtsociety.org/membership/membership-benefits']);
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
              height: 36,
            ),
          ],
        ),
      ),
    );
  }

  Widget fieldOfInterest(double width, bool isHovering) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      // color: const Color(0xffe5eef5),
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            MouseRegion(
              onEnter: (_) => setState(() => _isHovering = true),
              onExit: (_) => setState(() => _isHovering = false),
              child: AnimatedContainer(
                duration: const Duration(
                    milliseconds: 300), // Set the duration of the animation
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: LinearGradient(
                    colors: [
                      _isHovering
                          ? const Color(0xFF0D2A40)
                          : const Color(0xFF2970A6),
                      _isHovering
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
                  "Field Of Interest",
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
                    width: double.maxFinite * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The fields of interest of the Society are the theoretical, experimental and operational aspects of electrical and electronics engineering in mobile radio, motor vehicles and land transportation. ",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontSize: width > 1024 ? 22 : 18,
                                  fontWeight: FontWeight.w700),
                          textAlign: TextAlign.justify,
                          softWrap: true,
                        ),
                        Text(
                          "(a) Mobile radio shall include all terrestrial mobile services.",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: width > 1024 ? 22 : 18),
                          textAlign: TextAlign.justify,
                          softWrap: true,
                        ),
                        Text(
                          "(b) Motor vehicles shall include the components and systems and motive power for propulsion and auxiliary functions.",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: width > 1024 ? 22 : 18),
                          textAlign: TextAlign.start,
                          softWrap: true,
                        ),
                        Text(
                          "(c) Land transportation shall include the components and systems used in both automated and non-automated facets of ground transport technology.",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: width > 1024 ? 22 : 18),
                          textAlign: TextAlign.justify,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ),
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
                          "https://imgs.search.brave.com/WyC_lgTb2j3esIBU130DK8kv6bPhYsoX8tyA0WLM_Zw/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/NjE0ODkzOTYtODg4/NzI0YTE1NDNkP3E9/ODAmdz0xMDAwJmF1/dG89Zm9ybWF0JmZp/dD1jcm9wJml4bGli/PXJiLTQuMC4zJml4/aWQ9TTN3eE1qQTNm/REI4TUh4bGVIQnNi/M0psTFdabFpXUjhN/VE44Zkh4bGJud3dm/SHg4Zkh3PQ",
                        ),
                        fit: BoxFit.cover,
                      ),
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

  Widget poweredBy() {
    return Column(
      children: [
        const SizedBox(
          height: 24,
        ),
        Center(
          child: Text(
            "Powered By: ",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(
            //   width: width * 0.1,
            // ),
            Image.network(
              height: 124,
              width: 124,
              "https://i0.wp.com/uppsolutions.net/wp-content/uploads/2019/01/IEEE-Advancing-Technology-for-Humanity-logo.png?fit=550%2C308&ssl=1",
            ),
            // SizedBox(
            //   width: width * 0.1,
            // ),
            Container(
              margin: const EdgeInsets.only(left: 28),
              width: 251,
              child: Text(
                "IEEE Advancing Technology For Humanity ",
                softWrap: true,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
