import 'package:flutter/material.dart';

//Los StatelessWidgets no tienen un funcion propia para redibujarse
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(fontSize: 32);
    //BuildContext hace referencia a todo el arbol de widgets de la aplicacion

    //Scaffold no recibe un child, en su lugar recibe un body
    //Scaffold es una estructura de pantalla basica
    return Scaffold(
      //Appbar no puede ser const
      appBar: AppBar(
        title: const Text(
          'HomeScreen',
        ),
        //Sombra de elvacion
        elevation: 2,
      ),
      body: Center(
        child: Column(
            //mainAxisAlignment permite alinear verticalmente los children del Column
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Clicks counter',
                style: textStyle,
              ),
              Text('50',
                  style: TextStyle(
                    fontSize: 64,
                  ))
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('Hello world'),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
