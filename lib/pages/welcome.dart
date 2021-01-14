import 'package:flutter/material.dart';
import 'home.dart';


class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      heightFactor: 1,
      child: Container(
        decoration: BoxDecoration(
       image: DecorationImage(
        image: AssetImage("assets/img/logo.png"),
        fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
         backgroundColor: Colors.transparent,
        body: Center(
          child:Align(
              alignment: Alignment(0.0, 0.63),
              child: ButtonTheme(
              minWidth: 250.0,
              height: 100.0,
                child: RaisedButton(
                  color: Colors.purple,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                    side: BorderSide(color: Colors.yellow)
                  ),
                  child: Text("EMPEZAR",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                  ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  }
                  
              ),
            ),
          ),
        ),
      ),
      ),
    );
  }
}