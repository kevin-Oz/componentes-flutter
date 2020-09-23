import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = "";
  String _fecha = "";
  List<String> _poderes = ['volar', 'rayos x'];
  String _opcionSeleccionada = "volar";

  TextEditingController _dateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.all(15.7),
        children: [
          _crearInput(),
          Divider(),
          _inputDate(context),
          _dropDown(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  List<DropdownMenuItem<String>> _getDropdown() {
    List<DropdownMenuItem<String>> lista = new List();

    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });
    return lista;
  }

  Widget _dropDown() {
    return Row(
      children: [
        Icon(Icons.select_all),
        SizedBox(
          width: 30.0,
        ),
        DropdownButton(
            items: _getDropdown(),
            value: _opcionSeleccionada,
            onChanged: (opt) {
              setState(() {
                _opcionSeleccionada = opt;
              });
            })
      ],
    );
  }

  Widget _inputDate(BuildContext context) {
    return TextField(
      controller: _dateController,
      enableInteractiveSelection: false,
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
      decoration: InputDecoration(
          hintText: 'fecha de nacimiento',
          helperText: 'es solo una fecha',
          labelText: 'Fecha',
          suffixIcon: Icon(Icons.calendar_today_sharp),
          icon: Icon(Icons.calendar_today),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: new DateTime(2018),
        lastDate: new DateTime(2022));

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _dateController.text = _fecha;
      });
    }
  }

  Widget _crearInput() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      onChanged: (valorActual) {
        setState(() {
          _nombre = valorActual;
        });
        //onchange hace un binding en tiempo real
      },
      decoration: InputDecoration(
          counter: Text('letras ${_nombre.length}'),
          hintText: 'nombre persona',
          helperText: 'es solo un nombre',
          labelText: 'Nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('El nombre es : $_nombre'),
    );
  }
}
