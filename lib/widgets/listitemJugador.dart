import 'package:flutter/material.dart';
import 'package:futbolequipos/widgets/Dialogs.dart';

class listitemJugador extends StatelessWidget {

  listitemJugador(this.data, this.index);
  final String data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        (
            Container(
              width: 250,
              height: 60,
              child: Card(
                elevation: 20,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)) ,
                child: ListTile(
                  onTap: () {
                    eliminarJugadorDialog(context,"Eliminar?", index);
                  },
                  title: Center(child:
                  Padding(
                    padding: const EdgeInsets.only(bottom:15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text((index +1).toString()),
                        SizedBox(width: 10,),
                        Center(
                          child: Text(
                              data ,
                              style:TextStyle(fontSize:25, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
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
