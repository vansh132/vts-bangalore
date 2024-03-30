import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vts/pages/desktop/about.dart';
import 'package:vts/pages/desktop/admin/admin.dart';
import 'package:vts/pages/desktop/exCom.dart';
import 'package:vts/pages/desktop/home.dart';
import 'package:vts/pages/mobile/about_screen.dart';
import 'package:vts/pages/mobile/event_screen.dart';
import 'package:vts/pages/mobile/excom_screen.dart';
import 'package:vts/pages/mobile/home.dart';
import 'package:vts/pages/mobile/special_interest_group.dart';
import 'package:vts/pages/mobile/student_branch_chapter.dart';
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
      name: MyAppRouteConstants.desktopAdminScreen,
      path: "/desktop-admin",
      builder: (context, state) => const AdminScreen(),
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
    GoRoute(
      name: MyAppRouteConstants.mobileSIGScreen,
      path: "/mobile-sig",
      pageBuilder: (context, state) {
        return const MaterialPage(child: MobileSpecialInterestGroup());
      },
    ),
    GoRoute(
      name: MyAppRouteConstants.mobileSBCScreen,
      path: "/mobile-sbc",
      pageBuilder: (context, state) {
        return const MaterialPage(child: MobileSBCScreen());
      },
    ),
    GoRoute(
      name: MyAppRouteConstants.mobileExComScreen,
      path: "/mobile-excom",
      pageBuilder: (context, state) {
        return const MaterialPage(child: MobileExComScreen());
      },
    ),
    GoRoute(
      name: MyAppRouteConstants.mobileEventScreen,
      path: "/mobile-events",
      pageBuilder: (context, state) {
        return MaterialPage(child: MobileEventScreen());
      },
    ),
  ]);
}
