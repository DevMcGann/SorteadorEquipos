import 'package:flutter/material.dart';
import 'package:futbolequipos/widgets/jugadoresWidget.dart';

class jugadorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double ancho = MediaQuery.of(context).size.width;
    final double alto = MediaQuery.of(context).size.height;

    return Container(
      color:Colors.amber[300],
      child: ListView(
        children: <Widget>[

          Container(
            height: alto * 0.2,
            child: Image.asset("assets/img/botin.jpg", fit: BoxFit.cover),
          ),
          SizedBox(height: 5,),

          jugadoresWidget(),
        ],
      ),
    );
  }
}
