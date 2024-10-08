import 'package:flutter/material.dart';
import 'package:vts/pages/desktop/widgets/footer.dart';
import 'package:vts/pages/mobile/appbar.dart';
import 'dart:js' as js;

class MobileSpecialInterestGroup extends StatelessWidget {
  const MobileSpecialInterestGroup({Key? key});

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
                margin: EdgeInsets.symmetric(vertical: 10.0),
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Special Interest Group',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        width: double.infinity, // Full width
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2017/02/19/23/09/success-2081167_1280.jpg',
                          fit: BoxFit
                              .cover, // Adjust the image to cover the container
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'To encourage more participation and interest from industry professional, under the industry hub of Bangalore section, VTS Chapter is first to start Special Interest Group (SIG) in the industry. In 2023, we established SIG VTS TVS Motor and SIG VTS Harman International. The objective of this SIG to work collaboratively with IEEE expert towards identifying some of the relevant challenges and innovation that industry is engaged in.',
                        textAlign: TextAlign.justify,
                        softWrap: true,
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              js.context.callMethod('open', [
                                'https://www.tvsiql.com/professional-chapters/'
                              ]);
                            },
                            child: Text(
                              'TVSM IEEE VTS SIG',
                              softWrap: true,
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'More Info: ',
                            style: TextStyle(fontSize: 10.0),
                          ),
                          TextButton(
                            onPressed: () {
                              // context.goNamed(Ex)
                            },
                            child: Text(
                              'Contact ExCom',
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
            ),
            CustomFooter(),
          ],
        ),
      ),
    );
  }
}
