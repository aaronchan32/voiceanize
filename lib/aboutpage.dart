import 'package:flutter/material.dart';
import 'sharedWidgets.dart';

class AboutPage extends StatelessWidget {
  //Business Owner Page
  @override
  Widget build(BuildContext context) {
    dWidth = MediaQuery.of(context).size.width;
    dHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('About Page'),
      ),
      body: Align(
          alignment: Alignment.bottomCenter,
          child: IconButton(
            icon: Icon(Icons.home),
            iconSize: dWidth * 0.1,
            tooltip: "Return to Home",
            onPressed: () {
              Navigator.pop(context);
            },
      )),
    );
  }
}
