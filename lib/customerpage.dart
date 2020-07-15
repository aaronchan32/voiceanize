import 'package:flutter/material.dart';
import 'global.dart';

class CustomerPage extends StatelessWidget {
  //Customer Page
  @override
  Widget build(BuildContext context) {
    dWidth = MediaQuery.of(context).size.width;
    dHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Page')),
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
