import 'package:flutter/material.dart';
import 'package:counter_app/widgets/custom_floating_actions.dart';

//Los StatelessWidgets no tienen un funcion propia para redibujarse
class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

//El _ hace que se una clase privada, solo disponible dentor del archivo
class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() => setState(() => counter++);
  void decrease() => setState(() => counter--);
  void reset() => setState(() => counter = 0);

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(fontSize: 32);
    //BuildContext hace referencia a todo el arbol de widgets de la aplicacion

    //Scaffold no recibe un child, en su lugar recibe un body
    //Scaffold es una estructura de pantalla basica
    return Scaffold(
      //Appbar no puede ser const
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'CounterScreen',
        ),
        //Sombra de elvacion
        elevation: 2,
      ),
      body: Center(
        child: Column(
            //mainAxisAlignment permite alinear verticalmente los children del Column
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Clicks counter',
                style: textStyle,
              ),
              Text('$counter',
                  style: const TextStyle(
                    fontSize: 64,
                  ))
            ]),
      ),
      floatingActionButton: CustomFloatingActions(
        actions: [decrease, reset, increase],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
