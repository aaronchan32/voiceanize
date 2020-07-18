import 'package:flutter/material.dart';

double dWidth;
double dHeight;

class GradientButton extends StatelessWidget {
  GradientButton({String this.buttonText, StatelessWidget this.pagename});
  String buttonText;
  StatelessWidget pagename;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.all(0),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => pagename));
        },
        child: Ink(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [(Color(0xff3892FF)), (Color(0xff67D3FF))],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              constraints: BoxConstraints(
              maxWidth: dWidth * 0.5, minHeight: dHeight * 0.08),
              alignment: Alignment.center,
              child: Text(buttonText,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Google Sans',
                    fontSize: 18,
                  )),
            )));
  }
}
