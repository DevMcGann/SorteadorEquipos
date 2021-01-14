import 'package:flutter/material.dart';

class listitemSorteo extends StatelessWidget {
  listitemSorteo(this.data, this.index);
  final String data;
  final int index;


  @override
  Widget build(BuildContext context) {

    final double ancho = MediaQuery.of(context).size.width;
    final double alto = MediaQuery.of(context).size.height;


    return Column(
      children: <Widget>[
        (
            Container(
              width: ancho * 0.8,
              height: 50,
              child: Card(
                elevation: 20,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)) ,
                child: ListTile(
                  title: Center(child:
                  Padding(
                    padding: const EdgeInsets.only(bottom:15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text( data.toUpperCase(),textAlign: TextAlign.center , style:TextStyle(fontSize:(ancho * 0.04), fontWeight: FontWeight.bold)
                        ),
                      ],
                    ),
                  ),
                  ),

                ),
              ),
            )
        ),

        SizedBox(height:12)
      ],
    );
  }
}