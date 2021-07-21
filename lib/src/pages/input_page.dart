import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre ='';
  String _email='';
  String _pass ='';
  String _fecha ='';

  String _opcionSeleccionada = 'Volar';
  List<String> _poderes = ['Volar', 'Rayos X', 'Super Aliento', 'Super Fuerza'];

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

 Widget _crearInput() {

   return TextField(
     textCapitalization: TextCapitalization.sentences,
     decoration: InputDecoration(
       border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(10.0)
       ),
       counter: Text('Letras ${ _nombre.length }'),
       hintText: 'Nombre de usuario',
       labelText: 'Nombre',
       helperText: 'Sólo es el nombre',
       suffixIcon: Icon(Icons.accessibility),
       icon: Icon(Icons.account_circle)
     ),
     onChanged: (valor){
       setState(() {
         _nombre = valor;
       });
     },
   );
  }


  Widget _crearEmail(){

    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Correo',
        labelText: 'Correo',
        suffix: Icon(Icons.alternate_email),
        icon:  Icon(Icons.email)
      ),
      onChanged: (valor)=>setState((){
        _email = valor;
      })
    );
  }

  Widget _crearPassword(){

    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),      
        hintText: 'Contraseña',
        labelText: 'Contraseña',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock)
        ),
        onChanged: (valor)=>setState((){
          _pass = valor;
        })

    );
  }


  Widget _crearFecha(BuildContext context){

    return TextField(
      controller: _inputFieldDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Fecha de nacimiento',
        labelText: 'Fecha de nacimiento',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today)
      ),
      onTap: (){

        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async{

    DateTime picked = await showDatePicker(
      context: context, 
      locale: const Locale('es','ES'),
      initialDate: new DateTime.now(), 
      firstDate: new DateTime(1998), 
      lastDate: new DateTime(2030)
      );

      if(picked != null){
        setState(() {
          _fecha = picked.toString();
          _inputFieldDateController.text = _fecha;          
        });
      }

  }

  //Creo mi lista de elementos para el DropDown
  List<DropdownMenuItem<String>> getOpcionesDropdowm(){

    List<DropdownMenuItem<String>> lista = new List();

    _poderes.forEach((poder){

      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });

    return lista;
  }

  Widget _crearDropdown(){

    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),
        Expanded(
          child: DropdownButton(
            value: _opcionSeleccionada,
            items: getOpcionesDropdowm(),
            onChanged: (opt){
              setState(() {
                _opcionSeleccionada = opt;
              });
            },
          ), 
        )
        
      ],
    );
    
    
     
  }






  Widget _crearPersona(){

    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle:  Text('email: $_email'),
      trailing: Text(_opcionSeleccionada),
      
    );
  }



}