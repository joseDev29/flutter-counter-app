import 'package:flutter/material.dart';
import 'package:counter_app/screens/counter_screen.dart';

void main() {
  //Metodo que inicializa la aplicacion
  runApp(
      const MyApp()); //Se inicializa la clase MyApp con el constructor constante, no es necesario el new
}

//Todo StatelessWidget requiere un metodo build
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Es recomendado el const para widgets cuyo contenido nunca va a cambiar, esta propiedad sera heredada
    //a los widgets hijos
    return MaterialApp(
      //Difine si se muestra o no el aviso debug
      debugShowCheckedModeBanner: false,
      home: const CounterScreen(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
