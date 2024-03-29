import 'dart:io';

import 'package:flutter/material.dart';

import 'dart:js' as js;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vts/constants/colors.dart';
import 'package:vts/pages/mobile/appbar.dart';

class MobileHomeScreen extends StatefulWidget {
  const MobileHomeScreen({Key? key}) : super(key: key);

  @override
  State<MobileHomeScreen> createState() => _MobileHomeScreenState();
}

class _MobileHomeScreenState extends State<MobileHomeScreen> {
  bool _expanded = false;

  void _toggleExpanded() {
    setState(() {
      _expanded = !_expanded;
    });
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
        margin: const EdgeInsets.all(12),
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
                    "https://i0.wp.com/uppsolutions.net/wp-content/uploads/2019/01/IEEE-Advancing-Technology-for-Humanity-logo.png?fit=550%2C308&ssl=1",
                    height: height * 0.1,
                    width: width * 0.3,
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
                        border: Border.all(
                          color: CustomColors.primaryDarkColor,
                          width: 10.0,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(2.0),
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.fill,
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
                                    js.context.callMethod('open', [
                                      'https://vtsociety.org/membership/membership-benefits'
                                    ]);
                                  },
                                  child: const Text('More Info'),
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
                            'IEEE VTS',
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
              Center(
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        'https://images.squarespace-cdn.com/content/v1/583ed05c59cc68a8c3e45c0f/1482074282081-KQBCRLEWPLWTJKWBCR4X/vision.png?format=2500w',
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
                                        'https://t3.ftcdn.net/jpg/00/89/26/12/360_F_89261279_NW4f1PBnllRQbTMEBOCkpZ2dpfiwbLIo.jpg',
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
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(16.0),
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Field of Interest',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        textAlign: TextAlign.justify,
                        'The fields of interest of the Society are the theoretical, experimental and operational aspects of electrical and electronics engineering in mobile radio, motor vehicles and land transportation.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 16.0),
                      Card(
                        elevation: 2.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ListTile(
                              leading: Icon(
                                Icons.circle,
                                size: 15,
                              ),
                              title: Text(
                                  textAlign: TextAlign.justify,
                                  'Mobile radio shall include all terrestrial mobile services.'),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.circle,
                                size: 15,
                              ),
                              title: Text(
                                  textAlign: TextAlign.justify,
                                  'Motor vehicles shall include the components and systems and motive power for propulsion and auxiliary functions.'),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.circle,
                                size: 15,
                              ),
                              title: Text(
                                  textAlign: TextAlign.justify,
                                  'Land transportation shall include the components and systems used in both automated and non-automated facets of ground transport technology.'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                  elevation: 4.0,
                  margin: EdgeInsets.all(16.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'About ICVTTS Conference',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                textAlign: TextAlign.justify,
                                _expanded
                                    ? 'Vehicular Technology Society (VTS) Bangalore is one of the dynamic and vibrant societies in the region. Many professionals who are the members work in various domains in automobile and related industry. Recently, not only in this region but entire world has seen tremendous growth in the automobile industry. Research and development, innovation, number of applications in land, underwater and space has significantly increased. It is felt an urgent need to bring together scientists, engineers, researchers, developers, operators and all share holder to discuss the issues and latest technological innovation in this and related industries. ICVTTS is conceived to create a platform to bring them together.'
                                    : 'Vehicular Technology Society (VTS) Bangalore is one of the dynamic and vibrant societies in the region. Many professionals who are the members work in various domains in automobile and related industry. ',
                                maxLines: _expanded ? null : 2,
                                overflow:
                                    _expanded ? null : TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: _toggleExpanded,
                                child: Text(
                                  _expanded ? 'Read Less' : 'Read More',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  js.context.callMethod('open', [
                                    'https://www.ieeevtsbangalore-icvtts2024.online/'
                                  ]);
                                },
                                icon: Icon(Icons.arrow_forward),
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        ),
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}
