import 'package:flutter/material.dart';

class MobileHomeScreeen extends StatefulWidget {
  const MobileHomeScreeen({super.key});

  @override
  State<MobileHomeScreeen> createState() => _MobileHomeScreeenState();
}

class _MobileHomeScreeenState extends State<MobileHomeScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("Mobile Home Screen"),
    ));
  }
}
