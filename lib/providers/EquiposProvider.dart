import 'package:flutter/material.dart';

class EquiposProvider with ChangeNotifier{
  List<String> _equipoA = [];
  List<String> _equipoB= [];

  get equipoA{
    return _equipoA;
  }

  get equipoB{
    return _equipoB;
  }

  addToEquipoA(String data){
    _equipoA.add(data);
    notifyListeners();
  }

  addToEquipoB(String data){
    _equipoB.add(data);
    notifyListeners();
  }

  wipeLists(){
    _equipoA.clear();
    _equipoB.clear();
    notifyListeners();
  }

  int countEquipoA(){
    return _equipoA.length;
  }
  int countEquipoB(){
    return _equipoB.length;
  }

  String devolverEquipoA(i){
    return _equipoA[i];
  }
   String devolverEquipoB(i){
    return _equipoB[i];
  }

}