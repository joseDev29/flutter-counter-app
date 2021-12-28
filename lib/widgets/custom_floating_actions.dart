import 'package:flutter/material.dart';

class CustomFloatingActions extends StatelessWidget {
  final List<void Function()> actions;

  CustomFloatingActions({Key? key, List<void Function()>? actions})
      : actions = actions ?? [],
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          //setState notifica al widget que hubieron cambios,no es necesario que
          //los cambios a los valores se hagan
          //dentro del setState
          onPressed: () => actions[0](),
          child: const Icon(Icons.remove),
        ),
        // SizedBox(width: 24),
        FloatingActionButton(
          //setState notifica al widget que hubieron cambios,no es necesario que
          //los cambios a los valores se hagan
          //dentro del setState
          onPressed: () => actions[1](),
          child: const Icon(Icons.restart_alt_outlined),
        ),
        // SizedBox(width: 24),
        FloatingActionButton(
          //setState notifica al widget que hubieron cambios,no es necesario que
          //los cambios a los valores se hagan
          //dentro del setState
          onPressed: () => actions[2](),
          child: const Icon(Icons.add),
        )
      ],
    );
  }
}
