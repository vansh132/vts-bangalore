import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:vts/constants/colors.dart';
import 'package:vts/routes/app_route_constants.dart';

class DesktopHomeScreen extends StatefulWidget {
  const DesktopHomeScreen({super.key});

  @override
  State<DesktopHomeScreen> createState() => _DesktopHomeScreenState();
}

class _DesktopHomeScreenState extends State<DesktopHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: CustomColors.bgLight,
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.red,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Text("Logo"),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text("Home"),
                            ),
                            TextButton(
                              onPressed: () {
                                context.goNamed(
                                  MyAppRouteConstants.desktopAboutScreen,
                                );
                              },
                              child: Text("About"),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("ExCom"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.yellow,
                height: double.maxFinite,
                child: Placeholder(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
