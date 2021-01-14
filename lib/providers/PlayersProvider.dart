import 'package:flutter/material.dart';

class JugadoresProvider with ChangeNotifier{
  List<String> _arqueros = [];
  List<String> _jugadores= [];

  get arqueros{
    return _arqueros;
  }

  get jugadores{
    return _jugadores;
  }

  addArquero(String arquero){
    _arqueros.add(arquero);
    notifyListeners();
  }

  addJugador(String jugador){
    _jugadores.add(jugador);
    notifyListeners();
  }

  wipeLists(){
    _jugadores.clear();
    _arqueros.clear();
    notifyListeners();
  }

  deleteArquero(int index){
    _arqueros.removeAt(index);
    notifyListeners();
  }

  deleteJugador(int index){
    _jugadores.removeAt(index);
    notifyListeners();
  }

  int countArqueros(){
    return _arqueros.length;
  }
  int contarJugadores(){
    return _jugadores.length;
  }

}