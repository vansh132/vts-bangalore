import 'package:flutter/material.dart';
import 'package:vts/constants/colors.dart';

class DesktopHomeScreen extends StatefulWidget {
  const DesktopHomeScreen({super.key});

  @override
  State<DesktopHomeScreen> createState() => _DesktopHomeScreenState();
}

class _DesktopHomeScreenState extends State<DesktopHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        Text(
          "Desktop Home Screen - heading large",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          "Desktop Home Screen - heading medium",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          "Desktop Home Screen - heading small",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 36,
        ),
        Text(
          "Desktop Home Screen - title large",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          "Desktop Home Screen - title medium",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          "Desktop Home Screen - title small",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          height: 36,
        ),
        Text(
          "Desktop Home Screen - body large",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          "Desktop Home Screen - body medium",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          "Desktop Home Screen - body small",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(
          height: 36,
        ),
        Text(
          "Desktop Home Screen - lable large",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text(
          "Desktop Home Screen - label medium",
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(
          height: 36,
        ),
        ElevatedButton(
          onPressed: null,
          child: Text("Demo button"),
          style: Theme.of(context).elevatedButtonTheme.style,
        ),
        const SizedBox(
          height: 16,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("Demo button"),
          // style: Theme.of(context),
        )
      ]),
    ));
  }
}
