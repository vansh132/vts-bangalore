import 'package:flutter/material.dart';
import 'package:vts/custom_themeData.dart';
import 'package:vts/routes/app_route_config..dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: returnTheme(textTheme),
      routerConfig: MyAppRouter().router,
      // routeInformationParser: MyAppRouter().router.routeInformationParser,
      // routerDelegate: MyAppRouter().router.routerDelegate,
      // routeInformationProvider: MyAppRouter().router.routeInformationProvider,
      // home: const ResponsiveLayout(
      //   mobileScaffold: MobileHomeScreeen(),
      //   desktopScaffold: DesktopHomeScreen(),
      //   tabletScaffold: TabletHomeScreen(),
      // ),
    );
  }
}
