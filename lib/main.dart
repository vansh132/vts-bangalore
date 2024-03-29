import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vts/constants/colors.dart';
import 'package:vts/pages/desktop/home.dart';
import 'package:vts/pages/mobile/home.dart';
import 'package:vts/pages/tablet/home.dart';
import 'package:vts/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: CustomColors.bgLight,
        colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.primaryColor),
        useMaterial3: true,
        textTheme: GoogleFonts.openSansCondensedTextTheme(textTheme).copyWith(
          //heading - nunitoSans
          headlineLarge: GoogleFonts.nunitoSans(
              textStyle: const TextStyle().copyWith(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: CustomColors.textBlackColor,
          )),
          headlineMedium: GoogleFonts.nunitoSans(
              textStyle: const TextStyle().copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: CustomColors.textBlackColor,
          )),
          headlineSmall: GoogleFonts.nunitoSans(
              textStyle: const TextStyle().copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: CustomColors.textBlackColor,
          )),
          //title - roboto Serif
          titleLarge: GoogleFonts.robotoSerif(
              textStyle: const TextStyle().copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: CustomColors.textBlackColor,
          )),
          titleMedium: GoogleFonts.robotoSerif(
              textStyle: const TextStyle().copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: CustomColors.textBlackColor,
          )),
          titleSmall: GoogleFonts.robotoSerif(
              textStyle: const TextStyle().copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: CustomColors.textBlackColor,
          )),
          //body - Poppings
          bodyLarge: GoogleFonts.poppins(
              textStyle: const TextStyle().copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: CustomColors.textBlackColor,
          )),
          bodyMedium: GoogleFonts.poppins(
              textStyle: const TextStyle().copyWith(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: CustomColors.textBlackColor,
          )),
          bodySmall: GoogleFonts.poppins(
              textStyle: const TextStyle().copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: CustomColors.textBlackColor.withOpacity(0.5),
          )),
          //lable
          labelLarge: GoogleFonts.openSans(
              textStyle: const TextStyle().copyWith(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: CustomColors.textBlackColor,
          )),
          labelMedium: GoogleFonts.openSans(
              textStyle: const TextStyle().copyWith(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: CustomColors.textBlackColor.withOpacity(0.5),
          )),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: CustomColors.buttonColor,
              foregroundColor: Colors.white),
        ),
      ),
      home: const ResponsiveLayout(
        mobileScaffold: MobileHomeScreeen(),
        desktopScaffold: DesktopHomeScreen(),
        tabletScaffold: TabletHomeScreen(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.primaryColor),
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(
        mobileScaffold: MobileHomeScreeen(),
        desktopScaffold: DesktopHomeScreen(),
        tabletScaffold: MobileHomeScreeen(),
      ),
    );
  }
}
