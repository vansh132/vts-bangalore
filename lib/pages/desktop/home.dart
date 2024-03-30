import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vts/constants/colors.dart';
import 'package:vts/pages/desktop/widgets/custom_image_slider.dart';
import 'package:vts/pages/desktop/widgets/footer.dart';
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
              const CustomImageSlider(),
              Container(
                height: 500,
                // color: CustomColors.lightGrey,
                child: const Center(
                  child: Text("Recent Events"),
                ),
              ),
              ieeeVTS(width, _isHovering),
              mission(),
              fieldOfInterest(width, _isHovering),
              icvttsConference(width, _isHovering),
              CustomFooter()
            ],
          ),
        ),
      ),
    );
  }

  Widget mission() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 48),
      child: IntrinsicHeight(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Card(
                margin: const EdgeInsets.all(16.0),
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://imgs.search.brave.com/tcSoUE5kJ6FKIoM4Go0thCZI5dVfJc8evxyqX6rk9cs/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWM0LmRlcG9zaXRw/aG90b3MuY29tLzEw/MjE5NzQvMzU1L2kv/NDUwL2RlcG9zaXRw/aG90b3NfMzU1NTIx/Ni1zdG9jay1waG90/by10YXJnZXQuanBn',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Mission',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        textAlign: TextAlign.justify,
                        'The function of the Society is to promote its objectives through the leadership of its Officers and Members in encouraging the exchange of both technical and professional information among members of the Society',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Card(
                margin: const EdgeInsets.all(16.0),
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://imgs.search.brave.com/kBQG-S0_odHzI8Zf6dLglCboT1bBjTCxQAEiWjtqCck/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS1waG90/by93b3JkLXZpc2lv/bi1hZ2FpbnN0LWJ1/c2luZXNzLW1lZXRp/bmdfMTEzNC02ODM2/NS5qcGc_c2l6ZT02/MjYmZXh0PWpwZw',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Vision',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        textAlign: TextAlign.justify,
                        'Be the association of reference for VT professionals’ needs in the areas of life-long learning, standards creation, dissemination of new technologies and networking.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
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
                  "ICVTTS CONFERENCE",
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
                      "Vehicular Technology Society (VTS) Bangalore is one of the dynamic and vibrant societies in the region. Many professionals who are the members work in various domains in automobile and related industry. Recently, not only in this region but entire world has seen tremendous growth in the automobile industry. Research and development, innovation, number of applications in land, underwater and space has significantly increased. It is felt an urgent need to bring together scientists, engineers, researchers, developers, operators and all share holder to discuss the issues and latest technological innovation in this and related industries. ICVTTS is conceived to create a platform to bring them together.",
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
          ],
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
                js.context.callMethod('open', ['https://vtsociety.org/']);
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
                          "https://imgs.search.brave.com/Xx2fmR3m-_RaYEc_K9p3_i2VRt8izmoE0EVHypkBnW4/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2RhLzFj/L2E3L2RhMWNhNzI3/OGJlOGE3Y2Q3ZjIx/MDFlY2VkYjI5Yjdl/LmpwZw",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.handshake_rounded),
              onPressed: () {
                js.context.callMethod('open',
                    ['https://vtsociety.org/membership/membership-benefits']);
              },
              label: const Text(
                "Explore Membership Benefits",
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
