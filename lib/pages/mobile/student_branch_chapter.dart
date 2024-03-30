import 'package:flutter/material.dart';
import 'package:vts/pages/desktop/widgets/footer.dart';
import 'package:vts/pages/mobile/appbar.dart';
import 'dart:js' as js;

class MobileSBCScreen extends StatelessWidget {
  const MobileSBCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      endDrawer: drawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(12),
              padding: EdgeInsets.all(8),
              child: Card(
                margin: EdgeInsets.all(8.0),
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Student Branch Chapter',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        width: double.infinity, // Full width
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2015/10/31/12/31/meeting-1015591_1280.jpg',
                          fit: BoxFit
                              .cover, // Adjust the image to cover the container
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Currently, we have two student branch chapters (SBC)',
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 8.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                '1. Atria Institute of Technology (Mentor – Dr Ramesh, Student Chair '),
                            Text(
                                '2. Reva University (Mentor, Dr Nayana, Student Chair'),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'We are willing to establish more SBC. We encourage colleges and students to get approval for VTS SBC. Minimum 6 student members with VTS membership and 1 faculty with VTS professional membership (better to have minimum 2-3 faculty) is required.',
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 8.0),
                      Text(
                          "One can file petition online at below link. However, contact ExCom before filing. They will help and guide you to complete the petition."),
                      SizedBox(height: 16.0),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {
                            js.context.callMethod('open', [
                              'https://students.ieee.org/student-branches/form-an-ieee-student-branch/'
                            ]);
                          },
                          child: Text('Petition Link'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CustomFooter(),
          ],
        ),
      ),
    );
  }
}
