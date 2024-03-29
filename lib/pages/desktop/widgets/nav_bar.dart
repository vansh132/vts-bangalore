import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vts/constants/colors.dart';
import 'package:vts/routes/app_route_constants.dart';

class NavBar extends StatefulWidget {
  final int selectedPage;
  const NavBar({super.key, required this.selectedPage});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      // color: Colors.red,
      margin: const EdgeInsets.symmetric(vertical: 16),
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              // color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.network(
                    "https://assets.zyrosite.com/cdn-cgi/image/format=auto,w=220,fit=crop,q=95/AGBvpEEMy0HRaOqe/screenshot_2024-01-20_at_4.58.29_pm__1_-removebg-preview-AzGDRzRzGXh5jGEM.png",
                  ),
                  Text(
                    width >= 1440
                        ? "IEEE Vehicular Technological Society"
                        : "IEEE VTS: Bangalore",
                    style: Theme.of(context).textTheme.headlineMedium,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              // color: Colors.red,
              height: double.maxFinite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: widget.selectedPage == 0
                        ? BoxDecoration(
                            color: CustomColors.primaryColor,
                            borderRadius: BorderRadius.circular(24),
                          )
                        : const BoxDecoration(
                            color: Colors.transparent,
                          ),
                    child: GestureDetector(
                      onTap: () {
                        context.pushNamed(
                          MyAppRouteConstants.homeRouteName,
                        );
                      },
                      child: Text(
                        "Home",
                        style: widget.selectedPage == 0
                            ? Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  // decoration: TextDecoration.underline,
                                  color: Colors.white,
                                  letterSpacing: 0.2,
                                )
                            : Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: widget.selectedPage == 1
                        ? BoxDecoration(
                            color: CustomColors.primaryColor,
                            borderRadius: BorderRadius.circular(24),
                          )
                        : const BoxDecoration(
                            color: Colors.transparent,
                          ),
                    child: GestureDetector(
                      onTap: () {
                        context.pushNamed(
                          MyAppRouteConstants.desktopAboutScreen,
                        );
                      },
                      child: Text(
                        "About",
                        style: widget.selectedPage == 1
                            ? Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  // decoration: TextDecoration.underline,
                                  color: Colors.white,
                                  letterSpacing: 0.2,
                                )
                            : Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: widget.selectedPage == 2
                        ? BoxDecoration(
                            color: CustomColors.primaryColor,
                            borderRadius: BorderRadius.circular(24),
                          )
                        : const BoxDecoration(
                            color: Colors.transparent,
                          ),
                    child: GestureDetector(
                      onTap: () {
                        context.pushNamed(
                          MyAppRouteConstants.desktopExComScreen,
                        );
                      },
                      child: Text(
                        "ExCom",
                        style: widget.selectedPage == 2
                            ? Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  // decoration: TextDecoration.underline,
                                  color: Colors.white,
                                  letterSpacing: 0.2,
                                )
                            : Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: widget.selectedPage == 3
                        ? BoxDecoration(
                            color: CustomColors.primaryColor,
                            borderRadius: BorderRadius.circular(24),
                          )
                        : const BoxDecoration(
                            color: Colors.transparent,
                          ),
                    child: GestureDetector(
                      onTap: () {
                        // context.pushNamed(
                        //   MyAppRouteConstants.homeRouteName,
                        // );
                      },
                      child: Text(
                        "Events",
                        style: widget.selectedPage == 3
                            ? Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  // decoration: TextDecoration.underline,
                                  color: Colors.white,
                                  letterSpacing: 0.2,
                                )
                            : Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: widget.selectedPage == 4
                        ? BoxDecoration(
                            color: CustomColors.primaryColor,
                            borderRadius: BorderRadius.circular(24),
                          )
                        : const BoxDecoration(
                            color: Colors.transparent,
                          ),
                    child: GestureDetector(
                      onTap: () {
                        // context.pushNamed(
                        //   MyAppRouteConstants.homeRouteName,
                        // );
                      },
                      child: Text(
                        "Resource",
                        style: widget.selectedPage == 4
                            ? Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  // decoration: TextDecoration.underline,
                                  color: Colors.white,
                                  letterSpacing: 0.2,
                                )
                            : Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
