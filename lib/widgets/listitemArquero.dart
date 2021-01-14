import 'package:flutter/material.dart';

import 'Dialogs.dart';

class listitemArquero extends StatelessWidget {
  listitemArquero(this.data, this.index);
  final String data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        (
            Container(
              width: 270,
              height: 60,
              child: Card(
                elevation: 20,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)) ,
                child: ListTile(
                  onTap: () {
                    eliminarArqueroDialog(context,"Eliminar?", index);
                  },
                  title: Center(child:
                  Padding(
                    padding: const EdgeInsets.only(bottom:10),
                    child: Text( data , style:TextStyle(fontSize:30, fontWeight: FontWeight.bold)
                    ),
                  ),
                  ),

                ),
              ),
            )
        ),

        SizedBox(height:15)
      ],
    );
  }
}
