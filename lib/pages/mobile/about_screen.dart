import 'package:flutter/material.dart';
import 'package:vts/pages/desktop/widgets/footer.dart';
import 'package:vts/pages/mobile/appbar.dart';
import 'dart:js' as js;

class MobileAboutScreen extends StatelessWidget {
  const MobileAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar,
      endDrawer: drawer(context),
      body: Container(
        margin: const EdgeInsets.all(12),
        padding: EdgeInsets.all(8),
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "About",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                elevation: 4.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      8.0), // Adjust the border radius as needed
                  child: Image.network(
                    "https://images.unsplash.com/photo-1558008258-3256797b43f3?q=80&w=2831&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    fit: BoxFit
                        .cover, // Ensure the image covers the entire space
                  ),
                ),
              ),
              Text(
                  textAlign: TextAlign.justify,
                  "VTS Bangalore is approved and inaugurated in early 2020. Founding chair, Dr Navin Kumar initiated with full dedication to take the society forward with around 40 professional members and a couple of student members. With the support of volunteer and their efforts, as on 2023, VTS Bangalore has over 350 members out of which over 200 is student member."),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bangalore Section',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'VTS Bangalore is approved and inaugurated in early 2020. Founding chair, Dr. Navin Kumar initiated with full dedication to take the society forward with around 40 professional members and a couple of student members. With the support of volunteers and their efforts, as of 2023, VTS Bangalore has over 350 members out of which over 200 are student members.',
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              js.context.callMethod(
                                  'open', ['https://ieeebangalore.org/']);
                            },
                            child: Text(
                              'More Info',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              CustomFooter()
            ],
          ),
        ),
      ),
    );
  }
}
