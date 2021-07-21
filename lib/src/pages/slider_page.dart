import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider =100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top:50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
                child: _crearImagen()
              ),
          ],
        ),
      ),
    );
  }


  Widget _crearSlider(){

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      //divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      //Aqui voy a comparar si el _blockCheck esta activo
      //si lo esta le asignamos null y desabilitamos el slider
      //sino que active la funcion y asigne el valor (valor)
      onChanged: (_bloquearCheck) ? null : ( valor ){
        setState(() {
          _valorSlider = valor;
        });
        
      },
    );
  }


  Widget _checkBox(){
    
    //Metodo uno para crear checkbox sin texto
    //return Checkbox(
    //  value: _bloquearCheck, 
    //  onChanged: (valor){

    //    setState(() {
    //      _bloquearCheck = valor;
    //    });
    //  },
    //);

    //Metodo Dos para crear checkbox con texto
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }


  Widget _crearSwitch(){

    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _crearImagen(){

    return Image(
      image: NetworkImage('https://vignette.wikia.nocookie.net/death-battle-fanon-wiki-en-espanol/images/d/d1/Batman.png/revision/latest?cb=20200323061733&path-prefix=es'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

}