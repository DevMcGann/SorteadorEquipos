import 'package:flutter/material.dart';
import 'package:futbolequipos/providers/EquiposProvider.dart';
import 'package:futbolequipos/providers/PlayersProvider.dart';
import 'package:futbolequipos/widgets/Dialogs.dart';
import 'package:futbolequipos/widgets/listitemSorteo.dart';
import 'package:provider/provider.dart';

import '../Funciones.dart';

class sorteoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double ancho = MediaQuery.of(context).size.width;
    final double alto = MediaQuery.of(context).size.height;
    final equiposProvider = Provider.of<EquiposProvider>(context);
    final equipos = Provider.of<JugadoresProvider>(context);

    bool notReady(){
      if ((equipos.countArqueros() != 2) || (equipos.contarJugadores() %2 != 0)) {
        return true;
      }else{
        return false;
      }
    }

    return Container(
      color:Colors.amber[100],
      child: ListView(children: <Widget>[

        SizedBox(height: 20,),

        Container(
          height: alto / 11,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: FlatButton(
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)) ,
              onPressed: () {
                notReady() ?
                alertDialog(context, "Debe haber 2 arqueros, y el numero de jugadores debe ser PAR")
                    :
                Funciones().sorteo(context);
              },
              child: Text("Sortear" ,style:TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
            color: Colors.purple,
          ),
        ),

        SizedBox(height: 20,),

        Container(
          width: ancho,
          height: alto * 0.65,
          color:Colors.amber[100],

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            Card(
              elevation: 5,
              child: Container(
                height: alto,
                width: ancho * 0.44,
                color:Colors.amber[400],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      itemCount: equiposProvider.equipoA.length,
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                            child: listitemSorteo(equiposProvider.devolverEquipoA(index) ,index )
                        );
                      }
                  ),
                ),
              ),
            ),


            Card(
              elevation: 5,
              child: Container(
                height: alto,
                width: ancho * 0.44,
                color:Colors.amber[700],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      itemCount: equiposProvider.equipoB.length,
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                            child: listitemSorteo(equiposProvider.devolverEquipoB(index) ,index )
                        );
                      }
                  ),
                ),
              ),
            ),

          ],),
        )


      ],
      ),
    );



  }
}
