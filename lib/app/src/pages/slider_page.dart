import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slide'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckbox(),
            _crearImagen(),
          ],
        ),
      ),
    );
  }

  bool _blockCheck = false;

  _crearCheckbox() {
    // return Checkbox(
    //     value: _blockCheck,

    //     onChanged: (valor) {
    //       setState(() {
    //         _blockCheck = valor;
    //       });
    //     });
//   0 CheckboxListTile
    return SwitchListTile(
        value: _blockCheck,
        title: Text('bloquear slide'),
        onChanged: (valor) {
          setState(() {
            _blockCheck = valor;
          });
        });
  }

  double _valorSlider = 10;

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://spoiler.bolavip.com/__export/1574103763193/sites/bolavip/img/2019/11/18/spiderverse_fecha_estreno_confirmada_cuando_se_estrena_spiderman_crop1574103749904.jpg_423682103.jpg'),
      fit: BoxFit.contain,
      width: _valorSlider,
    );
  }

  _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'tamanio de la images',
        min: 5,
        max: 400,
        value: _valorSlider,
        onChanged: (_blockCheck)
            ? null
            : (valor) {
                setState(() {
                  _valorSlider = valor;
                });
              });
  }
}
