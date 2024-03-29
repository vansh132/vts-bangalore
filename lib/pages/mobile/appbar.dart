import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vts/constants/colors.dart';
import 'package:vts/routes/app_route_constants.dart';

AppBar appBar = AppBar(
  leading: Container(
    margin: const EdgeInsets.only(left: 10),
    child: Image.network(
      "https://assets.zyrosite.com/cdn-cgi/image/format=auto,w=220,fit=crop,q=95/AGBvpEEMy0HRaOqe/screenshot_2024-01-20_at_4.58.29_pm__1_-removebg-preview-AzGDRzRzGXh5jGEM.png",
    ),
  ),
);

Widget drawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
            decoration: BoxDecoration(
              color: CustomColors.primaryColor,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(10), // Adjust the value as needed
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR3ljIUrYP7Pu52rkksb7YHpX9A0YK22I6-hgVp7lH5Q&s",
                    width: 80, // Adjust the width and height as needed
                    height: 80,
                    fit: BoxFit.cover, // Adjust the BoxFit property as needed
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: const Text(
                    "IEEE Vehicular Technology Society Chapter Bangalore",
                    softWrap: true,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
        ListTile(
          leading: Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {
            context.goNamed(MyAppRouteConstants.mobileHomeScreen);
          },
        ),
        ListTile(
          leading: Icon(Icons.school),
          title: const Text('About'),
          onTap: () {
            context.goNamed(MyAppRouteConstants.mobileAboutScreen);
          },
        ),
        ListTile(
          leading: Icon(Icons.wysiwyg_sharp),
          title: const Text('Excom'),
          onTap: () {
            // Add onTap logic for Item 2
          },
        ),
        ListTile(
          leading: Icon(Icons.accessibility_new_rounded),
          title: const Text('Special Interest Group'),
          onTap: () {
            // Add onTap logic for Item 2
          },
        ),
        ListTile(
          leading: Icon(Icons.ac_unit_rounded),
          title: const Text('Student Branch Chapter'),
          onTap: () {
            // Add onTap logic for Item 2
          },
        ),
        ListTile(
          leading: Icon(Icons.event_rounded),
          title: const Text('Events'),
          onTap: () {
            // Add onTap logic for Item 2
          },
        ),
        ListTile(
          leading: Icon(Icons.account_tree_sharp),
          title: const Text('Resources'),
          onTap: () {
            // Add onTap logic for Item 2
          },
        ),
        ListTile(
          leading: Icon(Icons.contact_page),
          title: const Text('Contact Us'),
          onTap: () {
            // Add onTap logic for Item 2
          },
        ),
      ],
    ),
  );
}
