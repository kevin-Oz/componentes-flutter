import 'package:componentes/app/src/providers/menu_provider.dart';
import 'package:componentes/app/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("componentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _itemList(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _itemList(List<dynamic> data, context) {
    final List<Widget> opciones = [];

    data.forEach((element) {
      final widgetTmp = ListTile(
        title: Text(element['texto']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.black,
        ),
        leading: getIcon(element['icon']),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);
        },
      );
      opciones..add(widgetTmp)..add(Divider());
    });

    return opciones;
  }

// fin de clase
}
