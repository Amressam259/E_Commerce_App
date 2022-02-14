import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Lucher extends StatelessWidget {

   String _url = 'https://www.facebook.com/groups/2571530906425632?hoisted_section_header_type=recently_seen&multi_permalinks=3108600359385348';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          TextButton(onPressed: _launchURL,
            child: Text('Show Flutter homepage'),)
        ],
      ),
    );
  }

  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}
