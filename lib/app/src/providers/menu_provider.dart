import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class MenuProvider {
  List opciones = [];

  MenuProvider() {
    //_cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final data = await rootBundle.loadString('data/menu_opts.json');

    //pasar a map el string
    Map dataMap = json.decode(data);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

final menuProvider = new MenuProvider();
