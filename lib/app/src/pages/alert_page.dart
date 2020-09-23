import 'package:flutter/material.dart';

class AlerPage extends StatelessWidget {
  const AlerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alerta'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            _mostrarAlert(context);
          },
          color: Colors.pink,
          textColor: Colors.white,
          shape: StadiumBorder(),
          child: Text("mostrar alert"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.ac_unit_sharp),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text("hello"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "contenido del contenido",
                ),
                FlutterLogo(
                  size: 100.0,
                ),
              ],
            ),
            actions: [
              FlatButton(
                  child: Text("cancel"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              FlatButton(
                  child: Text("ok"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ],
          );
        });
  }
}
