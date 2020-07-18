import 'package:flutter/material.dart';
import 'sharedWidgets.dart';
import 'aboutpage.dart';
import 'ownerpage.dart';
import 'customerpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dWidth = MediaQuery.of(context).size.width;
    dHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              //Image
              alignment: Alignment.center,
              child: Image.asset(
                'assets/homebg.jpg',
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Column(children: <Widget>[
              Container(
                //Text
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: dHeight * 0.2),
                child: Text(
                  'Welcome to Voiceanize',
                  style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 15.0,
                          color: Colors.black,
                        )
                      ],
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      fontFamily: 'Google Sans'),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: dHeight * 0.06),
                child: GradientButton(
                    pagename: AboutPage(),
                    buttonText: "About",
                  ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: dHeight * 0.06),
                child: GradientButton(
                    pagename: CustomerPage(),
                    buttonText: "Customer",
                  ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: dHeight * 0.06),
                child: GradientButton(
                    pagename: OwnerPage(),
                    buttonText: "Owner",
                  ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
