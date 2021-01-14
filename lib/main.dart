import 'package:flutter/material.dart';
import 'package:futbolequipos/pages/welcome.dart';
import 'package:futbolequipos/providers/EquiposProvider.dart';
import 'package:futbolequipos/providers/PlayersProvider.dart';
import 'package:provider/provider.dart';

void main() {runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => JugadoresProvider()),
        ChangeNotifierProvider(create: (context) => EquiposProvider()),
      ],
      child: MaterialApp(
        title: 'Sorteador de Equipos',
        initialRoute: 'home',
        routes: {
          'home':(context) => Welcome(),
        },
      ),
    );
  }
}