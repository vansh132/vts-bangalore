import 'package:flutter/material.dart';
import 'dart:js' as js;
import 'package:vts/pages/mobile/appbar.dart';

class MobileEventScreen extends StatelessWidget {
  // Sample list of event items
  final List<EventItem> eventItems = [
    EventItem(
      title: 'ICVTTS CONFERENCE',
      description:
          'Join us for a transformative conference experience where industry leaders and innovators come together to share insights, explore trends, and inspire change. With engaging sessions, networking opportunities, and thought-provoking discussions, our conference promises to expand your horizons and empower you with knowledge to thrive in an ever-evolving world. Don\'t miss this chance to connect, learn, and grow with like-minded professionals. See you there!',
      image:
          'https://cdn.socio.events/spai/q_glossy+w_966+to_avif+ret_img/socio.events/wp-content/uploads/2022/10/AdobeStock_503243650-2048x1184.jpeg',
      link: 'https://www.ieeevtsbangalore.in/',
    ),
    EventItem(
      title: 'Conference',
      description: 'Conference Event',
      image:
          'https://images.unsplash.com/photo-1515187029135-18ee286d815b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29uZmVyZW5jZSUyMGlhbWdlfGVufDB8fDB8fHww',
      link: 'https://vtsociety.org/',
    ),
    EventItem(
      title: 'ICVTTS CONFERENCE - Day2',
      description:
          'Join us for a transformative conference experience where industry leaders and innovators come together to share insights, explore trends, and inspire change. With engaging sessions, networking opportunities, and thought-provoking discussions, our conference promises to expand your horizons and empower you with knowledge to thrive in an ever-evolving world. Don\'t miss this chance to connect, learn, and grow with like-minded professionals. See you there!',
      image:
          'https://cdn.socio.events/spai/q_glossy+w_966+to_avif+ret_img/socio.events/wp-content/uploads/2022/10/AdobeStock_503243650-2048x1184.jpeg',
      link: 'https://www.ieeevtsbangalore.in/',
    ),
    EventItem(
      title: 'Conference - Day2',
      description: 'Conference Event',
      image:
          'https://images.unsplash.com/photo-1515187029135-18ee286d815b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29uZmVyZW5jZSUyMGlhbWdlfGVufDB8fDB8fHww',
      link: 'https://vtsociety.org/',
    ),
    EventItem(
      title: 'ICVTTS CONFERENCE',
      description:
          'Join us for a transformative conference experience where industry leaders and innovators come together to share insights, explore trends, and inspire change. With engaging sessions, networking opportunities, and thought-provoking discussions, our conference promises to expand your horizons and empower you with knowledge to thrive in an ever-evolving world. Don\'t miss this chance to connect, learn, and grow with like-minded professionals. See you there!',
      image:
          'https://cdn.socio.events/spai/q_glossy+w_966+to_avif+ret_img/socio.events/wp-content/uploads/2022/10/AdobeStock_503243650-2048x1184.jpeg',
      link: 'https://www.ieeevtsbangalore.in/',
    ),
    EventItem(
      title: 'Conference - Day3',
      description: 'Conference Event',
      image:
          'https://images.unsplash.com/photo-1515187029135-18ee286d815b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29uZmVyZW5jZSUyMGlhbWdlfGVufDB8fDB8fHww',
      link: 'https://vtsociety.org/',
    ),
    EventItem(
      title: 'Conference - Day4',
      description: 'Conference Event',
      image:
          'https://images.unsplash.com/photo-1515187029135-18ee286d815b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29uZmVyZW5jZSUyMGlhbWdlfGVufDB8fDB8fHww',
      link: 'https://vtsociety.org/',
    ),
    EventItem(
      title: 'Conference - Day5',
      description: 'Conference Event',
      image:
          'https://images.unsplash.com/photo-1515187029135-18ee286d815b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29uZmVyZW5jZSUyMGlhbWdlfGVufDB8fDB8fHww',
      link: 'https://vtsociety.org/',
    ),
    EventItem(
      title: 'Conference - Day4',
      description: 'Conference Event',
      image:
          'https://images.unsplash.com/photo-1515187029135-18ee286d815b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29uZmVyZW5jZSUyMGlhbWdlfGVufDB8fDB8fHww',
      link: 'https://vtsociety.org/',
    ),
    EventItem(
      title: 'Conference - Day5',
      description: 'Conference Event',
      image:
          'https://images.unsplash.com/photo-1515187029135-18ee286d815b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29uZmVyZW5jZSUyMGlhbWdlfGVufDB8fDB8fHww',
      link: 'https://vtsociety.org/',
    ),
    EventItem(
      title: 'Conference - Day4',
      description: 'Conference Event',
      image:
          'https://images.unsplash.com/photo-1515187029135-18ee286d815b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29uZmVyZW5jZSUyMGlhbWdlfGVufDB8fDB8fHww',
      link: 'https://vtsociety.org/',
    ),
    EventItem(
      title: 'Conference - Day5',
      description: 'Conference Event',
      image:
          'https://images.unsplash.com/photo-1515187029135-18ee286d815b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29uZmVyZW5jZSUyMGlhbWdlfGVufDB8fDB8fHww',
      link: 'https://vtsociety.org/',
    ),
    EventItem(
      title: 'Conference - Day4',
      description: 'Conference Event',
      image:
          'https://images.unsplash.com/photo-1515187029135-18ee286d815b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29uZmVyZW5jZSUyMGlhbWdlfGVufDB8fDB8fHww',
      link: 'https://vtsociety.org/',
    ),
    EventItem(
      title: 'Conference - Day5',
      description: 'Conference Event',
      image:
          'https://images.unsplash.com/photo-1515187029135-18ee286d815b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29uZmVyZW5jZSUyMGlhbWdlfGVufDB8fDB8fHww',
      link: 'https://vtsociety.org/',
    ),
    EventItem(
      title: 'Conference - Day4',
      description: 'Conference Event',
      image:
          'https://images.unsplash.com/photo-1515187029135-18ee286d815b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29uZmVyZW5jZSUyMGlhbWdlfGVufDB8fDB8fHww',
      link: 'https://vtsociety.org/',
    ),
    EventItem(
      title: 'Conference - Day5',
      description: 'Conference Event',
      image:
          'https://images.unsplash.com/photo-1515187029135-18ee286d815b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29uZmVyZW5jZSUyMGlhbWdlfGVufDB8fDB8fHww',
      link: 'https://vtsociety.org/',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      endDrawer: drawer(context),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 425 && constraints.maxWidth < 770) {
            // Show GridView with 2 item count
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: eventItems.length,
              itemBuilder: (context, index) {
                return _buildEventCard(context, eventItems[index]);
              },
            );
          } else {
            // Show ListView
            return ListView.builder(
              itemCount: eventItems.length,
              itemBuilder: (context, index) {
                return _buildEventCard(context, eventItems[index]);
              },
            );
          }
        },
      ),
    );
  }

  Widget _buildEventCard(BuildContext context, EventItem eventItem) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200, // Fixed height for all images
            child: Image.network(
              eventItem.image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  eventItem.title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  eventItem.description,
                  maxLines: 2, // Limiting to 2 lines initially
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                InkWell(
                  onTap: () {
                    js.context.callMethod('open', [eventItem.link]);
                  },
                  child: Text(
                    'Read more',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EventItem {
  final String title;
  final String description;
  final String image;
  final String link;

  EventItem({
    required this.title,
    required this.description,
    required this.image,
    required this.link,
  });
}
