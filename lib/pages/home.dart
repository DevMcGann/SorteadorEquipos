
import 'package:flutter/material.dart';
import 'package:futbolequipos/pages/arqueroScreen.dart';
import 'package:futbolequipos/pages/jugadorScreen.dart';
import 'package:futbolequipos/pages/sorteoScreen.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

double responsiveHeight() {
  double altoResponsivo;
  if (MediaQuery.of(context).size.height > 480){
    altoResponsivo = 60;
  }else{
    altoResponsivo = 40;
  }

  return altoResponsivo;
}

  int index = 0;
  List<Widget> _widgets = [arqueroScreen(), jugadorScreen(), sorteoScreen()];
  tapped(int tappedIndex) {
    setState(() {index = tappedIndex;});
  }

  @override Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: _widgets[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: tapped,
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Container (height:responsiveHeight(), width: responsiveHeight()+20 , child: Image.asset('assets/img/guantes.jpg', fit:BoxFit.fill)), title: Text('Arqueros', style:TextStyle(fontSize:20, color: Colors.white))),
            BottomNavigationBarItem(icon: Container (height:responsiveHeight(), width:responsiveHeight()+20 , child: Image.asset('assets/img/botin.jpg', fit:BoxFit.fill)), title: Text('Jugadores', style:TextStyle(fontSize:20, color:Colors.white))),
            BottomNavigationBarItem(icon: Container (height:responsiveHeight(), width:responsiveHeight()+20 , child: Image.asset('assets/img/dados.png', fit:BoxFit.fill)), title: Text('Sorteo', style:TextStyle(fontSize:20, color:Colors.white))),
          ],
        ),

      ),
    );
  }
}