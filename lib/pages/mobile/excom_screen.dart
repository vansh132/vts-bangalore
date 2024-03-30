import 'package:flutter/material.dart';
import 'package:vts/pages/mobile/model/Excom.dart';

class MobileExComScreen extends StatefulWidget {
  const MobileExComScreen({super.key});

  @override
  State<MobileExComScreen> createState() => _MobileExComScreenState();
}

class _MobileExComScreenState extends State<MobileExComScreen> {
  List<Excom> excom = [
    Excom(
        name: "Riya",
        excomPosition: "excomPosition",
        university: "university",
        designation: "designation",
        photoAsset: "assets/images/")
  ];
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
