import 'package:flutter/material.dart';
import 'package:vts/pages/mobile/appbar.dart';

class MobileAboutScreen extends StatelessWidget {
  const MobileAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      endDrawer: drawer(context),
      body: Center(
        child: Text("About Screen"),
      ),
    );
  }
}
