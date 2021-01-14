import 'package:flutter/material.dart';
import 'package:futbolequipos/providers/PlayersProvider.dart';
import 'package:futbolequipos/widgets/listitemJugador.dart';
import 'package:provider/provider.dart';

import 'Dialogs.dart';

class jugadoresWidget extends StatefulWidget {
  @override
  _jugadoresWidgetState createState() => _jugadoresWidgetState();
}

class _jugadoresWidgetState extends State<jugadoresWidget> {
  @override
  Widget build(BuildContext context) {

    final double ancho = MediaQuery.of(context).size.width;
    final double alto = MediaQuery.of(context).size.height;
    final jugadores = Provider.of<JugadoresProvider>(context);
    final listaJugadores = jugadores.jugadores;
    final _controller = TextEditingController();


    return (
        Card(
          elevation: 0,
          child: Container(
            color:Colors.amber[300],
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    maxLength: 10,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    controller: _controller,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration( border: OutlineInputBorder(),
                      hintText: "Escribe el nombre del Jugador",
                      hintStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide( width: 2),
                      ),
                    ),
                  ),
                ),



                Container(
                  height: alto / 16,
                  width: ancho / 2,
                  child: FlatButton(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)) ,
                    onPressed: () {
                      if (jugadores.contarJugadores() > 22){
                        {alertDialog(context,"No puede haber mas de 22");}
                      }else{
                        _controller.text == "" ? alertDialog(context, "No se puede agregar Jugador sin nombre!")  :
                        jugadores.addJugador(_controller.text);
                      }
                    },
                    child: Text("Agregar Jugador" ,style:TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    color: Colors.amber,
                  ),
                ),

                Container(
                  margin:EdgeInsets.only(top:20),
                  height: alto * 0.4,
                  width: ancho,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: listaJugadores.length,
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                            child: listitemJugador(listaJugadores[index],index ));
                      }
                  ),
                ),


              ],),
            ),
          ),
        )
    );
  }
}
