

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//Lo que yo he importado 
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';

void main()=> runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), //Ingles
        const Locale('es', 'ES'), //Español
      ],
      //home: HomePage()
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){

        print('Ruta llamada: ${settings.name}');

        return MaterialPageRoute(
          builder: (BuildContext context)=>AlertPage()
        );
      },
    );
  }
}