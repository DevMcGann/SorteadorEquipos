import 'package:flutter/material.dart';
import 'package:futbolequipos/providers/PlayersProvider.dart';
import 'package:futbolequipos/widgets/listitemArquero.dart';
import 'package:provider/provider.dart';

import 'Dialogs.dart';

class arquerosWidget extends StatefulWidget {
  @override
  _arquerosWidgetState createState() => _arquerosWidgetState();
}

class _arquerosWidgetState extends State<arquerosWidget> {
  @override
  Widget build(BuildContext context) {
    final double ancho = MediaQuery.of(context).size.width;
    final double alto = MediaQuery.of(context).size.height;
    final arqueros = Provider.of<JugadoresProvider>(context);
    final listaGK = arqueros.arqueros;
    final _controller = TextEditingController();

    return (
      Card(
        elevation: 0,
        child: Container(
          color:Colors.amber,
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
                    hintText: "Escribe el nombre del Arquero",
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
                    if (arqueros.countArqueros() == 2){
                      {alertDialog(context,"Solo puede haber 2 Arqueros!");}
                    }else{
                      _controller.text == "" ? alertDialog(context, "No se puede agregar Arquero sin nombre!")  :
                      arqueros.addArquero(_controller.text);
                    }
                  },
                  child: Text("Agregar Arquero" ,style:TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  color: Colors.amber[200],
                ),
              ),

              SizedBox(height: 20,),


              Container(
                margin:EdgeInsets.only(top:20),
                height: alto * 0.27,
                width: ancho,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: listaGK.length,
                    itemBuilder: (BuildContext context, int index){
                      return Container(
                          child: listitemArquero(listaGK[index],index ));
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
