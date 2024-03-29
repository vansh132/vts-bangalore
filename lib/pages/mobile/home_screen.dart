import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vts/constants/colors.dart';
import 'package:vts/pages/mobile/appbar.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    final List<String> imageUrls = [
      "https://thumbs.dreamstime.com/b/hackathon-banner-illustration-abstract-futuristic-background-glitch-effect-neon-colors-screen-template-hack-contest-174586045.jpg"
    ];

    return Scaffold(
      endDrawer: drawer(context),
      body: Container(
        margin: EdgeInsets.all(12),
        width: width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              const Center(
                child: Text(
                  "Powered By: ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, letterSpacing: 1.5),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.1,
                  ),
                  Image.network(
                    height: height * 0.1,
                    width: width * 0.3,
                    "https://i0.wp.com/uppsolutions.net/wp-content/uploads/2019/01/IEEE-Advancing-Technology-for-Humanity-logo.png?fit=550%2C308&ssl=1",
                  ),
                  SizedBox(
                    width: width * 0.1,
                  ),
                  Container(
                    width: width * 0.40,
                    child: const Text(
                      "IEEE Advancing Technology For Humanity ",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Center(
                child: CarouselSlider.builder(
                  itemCount: imageUrls.length,
                  options: CarouselOptions(
                    aspectRatio: 16 / 10,
                    autoPlay: true,
                    enlargeCenterPage: true,
                  ),
                  itemBuilder: (context, index, realIndex) {
                    final imageUrl = imageUrls[index];
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 0.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        image: DecorationImage(
                          image: NetworkImage(imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                "Recent Events: ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: CustomColors.alertColor),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Center(
                child: Stack(
                  children: [
                    Card(
                      margin: const EdgeInsets.all(16.0),
                      elevation: 4.0,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(
                              height: height * 0.02,
                            ),
                            const Text(
                              "The IEEE Vehicular Technology Society (VTS) is an applications-oriented society of IEEE, with technical activities concentrated around three pillars: Wireless Communications, Land Transportation, and Motor Vehicles. VTS activities are carried out by volunteers, including reviewers, editors, conference organizers, standards committee participants, and local chapter volunteers. The affairs of the Society are managed by a set of elected volunteers, the Board of Governors (BoG).",
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    // Add your action when the button is pressed
                                  },
                                  child: Text('More Info'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 20,
                      child: Card(
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: CustomColors.buttonColor.withOpacity(.8),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.0, horizontal: 12.0),
                          child: Text(
                            'Introduction',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
