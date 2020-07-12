import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double dheight = MediaQuery.of(context).size.height;
    double dwidth = MediaQuery.of(context).size.width;
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
                padding: EdgeInsets.only(top: dheight * 0.2),
                child: Text(
                  'Welcome to Voiceanize',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30.0,
                      fontFamily: 'Google Sans'),
                ),
              ),
              Container(
                  //Button to About Page
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: dheight * 0.1),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AboutPage()));
                    },
                    child: Text('About'),
                  )),
              Container(
                  //Button to Business Page
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: dheight * 0.05),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BusinessPage()));
                    },
                    child: Text('Business Owner'),
                  )),
              Container(
                  //Button to About Page
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: dheight * 0.05),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CustomerPage()));
                    },
                    child: Text('Customer'),
                  )),
            ])
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  //About Page
  @override
  Widget build(BuildContext context) {
    double dheight = MediaQuery.of(context).size.height;
    double dwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('About Page')),
      body: Center(
          child: IconButton(
            icon: Icon(Icons.home),
            iconSize: dwidth * 0.1,
            tooltip: "Return to Home",
            onPressed: () {
              Navigator.pop(context);
            },
            
      )),
    );
  }
}

class BusinessPage extends StatelessWidget {
  //Business Owner Page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Business Owner Page')),
      body: Center(
          child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('Home Page'),
      )),
    );
  }
}

class CustomerPage extends StatelessWidget {
  //Customer Page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Customer Page')),
      body: Center(
          child: RaisedButton(
        shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular(20)),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('Home Page'),
      )),
    );
  }
}

