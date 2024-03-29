import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomImageSlider extends StatelessWidget {
  const CustomImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      "https://thumbs.dreamstime.com/b/hackathon-banner-illustration-abstract-futuristic-background-glitch-effect-neon-colors-screen-template-hack-contest-174586045.jpg"
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: 660,
        aspectRatio: 16 / 9,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1,
        autoPlayCurve: Curves.easeInOut,
        autoPlayInterval: Duration(seconds: 5),
        autoPlayAnimationDuration: Duration(milliseconds: 1200),
      ),
      items: imageUrls.map((String imageUrl) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
