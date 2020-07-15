import 'package:flutter/material.dart';
import 'global.dart';
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
                  //Button to About Page

                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: dHeight * 0.1),
                  child: ButtonTheme(
                      minWidth: dWidth * 0.5,
                      height: dHeight * 0.08,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutPage()));
                          },
                          child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      (Color(0xff3892FF)),
                                      (Color(0xff67D3FF))
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                constraints: BoxConstraints(
                                    maxWidth: dWidth * 0.5,
                                    minHeight: dHeight * 0.08),
                                alignment: Alignment.center,
                                child: Text(
                                  "About",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Google Sans',
                                    fontSize: 18,
                                  ),
                                ),
                              ))))),
              Container(
                  //Button to Owner Page
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: dHeight * 0.06),
                  child: ButtonTheme(
                      minWidth: dWidth * 0.5,
                      height: dHeight * 0.08,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OwnerPage()));
                          },
                          child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      (Color(0xff3892FF)),
                                      (Color(0xff67D3FF))
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                constraints: BoxConstraints(
                                    maxWidth: dWidth * 0.5,
                                    minHeight: dHeight * 0.08),
                                alignment: Alignment.center,
                                child: Text("Owner",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Google Sans',
                                      fontSize: 18,
                                    )),
                              ))))),
              Container(
                  //Button to Customer Page
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: dHeight * 0.06),
                  child: ButtonTheme(
                      minWidth: dWidth * 0.5,
                      height: dHeight * 0.08,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CustomerPage()));
                          },
                          child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      (Color(0xff3892FF)),
                                      (Color(0xff67D3FF))
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                constraints: BoxConstraints(
                                    maxWidth: dWidth * 0.5,
                                    minHeight: dHeight * 0.08),
                                alignment: Alignment.center,
                                child: Text("Customer",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Google Sans',
                                      fontSize: 18,
                                    )),
                              ))))),
            ])
          ],
        ),
      ),
    );
  }
}
