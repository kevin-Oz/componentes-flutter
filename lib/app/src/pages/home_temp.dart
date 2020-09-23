import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('componente temp'),
      ),
      // lista escroleable
      body: ListView(
        children: _crearItemsCorto(),
      ),
    );
  }

//   List<Widget> _crearItems() {
//     List<Widget> lista = new List<Widget>();
//     for (String opt in opciones) {
//       final tmpWidget = ListTile(
//         title: Text(opt),
//       );
// //los ..  indican que vuelva a la lista y agregue el otro elemento
//       lista..add(tmpWidget)..add(Divider());
//     }
//     return lista;
//   }

  List<Widget> _crearItemsCorto() {
    return opciones.map((elemento) {
      return Column(
        children: [
          ListTile(
            title: Text(elemento),
            subtitle: Text("algo de texto"),
            leading: Icon(Icons.access_alarm),
            trailing: Icon(Icons.arrow_back_sharp),
          ),
          Divider()
        ],
      );
    }).toList();
  }

  //fin de clase
}
