import 'package:flutter/material.dart';
import 'package:futbolequipos/providers/PlayersProvider.dart';
import 'package:provider/provider.dart';


alertDialog(BuildContext context, String mensaje) {
  // This is the ok button
  Widget ok = FlatButton(
    child: Text("Entendido"),
    onPressed: () {Navigator.of(context).pop();},
  ); 
  // show the alert dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
    return AlertDialog(
    title: Text("Ups!"),
    content: Text(mensaje),
    actions: [
      ok,
    ],
    elevation: 5,
    
  );
    },
  );
}

eliminarArqueroDialog(BuildContext context,  String mensaje, int index){

  final arqueros = Provider.of<JugadoresProvider>(context, listen: false);

  Widget yes = FlatButton(
    child: Text("Si"),
    onPressed:(){
      Navigator.of(context).pop();
      arqueros.deleteArquero(index);

    },
  );

  Widget no = FlatButton(
    child: Text("No"),
    onPressed:(){
      Navigator.of(context).pop();
    },
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Eliminar Arquero!"),
        content: Text(mensaje),
        actions: [
          yes,
          no,
        ],
        elevation: 5,

      );
    },
  );

}



eliminarJugadorDialog(BuildContext context,  String mensaje, int index){

  final jugadores = Provider.of<JugadoresProvider>(context, listen: false);

  Widget yes = FlatButton(
    child: Text("Si"),
    onPressed:(){
      Navigator.of(context).pop();
      jugadores.deleteJugador(index);

    },
  );

  Widget no = FlatButton(
    child: Text("No"),
    onPressed:(){
      Navigator.of(context).pop();
    },
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Eliminar Jugador!"),
        content: Text(mensaje),
        actions: [
          yes,
          no,
        ],
        elevation: 5,

      );
    },
  );

}