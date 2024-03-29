import 'package:flutter/material.dart';

class MobileHomeScreeen extends StatefulWidget {
  const MobileHomeScreeen({super.key});

  @override
  State<MobileHomeScreeen> createState() => _MobileHomeScreeenState();
}

class _MobileHomeScreeenState extends State<MobileHomeScreeen> {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey,
        appBar: AppBar(
          leading: Container(
            margin: const EdgeInsets.only(left: 10),
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR3ljIUrYP7Pu52rkksb7YHpX9A0YK22I6-hgVp7lH5Q&s",
            ),
          ),
          actions: [
            IconButton(
              alignment: Alignment.topLeft,
              icon: const Icon(Icons.menu),
              onPressed: () {
                scaffoldkey.currentState?.openDrawer();
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Add onTap logic for Item 1
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Add onTap logic for Item 2
                },
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text("Mobile Home Screen"),
        ));
  }
}
