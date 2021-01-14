import 'package:flutter/material.dart';
import 'package:futbolequipos/widgets/arquerosWidget.dart';

class arqueroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double ancho = MediaQuery.of(context).size.width;
    final double alto = MediaQuery.of(context).size.height;

    return Container(
      color:Colors.amber,
      child: ListView(
        children: <Widget>[

          Container(
            height: alto * 0.3,
            child: Image.asset("assets/img/guantes.jpg", fit: BoxFit.cover),
          ),

          arquerosWidget(),
        ],
      ),
    );
  }
}
