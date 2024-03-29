import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vts/pages/desktop/about.dart';
import 'package:vts/pages/desktop/exCom.dart';
import 'package:vts/pages/desktop/home.dart';
import 'package:vts/pages/mobile/about_screen.dart';
import 'package:vts/pages/mobile/home.dart';
import 'package:vts/responsive_layout.dart';
import 'package:vts/routes/app_route_constants.dart';

class MyAppRouter {
  GoRouter router = GoRouter(initialLocation: '/', routes: [
    GoRoute(
      name: MyAppRouteConstants.homeRouteName,
      path: "/",
      builder: (context, state) => const ResponsiveLayout(
        desktopScaffold: DesktopHomeScreen(),
        mobileScaffold: MobileHomeTopScreeen(),
        tabletScaffold: MobileHomeTopScreeen(),
      ),
    ),
    GoRoute(
      name: MyAppRouteConstants.desktopAboutScreen,
      path: "/desktop-about",
      builder: (context, state) => const DesktopAboutScreen(),
    ),
    GoRoute(
      name: MyAppRouteConstants.desktopExComScreen,
      path: "/desktop-excom",
      pageBuilder: (context, state) {
        return const MaterialPage(child: DesktopExComScreen());
      },
    ),
    //mobile routes
    GoRoute(
      name: MyAppRouteConstants.mobileHomeScreen,
      path: "/mobile-home",
      pageBuilder: (context, state) {
        return const MaterialPage(child: MobileHomeTopScreeen());
      },
    ),
    GoRoute(
      name: MyAppRouteConstants.mobileAboutScreen,
      path: "/mobile-about",
      pageBuilder: (context, state) {
        return const MaterialPage(child: MobileAboutScreen());
      },
    ),
  ]);
}
