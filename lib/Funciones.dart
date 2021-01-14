
import 'package:futbolequipos/providers/EquiposProvider.dart';
import 'package:futbolequipos/providers/PlayersProvider.dart';
import 'package:provider/provider.dart';



class Funciones{

  sorteo(context){
    
    final equipos = Provider.of<JugadoresProvider>(context, listen: false);
    final equiposProvider = Provider.of<EquiposProvider>(context, listen: false);
    final List <String> arqueros = equipos.arqueros;
    final List <String> jugadores = equipos.jugadores;
    final List<String> equipoA = [];
    final List<String> equipoB = [];
    final List<String> borrados = [];
    equiposProvider.wipeLists(); 
    equipoA.clear();
    equipoB.clear();
      
      

      equipoA.add(arqueros[0]);
      equiposProvider.addToEquipoA(arqueros[0]);
      equipoB.add(arqueros[1]);
      equiposProvider.addToEquipoB(arqueros[1]);

      jugadores.shuffle();
      double mitad = (jugadores.length /2);
      for (var i = 0; i < mitad; i++) {
        equiposProvider.addToEquipoA(jugadores[i]);
        borrados.add(jugadores[i]);
        jugadores.removeAt(i); 
      }


      for(var i =0; i<jugadores.length; i++){
        equiposProvider.addToEquipoB(jugadores[i]);
        equipoB.add(jugadores[i]);
      }
      
      for(int i = 0; i < borrados.length; i++){
        jugadores.add(borrados[i]);
      }
    }



volverASortear(context){

  final equiposProvider = Provider.of<EquiposProvider>(context, listen: false);

  equiposProvider.wipeLists();
  sorteo(context);
}

}

  