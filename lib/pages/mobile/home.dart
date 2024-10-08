import 'package:flutter/material.dart';
import 'package:vts/pages/mobile/appbar.dart';
import 'package:vts/pages/mobile/home_screen.dart';

class MobileHomeTopScreeen extends StatefulWidget {
  const MobileHomeTopScreeen({super.key});

  @override
  State<MobileHomeTopScreeen> createState() => _MobileHomeTopScreeenState();
}

class _MobileHomeTopScreeenState extends State<MobileHomeTopScreeen> {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        backgroundColor: Colors.white.withOpacity(.9),
        appBar: appBar,
        endDrawer: drawer(context),
        body: MobileHomeScreen());
    return scaffold;
  }
}
